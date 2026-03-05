# sweep.jl — Parameter sweep runner for the Bertrand competition simulation.
#
# Runs a grid of named configurations, each replicated N_REPS times, using a
# single shared environment bundle for comparability across treatments.
#
# Outputs two CSV files (timestamped so runs never overwrite each other):
#   sweep_meta_TIMESTAMP.csv   — one row per run   (parameters + total profits)
#   sweep_ticks_TIMESTAMP.csv  — one row per (run, tick) (full time series)
#
# Usage:
#   julia --project=. sweep.jl <openai_api_key>
#   julia --project=. sweep.jl <openai_api_key> existing_bundle.jld2

include("competition.jl")
using Dates, Printf

# ─── Sweep settings ───────────────────────────────────────────────────────────

const N_REPS = 3   # replications per configuration (increase for publication)

# Add, remove, or edit rows to define your treatment grid.
# All numeric fields must be typed as Float64 (use 0.0, not 0).
const CONFIGS = [
    (name="baseline",
     no_loss=false, seek_nash=false, collusion=false, threats=false,
     loyalty_share=0.0, loyalty_bump=0.0, utility_noise_sigma=0.0, lookback=5),

    (name="no_loss",
     no_loss=true,  seek_nash=false, collusion=false, threats=false,
     loyalty_share=0.0, loyalty_bump=0.0, utility_noise_sigma=0.0, lookback=5),

    (name="nash",
     no_loss=false, seek_nash=true,  collusion=false, threats=false,
     loyalty_share=0.0, loyalty_bump=0.0, utility_noise_sigma=0.0, lookback=5),

    (name="collusion",
     no_loss=false, seek_nash=false, collusion=true,  threats=false,
     loyalty_share=0.0, loyalty_bump=0.0, utility_noise_sigma=0.0, lookback=5),

    (name="collusion_threats",
     no_loss=false, seek_nash=false, collusion=true,  threats=true,
     loyalty_share=0.0, loyalty_bump=0.0, utility_noise_sigma=0.0, lookback=5),

    (name="noise_1",
     no_loss=false, seek_nash=false, collusion=false, threats=false,
     loyalty_share=0.0, loyalty_bump=0.0, utility_noise_sigma=1.0, lookback=5),

    (name="loyalty_0.3",
     no_loss=false, seek_nash=false, collusion=false, threats=false,
     loyalty_share=0.3, loyalty_bump=2.0, utility_noise_sigma=0.0, lookback=5),

    (name="long_memory",
     no_loss=false, seek_nash=false, collusion=false, threats=false,
     loyalty_share=0.0, loyalty_bump=0.0, utility_noise_sigma=0.0, lookback=15),
]

# ─── Single-run simulation returning per-tick data ────────────────────────────

function simulate_one(api_key::String, bundle::Bundle,
                      consumers::Vector{Consumer}, cfg)::Tuple{Vector{Vector{Any}}, Store, Store}
    store1 = init_store(1)
    store2 = init_store(2)
    rows   = Vector{Vector{Any}}()

    strategy1, rat1 = generate_strategy(api_key, 1, 0, bundle, store1, store2;
        no_loss_constraint=cfg.no_loss, seek_nash=cfg.seek_nash,
        collusion=cfg.collusion, threats=cfg.threats, lookback=cfg.lookback)
    strategy2, rat2 = generate_strategy(api_key, 2, 0, bundle, store2, store1;
        no_loss_constraint=cfg.no_loss, seek_nash=cfg.seek_nash,
        collusion=cfg.collusion, threats=cfg.threats, lookback=cfg.lookback)

    for tick in 1:T_PERIODS
        baskets1 = Vector{Int}[]
        baskets2 = Vector{Int}[]

        for c in consumers
            u1, b1 = Base.invokelatest(feasible, strategy1, c.budget, c, bundle)
            u2, b2 = Base.invokelatest(feasible, strategy2, c.budget, c, bundle)
            e1 = cfg.utility_noise_sigma > 0.0 ? randn() * cfg.utility_noise_sigma : 0.0
            e2 = cfg.utility_noise_sigma > 0.0 ? randn() * cfg.utility_noise_sigma : 0.0
            loy1 = c.preferred_store == 1 ? Float64(cfg.loyalty_bump) : 0.0
            loy2 = c.preferred_store == 2 ? Float64(cfg.loyalty_bump) : 0.0
            (u1 + e1 + loy1) >= (u2 + e2 + loy2) ? push!(baskets1, b1) : push!(baskets2, b2)
        end

        rev1    = store_revenue(strategy1, baskets1);  cost1   = store_cost(bundle, baskets1)
        rev2    = store_revenue(strategy2, baskets2);  cost2   = store_cost(bundle, baskets2)
        profit1 = rev1 - cost1;                        profit2 = rev2 - cost2

        push!(store1.price_history,     Base.invokelatest(get_prices, strategy1))
        push!(store1.revenue_history,   rev1);   push!(store1.cost_history,      cost1)
        push!(store1.profit_history,    profit1); push!(store1.strategy_names,   string(typeof(strategy1)))
        push!(store1.rationale_history, rat1)

        push!(store2.price_history,     Base.invokelatest(get_prices, strategy2))
        push!(store2.revenue_history,   rev2);   push!(store2.cost_history,      cost2)
        push!(store2.profit_history,    profit2); push!(store2.strategy_names,   string(typeof(strategy2)))
        push!(store2.rationale_history, rat2)

        p1 = [Float64(p) for p in store1.price_history[end]]
        p2 = [Float64(p) for p in store2.price_history[end]]
        row = Any[tick, Float64(rev1), Float64(rev2), Float64(cost1), Float64(cost2),
                  Float64(profit1), Float64(profit2), length(baskets1), length(baskets2)]
        append!(row, p1)
        append!(row, p2)
        push!(rows, row)

        println(@sprintf("    tick %2d/%d  s1 profit: %+7.2f  s2 profit: %+7.2f  customers: %d / %d",
                         tick, T_PERIODS, Float64(profit1), Float64(profit2),
                         length(baskets1), length(baskets2)))

        if tick < T_PERIODS
            strategy1, rat1 = generate_strategy(api_key, 1, tick, bundle, store1, store2;
                no_loss_constraint=cfg.no_loss, seek_nash=cfg.seek_nash,
                collusion=cfg.collusion, threats=cfg.threats, lookback=cfg.lookback)
            strategy2, rat2 = generate_strategy(api_key, 2, tick, bundle, store2, store1;
                no_loss_constraint=cfg.no_loss, seek_nash=cfg.seek_nash,
                collusion=cfg.collusion, threats=cfg.threats, lookback=cfg.lookback)
        end
    end

    return rows, store1, store2
