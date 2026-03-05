# server.jl — WebSocket server wrapping the Bertrand competition simulation.
# Usage:  julia --project=. server.jl
# Then open dashboard.html in a browser and connect to ws://localhost:8765.

using HTTP
using JSON3
using Dates

# Including competition.jl defines all types, constants, and functions.
# The guard at the bottom ensures main() is NOT called here.
include("competition.jl")

const WS_PORT = UInt16(8765)

# ─── Helpers ─────────────────────────────────────────────────────────────────

function ws_send(ws, data::Dict)
    try
        HTTP.WebSockets.send(ws, JSON3.write(data))
    catch e
        @warn "ws_send failed: $e"
    end
end

function prices_to_floats(s::PricingStrategy)::Vector{Float64}
    [Float64(p) for p in Base.invokelatest(get_prices, s)]
end

# ─── WebSocket simulation loop ────────────────────────────────────────────────
# Mirrors run_simulation() from competition.jl but sends JSON over ws instead
# of printing. Sends messages in this order per tick:
#   thinking → strategy (×2)  →  tick result  →  thinking → strategy (×2)  → …

function run_simulation_ws(ws, api_key::String, bundle::Bundle,
                           consumers::Vector{Consumer};
                           no_loss_constraint::Bool=false)
    store1 = init_store(1)
    store2 = init_store(2)

    # ── Initial strategies (before tick 1) ───────────────────────────────────
    ws_send(ws, Dict("type" => "thinking", "store" => 1, "tick" => 0))
    strategy1, rat1 = generate_strategy(api_key, 1, 0, bundle, store1, store2;
                                        no_loss_constraint)
    ws_send(ws, Dict("type"      => "strategy",
                     "store"     => 1, "tick" => 0,
                     "name"      => string(typeof(strategy1)),
                     "rationale" => rat1,
                     "prices"    => prices_to_floats(strategy1)))

    ws_send(ws, Dict("type" => "thinking", "store" => 2, "tick" => 0))
    strategy2, rat2 = generate_strategy(api_key, 2, 0, bundle, store2, store1;
                                        no_loss_constraint)
    ws_send(ws, Dict("type"      => "strategy",
                     "store"     => 2, "tick" => 0,
                     "name"      => string(typeof(strategy2)),
                     "rationale" => rat2,
                     "prices"    => prices_to_floats(strategy2)))

    for tick in 1:T_PERIODS
        # ── Consumer choice ───────────────────────────────────────────────────
        baskets1 = Vector{Int}[]
        baskets2 = Vector{Int}[]

        for consumer in consumers
            u1, b1 = Base.invokelatest(feasible, strategy1, consumer.budget, consumer, bundle)
            u2, b2 = Base.invokelatest(feasible, strategy2, consumer.budget, consumer, bundle)
            u1 >= u2 ? push!(baskets1, b1) : push!(baskets2, b2)
        end

        # ── Financials ────────────────────────────────────────────────────────
        rev1    = store_revenue(strategy1, baskets1)
        cost1   = store_cost(bundle, baskets1)
        profit1 = rev1 - cost1

        rev2    = store_revenue(strategy2, baskets2)
        cost2   = store_cost(bundle, baskets2)
        profit2 = rev2 - cost2

        # ── Record history ────────────────────────────────────────────────────
        push!(store1.price_history,     Base.invokelatest(get_prices, strategy1))
        push!(store1.revenue_history,   rev1)
        push!(store1.cost_history,      cost1)
        push!(store1.profit_history,    profit1)
        push!(store1.strategy_names,    string(typeof(strategy1)))
        push!(store1.rationale_history, rat1)

        push!(store2.price_history,     Base.invokelatest(get_prices, strategy2))
        push!(store2.revenue_history,   rev2)
        push!(store2.cost_history,      cost2)
        push!(store2.profit_history,    profit2)
        push!(store2.strategy_names,    string(typeof(strategy2)))
        push!(store2.rationale_history, rat2)

        # ── Send tick result ──────────────────────────────────────────────────
        ws_send(ws, Dict(
            "type"         => "tick",
            "tick"         => tick,
            "total_ticks"  => T_PERIODS,
            "s1_customers" => length(baskets1),
            "s2_customers" => length(baskets2),
            "s1_revenue"   => Float64(rev1),
            "s2_revenue"   => Float64(rev2),
            "s1_cost"      => Float64(cost1),
            "s2_cost"      => Float64(cost2),
            "s1_profit"    => Float64(profit1),
            "s2_profit"    => Float64(profit2),
            "s1_prices"    => [Float64(p) for p in store1.price_history[end]],
            "s2_prices"    => [Float64(p) for p in store2.price_history[end]],
            "goods"        => bundle.goods,
        ))

        # ── Generate next strategies ──────────────────────────────────────────
        if tick < T_PERIODS
            ws_send(ws, Dict("type" => "thinking", "store" => 1, "tick" => tick))
            strategy1, rat1 = generate_strategy(api_key, 1, tick, bundle, store1, store2;
                                                no_loss_constraint)
            ws_send(ws, Dict("type"      => "strategy",
                             "store"     => 1, "tick" => tick,
                             "name"      => string(typeof(strategy1)),
                             "rationale" => rat1,
                             "prices"    => prices_to_floats(strategy1)))

            ws_send(ws, Dict("type" => "thinking", "store" => 2, "tick" => tick))
            strategy2, rat2 = generate_strategy(api_key, 2, tick, bundle, store2, store1;
                                                no_loss_constraint)
            ws_send(ws, Dict("type"      => "strategy",
                             "store"     => 2, "tick" => tick,
                             "name"      => string(typeof(strategy2)),
                             "rationale" => rat2,
                             "prices"    => prices_to_floats(strategy2)))
        end
    end

    # ── Final summary ─────────────────────────────────────────────────────────
    ws_send(ws, Dict(
        "type"     => "done",
        "s1_total" => Float64(sum(store1.profit_history)),
        "s2_total" => Float64(sum(store2.profit_history)),
    ))