end

# ─── CSV helpers ─────────────────────────────────────────────────────────────

function csv_escape(x)
    s = string(x)
    (occursin(',', s) || occursin('"', s) || occursin('\n', s)) &&
        return "\"" * replace(s, "\"" => "\"\"") * "\""
    return s
end

write_csv_row(io::IO, vals) = println(io, join(csv_escape.(vals), ","))

# ─── Main ─────────────────────────────────────────────────────────────────────

function main()
    if length(ARGS) < 1
        println(stderr, "Usage: julia --project=. sweep.jl <api_key> [bundle.jld2]")
        exit(1)
    end
    api_key     = ARGS[1]
    bundle_arg  = length(ARGS) >= 2 ? ARGS[2] : nothing

    ts         = Dates.format(now(), "yyyymmdd_HHMMSS")
    meta_file  = "sweep_meta_$(ts).csv"
    ticks_file = "sweep_ticks_$(ts).csv"

    # ── Bundle ────────────────────────────────────────────────────────────────
    bundle = if bundle_arg !== nothing && isfile(bundle_arg)
        load_bundle(bundle_arg)
    else
        println("Generating environment bundle via LLM...")
        b = generate_bundle(api_key)
        fname = something(bundle_arg, "sweep_bundle_$(ts).jld2")
        save_bundle(fname, b)
        b
    end
    goods = bundle.goods

    # ── CSV headers ───────────────────────────────────────────────────────────
    price_cols = vcat(["s1_price_$(g)" for g in goods], ["s2_price_$(g)" for g in goods])

    open(ticks_file, "w") do f
        write_csv_row(f, ["run_id", "config", "rep", "tick",
                          "s1_revenue", "s2_revenue", "s1_cost", "s2_cost",
                          "s1_profit", "s2_profit", "s1_customers", "s2_customers",
                          price_cols...])
    end
    open(meta_file, "w") do f
        write_csv_row(f, ["run_id", "config", "rep",
                          "no_loss", "seek_nash", "collusion", "threats",
                          "loyalty_share", "loyalty_bump", "utility_noise_sigma", "lookback",
                          "s1_total_profit", "s2_total_profit",
                          "s1_mean_profit",  "s2_mean_profit"])
    end

    # ── Sweep ─────────────────────────────────────────────────────────────────
    total_runs = length(CONFIGS) * N_REPS
    run_id     = 0

    for cfg in CONFIGS, rep in 1:N_REPS
        run_id += 1
        println("\n" * "═"^60)
        println("  Run $run_id / $total_runs  |  $(cfg.name)  rep $rep")
        println("═"^60)

        consumers = generate_consumers(; loyal_share=cfg.loyalty_share)

        rows, store1, store2 = try
            simulate_one(api_key, bundle, consumers, cfg)
        catch e
            @error "Run $run_id failed — skipping" exception=e
            continue
        end

        # Tick data
        open(ticks_file, "a") do f
            for r in rows
                write_csv_row(f, [run_id, cfg.name, rep, r...])
            end
        end

        # Summary
        s1_total = sum(Float64.(store1.profit_history))
        s2_total = sum(Float64.(store2.profit_history))
        s1_mean  = s1_total / T_PERIODS
        s2_mean  = s2_total / T_PERIODS
        open(meta_file, "a") do f
            write_csv_row(f, [run_id, cfg.name, rep,
                               cfg.no_loss, cfg.seek_nash, cfg.collusion, cfg.threats,
                               cfg.loyalty_share, cfg.loyalty_bump,
                               cfg.utility_noise_sigma, cfg.lookback,
                               s1_total, s2_total, s1_mean, s2_mean])
        end

        println(@sprintf("  ✓  s1 total: %+.2f  s2 total: %+.2f", s1_total, s2_total))
    end

    println("\n" * "═"^60)
    println("  Sweep complete — $run_id runs")
    println("  Meta:  $meta_file")
    println("  Ticks: $ticks_file")
    println("═"^60)
end

main()