end

# ─── Connection handler ───────────────────────────────────────────────────────

function handle_client(ws)
    println("$(now()) — client connected")
    try
        for raw in ws
            data = JSON3.read(String(raw))
            msg_type = String(data["type"])

            if msg_type == "start"
                api_key          = String(strip(String(data["api_key"])))
                jld2_raw         = String(strip(String(get(data, "jld2_file", ""))))
                jld2_file        = isempty(jld2_raw) ? nothing : jld2_raw
                no_loss_constraint = Bool(get(data, "no_loss_constraint", false))
                println("api_key length=$(length(api_key))  starts=$(first(api_key,7))...")
                println("jld2_file=$(something(jld2_file, "(none)"))")
                println("no_loss_constraint=$no_loss_constraint")

                # Reload any previously generated strategies (best-effort — parse errors are non-fatal)
                if isfile(STRATEGIES_FILE)
                    println("Loading existing strategies from $STRATEGIES_FILE ...")
                    try
                        include(STRATEGIES_FILE)
                    catch e
                        msg = "⚠ strategies.jl has parse errors and was skipped ($(sprint(showerror, e)))"
                        @warn msg
                        ws_send(ws, Dict("type" => "log", "message" => msg))
                    end
                end

                # Load or generate bundle
                bundle = if jld2_file !== nothing && isfile(jld2_file)
                    println("Loading bundle from $(abspath(jld2_file))")
                    load_bundle(jld2_file)
                else
                    if jld2_file !== nothing
                        msg = "⚠ JLD2 file not found: $(abspath(jld2_file)) — generating new bundle"
                        println(msg)
                        ws_send(ws, Dict("type" => "log", "message" => msg))
                    end
                    println("Generating new bundle via LLM...")
                    b = generate_bundle(api_key)
                    fname = "setup_" * Dates.format(now(), "yyyymmdd_HHMMSS") * ".jld2"
                    save_bundle(fname, b)
                    ws_send(ws, Dict("type" => "saved_bundle", "filename" => fname))
                    b
                end

                # Send bundle description to client
                ws_send(ws, Dict(
                    "type"        => "bundle",
                    "goods"       => bundle.goods,
                    "costs"       => [Float64(c) for c in bundle.costs],
                    "rationale"   => bundle.rationale,
                    "total_ticks" => T_PERIODS,
                    "n_agents"    => N_AGENTS,
                ))

                consumers = generate_consumers()
                run_simulation_ws(ws, api_key, bundle, consumers;
                                  no_loss_constraint)
            end
        end
    catch e
        if !isa(e, HTTP.WebSockets.WebSocketError) && !isa(e, Base.IOError)
            bt  = catch_backtrace()
            msg = sprint(showerror, e)
            trace = sprint(Base.show_backtrace, bt)
            full = msg * "\n\nSTACKTRACE:\n" * trace
            @error "Simulation error" exception=(e, bt)
            try
                ws_send(ws, Dict("type" => "error", "message" => full))
            catch; end
        end
    end
    println("$(now()) — client disconnected")
end

# ─── HTTP server: serve dashboard.html ───────────────────────────────────────
const HTTP_PORT = UInt16(8080)
const DASHBOARD_FILE = joinpath(@__DIR__, "dashboard.html")

@async HTTP.serve("127.0.0.1", HTTP_PORT; verbose=false) do req
    if req.method == "GET"
        html = read(DASHBOARD_FILE, String)
        return HTTP.Response(200, ["Content-Type" => "text/html; charset=utf-8"], html)
    end
    return HTTP.Response(404, "Not found")
end

# ─── Start WebSocket server ────────────────────────────────────────────────────
println("╔══════════════════════════════════════════════════════╗")
println("║  Bertrand Competition Server                         ║")
println("║  Dashboard → http://127.0.0.1:$HTTP_PORT               ║")
println("║  WebSocket → ws://127.0.0.1:$WS_PORT                   ║")
println("╚══════════════════════════════════════════════════════╝")

HTTP.WebSockets.listen("127.0.0.1", WS_PORT; verbose=false) do ws
    handle_client(ws)
end
