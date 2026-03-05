
# ── Strategy_4CCEB2E1_1 | Store 1 | tick 0 ──────────────────────────────
# Since this is the first tick, I have no historical data to analyze my competitor's pricing strategy. Therefore, I will adopt a competitive yet cautious approach by setting prices slightly above wholesale costs to ensure profitability while remaining attractive to customers. This strategy focuses on establishing a customer base without engaging in aggressive price competition from the outset. I expect this approach to provide a balance between volume sales and profit margins as the market dynamics unfold.
struct Strategy_4CCEB2E1_1 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_1) = Rational{Int}[2//1, 5//2, 3//1, 7//2, 2//1, 5//1, 6//1, 3//2, 6//5, 3//1]

function feasible(s::Strategy_4CCEB2E1_1, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_2 | Store 2 | tick 0 ──────────────────────────────
# Since there is no historical data available, I will start with a strategy that sets prices slightly above the wholesale costs to ensure profitability while remaining competitive. This approach will help us establish a baseline for customer response and competitor behavior. I aim to attract customers with reasonable prices while observing the market dynamics before making further strategic adjustments.
struct Strategy_4CCEB2E1_2 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_2) = Rational{Int}[9//5, 5//2, 3//1, 7//2, 2//1, 5//1, 6//1, 3//2, 6//5, 3//1]

function feasible(s::Strategy_4CCEB2E1_2, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_3 | Store 1 | tick 1 ──────────────────────────────
# For this tick, I aim to slightly undercut the competitor on milk to attract more customers due to its high elasticity and competitive nature. I will keep other prices the same as the competitor since they matched my prices last round, suggesting they are likely profitable. By lowering the price of milk, I expect to draw in more overall store traffic, which can lead to increased sales of other items, thereby boosting overall profit despite the lower margin on milk.
struct Strategy_4CCEB2E1_3 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_3) = Rational{Int}[17//10, 5//2, 3//1, 7//2, 2//1, 5//1, 6//1, 3//2, 6//5, 3//1]

function feasible(s::Strategy_4CCEB2E1_3, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_4 | Store 2 | tick 1 ──────────────────────────────
# In the previous tick, all my prices matched those of the competitor. This suggests a potential price coordination or coincidence, but it's too early to ascertain their strategy. To maximize profit while testing market response, I will slightly reduce the price of high-margin items like coffee and pasta sauce to potentially increase sales volume. I expect this to attract price-sensitive customers without sparking a price war, thereby increasing overall profit.
struct Strategy_4CCEB2E1_4 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_4) = Rational{Int}[9//5, 5//2, 3//1, 7//2, 2//1, 5//1, 29//5, 3//2, 6//5, 29//10]

function feasible(s::Strategy_4CCEB2E1_4, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_5 | Store 1 | tick 2 ──────────────────────────────
# In the previous tick, we significantly increased our profit by undercutting the competitor on milk, which likely drove a substantial amount of customer traffic to our store. I will maintain a similar approach by keeping milk competitively priced to continue attracting customers. Additionally, I'll slightly reduce the coffee price to regain competitiveness after noticing our competitor lowered theirs last tick. The rest of the prices will remain stable, as they seem to be in line with the competitor, ensuring balanced profit margins across other products.
struct Strategy_4CCEB2E1_5 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_5) = Rational{Int}[17//10, 5//2, 3//1, 7//2, 2//1, 5//1, 57//10, 3//2, 6//5, 3//1]

function feasible(s::Strategy_4CCEB2E1_5, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_6 | Store 2 | tick 2 ──────────────────────────────
# In the first tick, our prices closely matched the competitor's, but in the second tick, they undercut us on milk, leading to a significant drop in our profit. To regain competitiveness, I will slightly lower the price of milk to match theirs and reduce the price of coffee, a high-margin item, to potentially increase volume sales. The rest of the prices will remain the same to maintain profitability on those items. This strategy aims to regain market share lost in the previous tick and stabilize our profits.
struct Strategy_4CCEB2E1_6 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_6) = Rational{Int}[17//10, 5//2, 3//1, 7//2, 2//1, 5//1, 57//10, 3//2, 6//5, 29//10]

function feasible(s::Strategy_4CCEB2E1_6, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_7 | Store 1 | tick 3 ──────────────────────────────
# In the previous ticks, aligning our prices closely with the competitor on key items such as milk, coffee, and pasta sauce has maintained our competitive edge. The significant profit in tick 2 suggests that our lower pricing on milk was successful. Therefore, I'll continue this strategy of competitive pricing on these staples while maintaining slightly higher margins on less price-sensitive items like cereal, bread, and butter. This should help us maximize profit while retaining customer interest in our attractively priced staples.
struct Strategy_4CCEB2E1_7 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_7) = Rational{Int}[17//10, 13//5, 31//10, 18//5, 21//10, 51//10, 57//10, 17//11, 5//4, 56//19]

function feasible(s::Strategy_4CCEB2E1_7, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_8 | Store 2 | tick 3 ──────────────────────────────
# In the past ticks, I noticed that slight price adjustments, particularly on high-demand items like milk and coffee, can significantly affect profit. Since our competitor is matching or slightly undercutting us on key items like milk and coffee, I will maintain competitive pricing on these items to retain market share. Additionally, I will slightly reduce the price of pasta sauce to undercut the competitor and attract more customers, while keeping other prices stable to maintain profit margins. This strategy should help increase our cumulative profit by capturing price-sensitive customers without drastically affecting our margins.
struct Strategy_4CCEB2E1_8 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_8) = Rational{Int}[28//17, 5//2, 3//1, 7//2, 2//1, 5//1, 57//10, 3//2, 6//5, 37//13]

function feasible(s::Strategy_4CCEB2E1_8, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_9 | Store 1 | tick 4 ──────────────────────────────
# In the previous tick, we saw no profit, indicating that our prices were too high compared to the competitor's. I will adjust our prices to be more competitive, especially for goods where we are outpriced, such as milk and pasta_sauce. By slightly undercutting the competitor's prices on these key items, I aim to regain market share and drive traffic to our store, expecting to improve our profit margins without drastically reducing prices across the board.
struct Strategy_4CCEB2E1_9 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_9) = Rational{Int}[8//5, 5//2, 3//1, 7//2, 2//1, 5//1, 57//10, 3//2, 6//5, 14//5]

function feasible(s::Strategy_4CCEB2E1_9, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_10 | Store 2 | tick 4 ──────────────────────────────
# I observed that our competitor has been steadily increasing their prices, which opens up an opportunity for us to capture more market share by maintaining lower prices on key items. I aim to capitalize on this by slightly undercutting their prices while ensuring we maintain profitability, especially on high-margin items like coffee and bacon. By doing this, I expect to increase our sales volume and overall profit, leveraging our competitive pricing advantage to attract more customers.
struct Strategy_4CCEB2E1_10 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_10) = Rational{Int}[8//5, 5//2, 3//1, 7//2, 2//1, 5//1, 28//5, 3//2, 6//5, 37//13]

function feasible(s::Strategy_4CCEB2E1_10, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_11 | Store 1 | tick 5 ──────────────────────────────
# In the previous ticks, our strategy of slightly undercutting our competitor led to significant profit increases, especially when we matched or slightly lowered prices compared to them. The drop in profit in tick 4 suggests our prices were too high or misaligned with market demand. To optimize profits, I will maintain competitive pricing by matching or slightly undercutting our competitor's prices on key goods like milk, eggs, and coffee, while keeping strategic margins on other products like pasta and pasta sauce. This should balance attracting customers with maintaining profitability.
struct Strategy_4CCEB2E1_11 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_11) = Rational{Int}[8//5, 5//2, 3//1, 7//2, 2//1, 5//1, 28//5, 3//2, 6//5, 37//13]

function feasible(s::Strategy_4CCEB2E1_11, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_12 | Store 2 | tick 5 ──────────────────────────────
# I have observed that both our store and the competitor have been gradually lowering prices, particularly on milk, which seems to be a key driver of customer traffic. Our profit was highest when our milk price was competitive. To regain profitability, I will set our milk price slightly below the competitor's current level. Meanwhile, I will maintain or slightly increase prices on other items like coffee and pasta sauce, where demand seems less price-sensitive, to compensate for the lower margin on milk. I expect this strategy to increase customer traffic and overall profitability by attracting price-sensitive shoppers while maintaining margins on less elastic goods.
struct Strategy_4CCEB2E1_12 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_12) = Rational{Int}[17//11, 5//2, 3//1, 7//2, 2//1, 5//1, 23//4, 3//2, 6//5, 29//10]

function feasible(s::Strategy_4CCEB2E1_12, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_13 | Store 1 | tick 6 ──────────────────────────────
# In previous rounds, matching or slightly undercutting the competitor's prices increased our profit, especially on popular items like milk and coffee. I will continue this strategy by slightly underpricing milk and coffee compared to the competitor's last tick. I will also maintain competitive pricing on other staples like cereal and bread to retain market share. This approach should help us maximize volume and profit, assuming the competitor does not drastically change their pricing strategy.
struct Strategy_4CCEB2E1_13 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_13) = Rational{Int}[20//13, 5//2, 3//1, 7//2, 2//1, 5//1, 109//19, 3//2, 6//5, 37//13]

function feasible(s::Strategy_4CCEB2E1_13, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_14 | Store 2 | tick 6 ──────────────────────────────
# I have observed that our profits tend to increase when our prices are slightly below those of our competitors, especially for staple goods like milk and coffee. I will continue this strategy of slightly undercutting their prices while maintaining a balance to ensure profitability, particularly focusing on competitive pricing for coffee and milk which have shown sensitivity. I expect this will help us maintain a competitive edge and increase customer loyalty, thus maximizing our cumulative profit over time.
struct Strategy_4CCEB2E1_14 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_14) = Rational{Int}[17//11, 5//2, 3//1, 7//2, 2//1, 5//1, 96//17, 3//2, 6//5, 37//13]

function feasible(s::Strategy_4CCEB2E1_14, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_15 | Store 1 | tick 7 ──────────────────────────────
# In recent ticks, we've seen that slightly undercutting the competitor's prices on key items, such as milk and coffee, has resulted in significantly higher profits. This strategy appears to be effective in attracting more customers. Therefore, I will continue to price key products like milk and coffee just below the competitor's prices. At the same time, I will maintain competitive pricing on other items to ensure a balance between volume and margin. I expect this approach to maximize our cumulative profit by drawing in price-sensitive customers while maintaining overall profitability.
struct Strategy_4CCEB2E1_15 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_15) = Rational{Int}[23//15, 5//2, 3//1, 7//2, 2//1, 5//1, 62//11, 3//2, 6//5, 37//13]

function feasible(s::Strategy_4CCEB2E1_15, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_16 | Store 2 | tick 7 ──────────────────────────────
# I noticed that our profit dropped significantly in tick 5, which suggests our competitor's pricing may have been more attractive. To regain market share, I'll slightly undercut the competitor on key goods like milk, coffee, and pasta_sauce where we have close pricing competition. By strategically using these as loss leaders, I aim to attract more customers and boost overall sales, while maintaining competitive pricing on other goods to ensure profitability.
struct Strategy_4CCEB2E1_16 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_16) = Rational{Int}[23//15, 5//2, 3//1, 7//2, 2//1, 5//1, 28//5, 3//2, 6//5, 54//19]

function feasible(s::Strategy_4CCEB2E1_16, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_17 | Store 1 | tick 8 ──────────────────────────────
# I've noticed that our profits have fluctuated significantly over the last few ticks, indicating possible price sensitivity. Our competitor's prices have been stable and close to ours, so I’m adopting a strategy of slight price undercutting on selected key items to capture more market share. For milk, which has shown high sensitivity, I will price it slightly below the competitor's to attract customers. I will maintain competitive pricing for other goods while slightly reducing the price of coffee to regain lost sales. I expect this strategy to stabilize and potentially increase our profit by attracting more price-sensitive customers.
struct Strategy_4CCEB2E1_17 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_17) = Rational{Int}[32//21, 5//2, 3//1, 7//2, 2//1, 5//1, 45//8, 3//2, 6//5, 54//19]

function feasible(s::Strategy_4CCEB2E1_17, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_18 | Store 2 | tick 8 ──────────────────────────────
# I observed that my competitor aligns closely with our pricing when prices are similar, so I will slightly undercut their prices to capture more market share. This strategy aims to boost sales volume while maintaining competitive prices, especially for high-margin items like coffee and bacon. By setting prices just below our competitor's, I expect to increase our cumulative profit by attracting more customers without significantly sacrificing margins.
struct Strategy_4CCEB2E1_18 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_18) = Rational{Int}[32//21, 87//35, 200//67, 122//35, 133//67, 334//67, 95//17, 52//35, 19//16, 17//6]

function feasible(s::Strategy_4CCEB2E1_18, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_19 | Store 1 | tick 9 ──────────────────────────────
# In recent ticks, our profits have been erratic, and our prices have been slightly higher or on par with our competitor's, leading to a significant drop in profits. For this tick, I will adopt a competitive pricing strategy by slightly undercutting our competitor's prices, particularly on key items like milk, eggs, and coffee which seem to impact our profits significantly. By pricing these goods more aggressively, I aim to regain market share and boost our overall profitability, expecting a rebound in customer traffic towards our store.
struct Strategy_4CCEB2E1_19 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_19) = Rational{Int}[53//35, 52//21, 119//40, 73//21, 79//40, 204//41, 67//12, 31//21, 13//11, 31//11]

function feasible(s::Strategy_4CCEB2E1_19, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_20 | Store 2 | tick 9 ──────────────────────────────
# Analyzing the past trends, it appears that slight undercutting in prices has significantly increased our profits, indicating high price elasticity. I will continue this strategy by slightly undercutting our competitor's prices on key items like coffee and eggs, while maintaining or slightly reducing prices on other items to stay competitive. This approach should help us capture more market share and continue maximizing our cumulative profit.
struct Strategy_4CCEB2E1_20 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_20) = Rational{Int}[53//35, 87//35, 200//67, 122//35, 79//40, 334//67, 67//12, 52//35, 19//16, 31//11]

function feasible(s::Strategy_4CCEB2E1_20, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_21 | Store 1 | tick 10 ──────────────────────────────
# In the last tick, I noticed our profit significantly increased when our prices were slightly below the competitor's. This suggests that even minor undercutting can capture a larger market share. I will maintain this strategy by setting our prices just below the competitor's current pricing to continue attracting their customers without drastically reducing our margins. This approach is expected to maximize our profit by leveraging competitive pricing while maintaining the volume of sales.
struct Strategy_4CCEB2E1_21 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_21) = Rational{Int}[3//2, 37//15, 86//29, 52//15, 57//29, 144//29, 39//7, 22//15, 7//6, 45//16]

function feasible(s::Strategy_4CCEB2E1_21, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_22 | Store 2 | tick 10 ──────────────────────────────
# In tick 10, my profit was zero, likely due to the competitor undercutting my prices across the board. To regain competitive edge and maximize profit, I will slightly undercut their prices or match them while maintaining a strategic focus on products with higher margins such as coffee and bacon. I aim to attract price-sensitive customers back to our store while still ensuring profitability, particularly with coffee and bacon, which have historically been strong performers.
struct Strategy_4CCEB2E1_22 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_22) = Rational{Int}[3//2, 52//21, 119//40, 73//21, 57//29, 144//29, 39//7, 22//15, 7//6, 45//16]

function feasible(s::Strategy_4CCEB2E1_22, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_23 | Store 1 | tick 11 ──────────────────────────────
# Analyzing the recent ticks, I've noticed that our strategy of slightly undercutting competitors has been effective in increasing profits. I will continue with this approach of setting prices marginally lower than our competitor's while maintaining a healthy margin above the wholesale costs. By doing so, I expect to attract more customers and maximize our cumulative profit over time, capitalizing on the competitive advantage of slightly lower prices.
struct Strategy_4CCEB2E1_23 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_23) = Rational{Int}[52//35, 32//13, 68//23, 45//13, 45//23, 114//23, 50//9, 19//13, 22//19, 14//5]

function feasible(s::Strategy_4CCEB2E1_23, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_24 | Store 2 | tick 11 ──────────────────────────────
# In the past two ticks, our profits have dropped to zero, indicating that our prices might not be competitive enough. The competitor is consistently pricing just slightly below us or matching our prices, which suggests they are attempting to undercut us. To regain market share and drive sales volume, I will adopt an aggressive pricing strategy by slightly lowering some of our prices further, especially on high-demand items like milk and bread, to entice customers back. I anticipate that this approach will stimulate demand and improve our profit margins over time, even if it means temporarily sacrificing profit on certain items.
struct Strategy_4CCEB2E1_24 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_24) = Rational{Int}[31//21, 37//15, 68//23, 45//13, 37//19, 94//19, 61//11, 19//13, 15//13, 14//5]

function feasible(s::Strategy_4CCEB2E1_24, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_25 | Store 1 | tick 12 ──────────────────────────────
# In the past two ticks, we have seen zero profit, likely due to being undercut by our competitor. This suggests we need to be more aggressive to regain market share. I propose slightly undercutting our competitor's prices across most goods, while ensuring our prices remain above wholesale cost to maintain some profit margin. I expect this strategy will help us capture more customers and improve our profit in the upcoming tick.
struct Strategy_4CCEB2E1_25 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_25) = Rational{Int}[22//15, 27//11, 56//19, 38//11, 31//16, 79//16, 72//13, 13//9, 8//7, 25//9]

function feasible(s::Strategy_4CCEB2E1_25, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_26 | Store 2 | tick 12 ──────────────────────────────
# In the recent ticks, I've observed that matching our competitor's prices closely has consistently resulted in positive profit, with deviations leading to losses. By slightly undercutting our competitor's prices, I aim to capture more market share while maintaining profitability. This approach leverages the slight advantage in pricing to attract price-sensitive customers, expecting a steady increase in cumulative profit over time.
struct Strategy_4CCEB2E1_26 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_26) = Rational{Int}[22//15, 27//11, 56//19, 38//11, 31//16, 79//16, 72//13, 16//11, 8//7, 39//14]

function feasible(s::Strategy_4CCEB2E1_26, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_27 | Store 1 | tick 13 ──────────────────────────────
# Analyzing past behavior, I observed that aligning prices closely with our competitor has been beneficial in maintaining profit, except when we dropped prices too far. Our profits were zero in ticks 9 and 12, likely due to aggressive undercutting, while maintaining a slight edge over the competitor resulted in profitability. For this tick, I'll slightly undercut the competitor's pricing for eggs, bacon, and coffee to retain competitive advantage, while matching other goods to balance risk and ensure profitability.
struct Strategy_4CCEB2E1_27 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_27) = Rational{Int}[22//15, 27//11, 56//19, 38//11, 27//14, 69//14, 83//15, 16//11, 8//7, 39//14]

function feasible(s::Strategy_4CCEB2E1_27, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_28 | Store 2 | tick 13 ──────────────────────────────
# Our competitor has matched our prices for tick 13, leading to zero profit. To regain market share and drive sales, I will adopt a slight undercutting strategy by lowering prices marginally below the competitor's current prices. This should attract price-sensitive customers and boost our sales volume. I expect this to result in increased cumulative profit while the competitor may hesitate to further lower their prices due to diminishing returns.
struct Strategy_4CCEB2E1_28 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_28) = Rational{Int}[19//13, 22//9, 47//16, 31//9, 27//14, 69//14, 83//15, 10//7, 9//8, 36//13]

function feasible(s::Strategy_4CCEB2E1_28, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_29 | Store 1 | tick 14 ──────────────────────────────
# In the past two ticks, we have matched the competitor's prices but ended up with zero profit, indicating that we might not be capturing enough market share or our costs are exceeding our prices. To regain profitability, I will slightly undercut the competitor's prices on key items like milk, cereal, bread, and pasta that are essential and likely to drive store traffic. By doing this, I aim to attract more customers while maintaining competitive pricing on other goods to ensure we cover our wholesale costs and increase our overall profit.
struct Strategy_4CCEB2E1_29 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_29) = Rational{Int}[16//11, 17//7, 41//14, 24//7, 23//12, 59//12, 116//21, 17//12, 11//10, 47//17]

function feasible(s::Strategy_4CCEB2E1_29, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_30 | Store 2 | tick 14 ──────────────────────────────
# In recent ticks, when our prices were slightly lower than our competitor's, we saw significant profits. This indicates that being marginally cheaper attracts more customers. Our competitor matches our prices closely, but they tend to keep some prices slightly higher. For tick 15, I will continue this strategy of undercutting their prices by a small margin in order to maintain our competitive advantage and maximize profit. I expect to capture more market share by being perceived as the cheaper option while still remaining profitable.
struct Strategy_4CCEB2E1_30 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_30) = Rational{Int}[16//11, 17//7, 41//14, 24//7, 23//12, 59//12, 116//21, 17//12, 10//9, 47//17]

function feasible(s::Strategy_4CCEB2E1_30, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_31 | Store 1 | tick 15 ──────────────────────────────
# I noticed that whenever our prices were lower than the competitor's, our profits were significantly higher. However, on ticks 12 and 14, when our prices matched or were slightly lower than theirs, our profits dropped to zero. This suggests that a simple price war isn't optimal, as it might be leading to unsustainable low pricing. For this tick, I plan to slightly undercut the competitor on key items like milk, cereal, and bread to attract customers, while keeping other prices similar to the competitor's to maintain margins. I expect this strategy to increase our market share without drastically reducing our profit margins.
struct Strategy_4CCEB2E1_31 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_31) = Rational{Int}[13//9, 29//12, 35//12, 31//9, 21//11, 54//11, 83//15, 10//7, 9//8, 36//13]

function feasible(s::Strategy_4CCEB2E1_31, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_32 | Store 2 | tick 15 ──────────────────────────────
# In the recent ticks, I have observed that our competitor has been closely matching our prices, which led to zero profit in some cases. To address this, I will adopt a slightly aggressive pricing strategy by slightly undercutting their prices on popular items to regain market share. By setting prices just below theirs, I aim to attract more customers while maintaining a reasonable profit margin. I expect this to increase our foot traffic and eventually boost our cumulative profits over time.
struct Strategy_4CCEB2E1_32 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_32) = Rational{Int}[13//9, 29//12, 35//12, 41//12, 21//11, 54//11, 193//35, 24//17, 12//11, 11//4]

function feasible(s::Strategy_4CCEB2E1_32, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_33 | Store 1 | tick 16 ──────────────────────────────
# Given that our profits have alternated between zero and positive values, it appears that our competitor is frequently adjusting their prices to undercut ours. I will adopt a mixed strategy where I slightly undercut their most recent prices for several key items to regain market share while keeping some prices the same to maintain profitability. I expect this will lead to increased sales and help us maintain a competitive edge without drastically reducing profits.
struct Strategy_4CCEB2E1_33 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_33) = Rational{Int}[10//7, 41//17, 32//11, 58//17, 19//10, 49//10, 11//2, 7//5, 13//12, 52//19]

function feasible(s::Strategy_4CCEB2E1_33, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_34 | Store 2 | tick 16 ──────────────────────────────
# I will adopt a strategy of slightly undercutting the competitor on key items, particularly those with high purchase frequency like milk and eggs, to attract more customers. Given that our competitor's prices closely mirror ours, I will also maintain competitive pricing on other items to ensure we remain attractive overall. The goal is to balance increased customer traffic from lower prices on popular items with maintaining profitability on other products. I expect this approach to minimize the instances of zero profit we've observed while still staying competitive.
struct Strategy_4CCEB2E1_34 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_34) = Rational{Int}[10//7, 41//17, 32//11, 58//17, 19//10, 49//10, 11//2, 7//5, 13//12, 52//19]

function feasible(s::Strategy_4CCEB2E1_34, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_35 | Store 1 | tick 17 ──────────────────────────────
# My strategy is to slightly undercut the competitor's prices to attract more customers while maintaining a profitable margin. I observed that our profits drop to zero when our prices are equal to the competitor's, suggesting a highly competitive market. By setting prices just below the competitor's, I aim to capture more market share without severely affecting our profit margins. I expect this will increase our cumulative profit by driving higher sales volume.
struct Strategy_4CCEB2E1_35 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_35) = Rational{Int}[17//12, 12//5, 29//10, 17//5, 17//9, 44//9, 192//35, 25//18, 15//14, 30//11]

function feasible(s::Strategy_4CCEB2E1_35, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_36 | Store 2 | tick 17 ──────────────────────────────
# Given the alternating pattern of profit and loss in recent ticks, it appears that aggressive price undercutting is necessary to capture market share and ensure profitability. I noticed that when our prices closely matched or slightly undercut the competitor's, we recorded profits. Therefore, I will maintain a strategy of slightly lowering prices on key competitive items such as milk, pasta, and pasta_sauce to attract price-sensitive customers while keeping other prices stable to avoid unnecessary losses. I expect this approach to maximize our profit by increasing sales volume while balancing the need to cover costs.
struct Strategy_4CCEB2E1_36 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_36) = Rational{Int}[17//12, 41//17, 32//11, 58//17, 19//10, 49//10, 11//2, 7//5, 15//14, 30//11]

function feasible(s::Strategy_4CCEB2E1_36, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_37 | Store 1 | tick 18 ──────────────────────────────
# I noticed that our profit tends to drop to zero when our prices are very close to our competitor's. To improve our profit, I'm slightly lowering our prices on key items like milk, eggs, and pasta where our competitor matches us closely, aiming to undercut them just enough to attract more customers. I'm keeping coffee and bacon prices stable as they seem to maintain a good profit margin. This strategy should increase our sales volume and boost overall profitability.
struct Strategy_4CCEB2E1_37 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_37) = Rational{Int}[24//17, 12//5, 29//10, 61//18, 15//8, 44//9, 192//35, 25//18, 17//16, 49//18]

function feasible(s::Strategy_4CCEB2E1_37, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_38 | Store 2 | tick 18 ──────────────────────────────
# I observed that our competitor is slightly underpricing us in most categories, likely capturing more market share. To regain competitiveness and boost our profits, I will set our prices slightly below theirs for all products. This should help in attracting more customers by offering better deals than our competitor. I expect this aggressive pricing strategy to increase our sales volume, thus improving our cumulative profit despite the lower margin.
struct Strategy_4CCEB2E1_38 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_38) = Rational{Int}[24//17, 43//18, 26//9, 61//18, 15//8, 39//8, 115//21, 11//8, 17//16, 49//18]

function feasible(s::Strategy_4CCEB2E1_38, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_39 | Store 1 | tick 19 ──────────────────────────────
# The recent history indicates that we matched our competitor's prices closely, yet achieved zero profit in ticks 16 and 19. This suggests that either the market is highly price-sensitive or that we need to differentiate ourselves slightly to regain profitability. I will slightly undercut our competitor's prices on high-demand items like milk, eggs, and pasta while maintaining our price on others to draw customers in without eroding our overall profit margin substantially. I expect this strategy to attract more customers due to competitive pricing on key items and improve our profit in the upcoming tick.
struct Strategy_4CCEB2E1_39 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_39) = Rational{Int}[7//5, 43//18, 26//9, 27//8, 15//8, 39//8, 115//21, 11//8, 20//19, 19//7]

function feasible(s::Strategy_4CCEB2E1_39, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_40 | Store 2 | tick 19 ──────────────────────────────
# To maximize our cumulative profit, I will adopt a slight undercutting strategy on key items where the competitor has matched or is slightly above our prices. This will help us attract price-sensitive customers, especially for staple goods like milk, eggs, and pasta, where even a small difference can influence buying decisions. I will slightly increase prices on high-margin items such as coffee and bacon to offset the lower margins from other goods, aiming for a balanced approach to maintain overall profitability.
struct Strategy_4CCEB2E1_40 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_40) = Rational{Int}[7//5, 19//8, 23//8, 27//8, 15//8, 44//9, 116//21, 11//8, 20//19, 19//7]

function feasible(s::Strategy_4CCEB2E1_40, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_41 | Store 1 | tick 20 ──────────────────────────────
# To maximize our cumulative profit over time, I will closely match our competitor's prices, as our profits have been volatile due to undercutting. Our previous strategy of lowering prices aggressively led to zero profits when we were slightly higher than the competitor. By aligning more closely with their prices, but slightly undercutting on key items like coffee and bacon, where they have been more aggressive, we aim to capture more market share and stabilize profits. This approach should help us avoid being undercut while still maintaining competitive pricing.
struct Strategy_4CCEB2E1_41 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_41) = Rational{Int}[7//5, 43//18, 23//8, 27//8, 15//8, 39//8, 82//15, 11//8, 20//19, 19//7]

function feasible(s::Strategy_4CCEB2E1_41, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_42 | Store 2 | tick 20 ──────────────────────────────
# Over the last few ticks, my prices have closely matched my competitor's, which has led to fluctuating profits. To regain market share and maximize profit, I will strategically lower the prices of key items like milk, cereal, and bread, slightly below my competitor's prices to attract more customers. By maintaining competitive pricing on other items, I aim to boost overall sales volume, leveraging the potential increase in foot traffic from these attractive core goods. I expect this strategy to improve my store's market position and drive higher cumulative profits over time.
struct Strategy_4CCEB2E1_42 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_42) = Rational{Int}[25//18, 19//8, 23//8, 27//8, 15//8, 39//8, 82//15, 11//8, 24//23, 27//10]

function feasible(s::Strategy_4CCEB2E1_42, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_43 | Store 1 | tick 21 ──────────────────────────────
# Our recent pricing strategy has been closely mirroring that of our competitor, but this has led to zero profits in some ticks. To differentiate ourselves and regain market share, I will slightly lower our prices on key staples like milk, cereal, and pasta, where customers are price-sensitive. By doing so, I aim to attract price-conscious consumers and boost volume sales. I expect this strategy to increase foot traffic and overall sales, improving our cumulative profit over time.
struct Strategy_4CCEB2E1_43 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_43) = Rational{Int}[11//8, 19//8, 23//8, 27//8, 15//8, 39//8, 71//13, 11//8, 30//29, 27//10]

function feasible(s::Strategy_4CCEB2E1_43, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_44 | Store 2 | tick 21 ──────────────────────────────
# In the last few ticks, we've been reducing prices slightly, which has been effective in maintaining competitive profit margins. Our competitor has been matching our prices closely, which suggests a tight competitive environment. To increase our market share and potentially raise our profits, I will continue to slightly undercut our competitor on key items where a price difference might influence consumer choice, such as milk and pasta. I aim to maintain or increase our profit margins by not significantly lowering prices on goods where we already have a competitive edge or where demand is inelastic, like coffee and bacon.
struct Strategy_4CCEB2E1_44 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_44) = Rational{Int}[11//8, 19//8, 23//8, 27//8, 15//8, 39//8, 115//21, 11//8, 30//29, 35//13]

function feasible(s::Strategy_4CCEB2E1_44, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_45 | Store 1 | tick 22 ──────────────────────────────
# In the previous ticks, we've experienced fluctuations in profit, with significant competition in pricing. To maintain competitiveness and recover profitability, I am slightly reducing prices on key items like milk, cereal, and pasta, while maintaining competitive pricing on other items to prevent further zero-profit ticks. This strategy aims to attract more customers by being cost-effective on staple items, expecting to see an increase in sales volume and overall profit.
struct Strategy_4CCEB2E1_45 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_45) = Rational{Int}[11//8, 19//8, 23//8, 27//8, 15//8, 39//8, 60//11, 11//8, 41//40, 35//13]

function feasible(s::Strategy_4CCEB2E1_45, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_46 | Store 2 | tick 22 ──────────────────────────────
# In the past few ticks, I've been gradually lowering prices to stay competitive with our competitor, which has helped maintain some level of profit. However, I've noticed that the competitor has also been slightly reducing their prices, which could potentially erode our profits further if not addressed. This tick, I will match or slightly undercut the competitor's prices on key items like milk, coffee, and pasta, where the competitor has shown price sensitivity. Additionally, I will maintain stable prices on other items where our profit margin is healthier. I expect this strategy to attract price-sensitive customers while retaining a reasonable profit margin overall.
struct Strategy_4CCEB2E1_46 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_46) = Rational{Int}[11//8, 19//8, 23//8, 27//8, 15//8, 39//8, 60//11, 11//8, 41//40, 35//13]

function feasible(s::Strategy_4CCEB2E1_46, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_47 | Store 1 | tick 23 ──────────────────────────────
# I have observed that matching or slightly undercutting the competitor's prices has led to notable profits, especially on ticks 22 and 23. This suggests that small price differences can significantly influence customer choice in this competitive environment. Therefore, I will continue to match the competitor's prices closely, while slightly undercutting them on a few key items such as milk and pasta, to maintain our competitive edge and maximize profits. Given the recent success, I expect this approach to continue generating strong profits.
struct Strategy_4CCEB2E1_47 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_47) = Rational{Int}[11//8, 19//8, 23//8, 27//8, 15//8, 39//8, 60//11, 11//8, 68//67, 35//13]

function feasible(s::Strategy_4CCEB2E1_47, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_48 | Store 2 | tick 23 ──────────────────────────────
# To regain competitiveness, I will slightly undercut the competitor's prices on key items like milk and pasta, which have been the focus of competitive pricing. I will also maintain competitive pricing on high-margin items like coffee and bacon. This strategy aims to draw customers back by offering attractive prices on staples while maintaining sufficient margins on other products to recover profits. I expect this approach to boost our sales volumes and improve profit margins, reversing the recent dip in profits.
struct Strategy_4CCEB2E1_48 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_48) = Rational{Int}[11//8, 19//8, 23//8, 27//8, 15//8, 39//8, 49//9, 11//8, 68//67, 51//19]

function feasible(s::Strategy_4CCEB2E1_48, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_49 | Store 1 | tick 24 ──────────────────────────────
# To maximize profit, I will maintain competitive pricing similar to the competitor but with slight variations to test market response. Given our recent profitability, I aim to keep prices stable while slightly undercutting the competitor on key items like coffee and pasta_sauce, which are popular and have shown sensitivity to price changes. This strategy should help us maintain our market share while continuing to observe competitor reactions, with the expectation of achieving steady profit growth.
struct Strategy_4CCEB2E1_49 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_49) = Rational{Int}[11//8, 19//8, 23//8, 27//8, 15//8, 39//8, 49//9, 11//8, 68//67, 51//19]

function feasible(s::Strategy_4CCEB2E1_49, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_50 | Store 2 | tick 24 ──────────────────────────────
# Our competitor's pricing is nearly identical to ours, suggesting a strong focus on maintaining market equilibrium. However, our profit was zero in tick 23, indicating potential market saturation or a decrease in demand. To regain a competitive edge and boost sales volume, I will slightly undercut the competitor on key products like coffee and cereal, where our prices have historically been close. I expect this strategy to increase our market share and drive up cumulative profits by attracting price-sensitive customers.
struct Strategy_4CCEB2E1_50 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_50) = Rational{Int}[11//8, 40//17, 23//8, 27//8, 15//8, 39//8, 65//12, 11//8, 1//1, 51//19]

function feasible(s::Strategy_4CCEB2E1_50, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_51 | Store 1 | tick 25 ──────────────────────────────
# In the past few ticks, our profits have fluctuated significantly, showing sensitivity to small price changes. Notably, the competitor has slightly undercut us on cereal and coffee, indicating aggressive pricing to capture market share. To counter this, I will lower the price of cereal and coffee to match or slightly undercut the competitor while maintaining slight increases in pasta and pasta sauce to test the demand elasticity. This strategy aims to regain competitive advantage in high-demand products while optimizing other prices for maximum profit margin gains.
struct Strategy_4CCEB2E1_51 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_51) = Rational{Int}[11//8, 68//29, 23//8, 27//8, 15//8, 39//8, 92//17, 11//8, 41//40, 27//10]

function feasible(s::Strategy_4CCEB2E1_51, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_52 | Store 2 | tick 25 ──────────────────────────────
# Over the last few ticks, I have kept my prices very close to my competitor's, which has resulted in modest profits. However, I noticed that when I slightly undercut their prices, particularly in cereal and pasta, my profits increased. Therefore, I will continue to keep most prices similar but slightly reduce the price of high-demand items like cereal and pasta to attract more customers. I expect this strategy to increase my sales volume and overall profit without significantly impacting my profit margin.
struct Strategy_4CCEB2E1_52 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_52) = Rational{Int}[11//8, 68//29, 23//8, 27//8, 15//8, 39//8, 65//12, 11//8, 66//67, 8//3]

function feasible(s::Strategy_4CCEB2E1_52, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_53 | Store 1 | tick 26 ──────────────────────────────
# Based on the recent history, our competitor has matched or slightly undercut our prices, particularly in goods like cereal and coffee. To maintain our competitive edge and increase profits, I’ll adjust our prices slightly lower on key items like pasta and pasta sauce, where the competitor has seen significant reductions. By positioning these as loss leaders, we hope to draw customers in and boost overall sales, expecting an increase in cumulative profit through higher volume sales on these and other products.
struct Strategy_4CCEB2E1_53 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_53) = Rational{Int}[11//8, 7//3, 23//8, 27//8, 15//8, 34//7, 27//5, 11//8, 39//40, 45//17]

function feasible(s::Strategy_4CCEB2E1_53, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_54 | Store 2 | tick 26 ──────────────────────────────
# Our pricing has been closely matched with our competitor, with minor differences in coffee and pasta prices. To gain a competitive edge, I plan to undercut our competitor's coffee price slightly, as it has shown to be a variable product. I will maintain competitive pricing on other goods, especially pasta, to attract customers with loss leaders. I expect this strategy to increase our sales volume and overall profit by attracting more price-sensitive customers.
struct Strategy_4CCEB2E1_54 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_54) = Rational{Int}[11//8, 68//29, 23//8, 27//8, 15//8, 39//8, 27//5, 11//8, 39//40, 8//3]

function feasible(s::Strategy_4CCEB2E1_54, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_55 | Store 1 | tick 27 ──────────────────────────────
# In the last tick, a minor price decrease for pasta resulted in a significant profit gain, suggesting high price sensitivity among customers. To capitalize on this, I will maintain competitive prices on key items like cereal, pasta, and pasta sauce, while slightly increasing the price of bacon where we already have a competitive edge. This strategy aims to maximize profits by attracting price-sensitive customers while maintaining our margins on less elastic goods.
struct Strategy_4CCEB2E1_55 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_55) = Rational{Int}[11//8, 7//3, 23//8, 27//8, 15//8, 39//8, 27//5, 11//8, 28//29, 77//29]

function feasible(s::Strategy_4CCEB2E1_55, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_56 | Store 2 | tick 27 ──────────────────────────────
# I noticed that on tick 27, our profits dropped to zero, likely due to matching prices with the competitor's more aggressive pricing. To regain our competitive edge and maximize profit, I'll reduce pricing on a few key items like pasta and cereal to attract price-sensitive customers while maintaining competitive pricing on high-margin items such as coffee. This strategy aims to increase customer footfall and average basket size while still maintaining profitability.
struct Strategy_4CCEB2E1_56 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_56) = Rational{Int}[11//8, 23//10, 23//8, 27//8, 15//8, 39//8, 97//18, 11//8, 18//19, 45//17]

function feasible(s::Strategy_4CCEB2E1_56, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_57 | Store 1 | tick 28 ──────────────────────────────
# In recent ticks, our competitor has slightly reduced prices on cereal, bacon, coffee, pasta, and pasta sauce. Our profit has been inconsistent, with a significant spike in tick 27. To capitalize on this, I will maintain competitive pricing on these items by slightly adjusting our prices below the competitor's where feasible. This strategy aims to attract price-sensitive customers while maintaining overall profitability. I expect this will stabilize our profit by balancing competitive pricing with key products at slightly higher margins.
struct Strategy_4CCEB2E1_57 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_57) = Rational{Int}[11//8, 16//7, 23//8, 27//8, 15//8, 39//8, 97//18, 11//8, 15//16, 29//11]

function feasible(s::Strategy_4CCEB2E1_57, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_58 | Store 2 | tick 28 ──────────────────────────────
# The competitor has consistently priced their goods very close to ours, suggesting a highly competitive environment. Despite minor adjustments, our profits have been stable but not growing. To break this pattern, I will slightly lower the price of coffee and pasta, which have shown potential for price competition, and maintain other prices to avoid a race to the bottom. This strategy aims to capture more market share in these specific categories while maintaining overall profit levels.
struct Strategy_4CCEB2E1_58 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_58) = Rational{Int}[11//8, 68//29, 23//8, 27//8, 15//8, 39//8, 91//17, 11//8, 15//16, 45//17]

function feasible(s::Strategy_4CCEB2E1_58, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_59 | Store 1 | tick 29 ──────────────────────────────
# I noticed that our high profits on ticks 27 and 29 were associated with competitive pricing on pasta and coffee. The competitor slightly undercut our cereal price on tick 29, suggesting a potential threat to our cereal sales. To counter this, I will match the competitor's price on cereal and slightly undercut on coffee while maintaining our successful pricing strategy on pasta. This approach should maintain our competitive edge and maximize profit by attracting price-sensitive customers.
struct Strategy_4CCEB2E1_59 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_59) = Rational{Int}[11//8, 68//29, 23//8, 27//8, 15//8, 39//8, 155//29, 11//8, 15//16, 29//11]

function feasible(s::Strategy_4CCEB2E1_59, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_60 | Store 2 | tick 29 ──────────────────────────────
# I am adopting a slightly more aggressive pricing strategy focusing on undercutting the competitor's prices on key items to regain market share and increase foot traffic. Observing that our profits have stagnated recently, I aim to adjust prices on cereal and pasta_sauce, which are popular items, to entice customers. By lowering these prices while maintaining competitive pricing on other items, I expect to improve our profit margins through increased sales volume.
struct Strategy_4CCEB2E1_60 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_60) = Rational{Int}[11//8, 41//18, 23//8, 27//8, 15//8, 39//8, 91//17, 11//8, 15//16, 21//8]

function feasible(s::Strategy_4CCEB2E1_60, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_61 | Store 1 | tick 30 ──────────────────────────────
# I noticed that my profit spikes in tick 27 and tick 29 were associated with slightly lower prices for pasta and cereal compared to my competitor. Therefore, I will continue to undercut the competitor slightly on these items while keeping other prices relatively stable. This strategy aims to draw in price-sensitive customers, particularly on staple items, while maintaining higher margins on less price-sensitive goods like bacon and coffee. I expect this to boost overall traffic and profit by leveraging loss leaders effectively.
struct Strategy_4CCEB2E1_61 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_61) = Rational{Int}[11//8, 25//11, 23//8, 27//8, 15//8, 39//8, 59//11, 11//8, 13//14, 21//8]

function feasible(s::Strategy_4CCEB2E1_61, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_62 | Store 2 | tick 30 ──────────────────────────────
# I noticed that our competitor has been closely matching our prices, especially for milk, bread, and butter, and they occasionally undercut on coffee and pasta sauce. Our profits have been inconsistent, likely due to these competitive price adjustments. To maximize our cumulative profit, I will slightly lower the price of coffee and pasta sauce to capture more market share, while maintaining competitive prices on other items. I expect this strategy to improve our sales volume and overall profitability, while keeping our competitor from gaining a pricing advantage.
struct Strategy_4CCEB2E1_62 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_62) = Rational{Int}[11//8, 68//29, 23//8, 27//8, 15//8, 39//8, 16//3, 11//8, 15//16, 13//5]

function feasible(s::Strategy_4CCEB2E1_62, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_63 | Store 1 | tick 31 ──────────────────────────────
# I observed that my profits are considerably higher when my prices are slightly below the competitor's for key items such as cereal, coffee, and pasta sauce. Given the fluctuating profits and my competitor's often higher prices, I will undercut their prices selectively to capture more market share without drastically reducing my overall margins. I expect this strategy to stabilize my profits and potentially increase them by drawing in price-sensitive customers who will purchase other items at regular prices.
struct Strategy_4CCEB2E1_63 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_63) = Rational{Int}[11//8, 9//4, 23//8, 27//8, 15//8, 39//8, 101//19, 11//8, 13//14, 47//18]

function feasible(s::Strategy_4CCEB2E1_63, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_64 | Store 2 | tick 31 ──────────────────────────────
# In the past, I've seen little profit fluctuations when maintaining competitive prices, especially on high-demand items like milk and bread. I'm keeping milk's price the same as the competitor to maintain volume sales, but slightly lowering the price of cereal and coffee to undercut them and drive more traffic to the store. For other goods, I will maintain or slightly adjust prices to balance competitiveness and profit margins. This strategy should help increase our market share while keeping profits steady.
struct Strategy_4CCEB2E1_64 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_64) = Rational{Int}[11//8, 43//19, 23//8, 27//8, 15//8, 39//8, 69//13, 11//8, 13//14, 13//5]

function feasible(s::Strategy_4CCEB2E1_64, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_65 | Store 1 | tick 32 ──────────────────────────────
# In recent ticks, our profit has seen fluctuations due to slight price undercuts by the competitor. To regain a competitive edge and maximize profit, I will continue to closely match or slightly undercut the competitor's prices on key items like cereal and coffee, where our competitor has been making adjustments. I will also maintain competitive prices on other high-demand items like pasta and pasta sauce. This strategy aims to attract price-sensitive customers while still maintaining a healthy profit margin on less elastic goods.
struct Strategy_4CCEB2E1_65 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_65) = Rational{Int}[11//8, 38//17, 23//8, 27//8, 15//8, 39//8, 53//10, 11//8, 11//12, 13//5]

function feasible(s::Strategy_4CCEB2E1_65, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_66 | Store 2 | tick 32 ──────────────────────────────
# I observed that our profit tends to spike significantly when our prices are slightly below those of our competitor, especially in high-margin items like coffee and cereal. To maximize our profit, I will set most of our prices just below the competitor's to capture price-sensitive customers. I expect this will increase our market share and improve our profit margins without triggering a price war. This strategy balances maintaining competitive pricing with maximizing profit by leveraging select loss leaders.
struct Strategy_4CCEB2E1_66 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_66) = Rational{Int}[11//8, 38//17, 23//8, 27//8, 15//8, 39//8, 53//10, 11//8, 11//12, 44//17]

function feasible(s::Strategy_4CCEB2E1_66, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_67 | Store 1 | tick 33 ──────────────────────────────
# I noticed that our profits dropped significantly over the past few ticks, likely due to matching our competitor's prices too closely. To differentiate and regain profitability, I will adjust the prices slightly lower on items like cereal and pasta sauce, where we can still maintain a healthy margin. Additionally, I will slightly increase the price of coffee as it's a high-margin item and demand seems less elastic. This strategy aims to entice price-sensitive customers with competitive deals while capturing higher margins from less price-sensitive ones, expecting to boost overall profit.
struct Strategy_4CCEB2E1_67 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_67) = Rational{Int}[11//8, 20//9, 23//8, 27//8, 15//8, 39//8, 91//17, 11//8, 11//12, 31//12]

function feasible(s::Strategy_4CCEB2E1_67, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_68 | Store 2 | tick 33 ──────────────────────────────
# I noticed that my pricing adjustments in the past few ticks, particularly for cereal, coffee, and pasta, have significantly impacted profits. My competitor's prices have been closely aligned with mine, indicating a highly competitive environment. To maximize profits, I will slightly undercut our competitor on high-margin items like coffee and pasta sauce while maintaining competitive prices on staple items like milk and cereal to retain market share. This strategy aims to attract price-sensitive customers and capitalize on high-margin products, expecting an increase in overall profit despite potential lower margins on staples.
struct Strategy_4CCEB2E1_68 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_68) = Rational{Int}[11//8, 29//13, 23//8, 27//8, 15//8, 39//8, 37//7, 11//8, 10//11, 31//12]

function feasible(s::Strategy_4CCEB2E1_68, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_69 | Store 1 | tick 34 ──────────────────────────────
# I notice that our competitor has been slightly lowering prices on cereal and coffee, which might be impacting our profits. To counter this, I will reduce our cereal and coffee prices just below theirs to regain a competitive edge. I will maintain stable prices for other products to ensure ongoing profitability, as these prices have been consistent with their historical performance. This strategy aims to capture more market share in cereal and coffee while maintaining overall profitability through other goods.
struct Strategy_4CCEB2E1_69 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_69) = Rational{Int}[11//8, 31//14, 23//8, 27//8, 15//8, 39//8, 95//18, 11//8, 11//12, 31//12]

function feasible(s::Strategy_4CCEB2E1_69, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_70 | Store 2 | tick 34 ──────────────────────────────
# The recent history suggests that the competitor is slightly undercutting our cereal and coffee prices, which may explain fluctuations in our profits. To counter this, I will further reduce the prices of cereal and coffee slightly to regain competitive advantage. Meanwhile, I will keep other prices stable as they seem to be aligned with the competitor's pricing. I expect this strategy to attract more customers back and stabilize profits.
struct Strategy_4CCEB2E1_70 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_70) = Rational{Int}[11//8, 31//14, 23//8, 27//8, 15//8, 39//8, 95//18, 11//8, 10//11, 31//12]

function feasible(s::Strategy_4CCEB2E1_70, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_71 | Store 1 | tick 35 ──────────────────────────────
# My strategy is to slightly undercut the competitor on key items like cereal and pasta to regain market share while maintaining prices on other goods. Recent profit decline suggests our current pricing isn't competitive enough. By strategically lowering these prices, I aim to attract more customers and boost overall sales volume. This should help recover our profit margins over time despite the initial lower prices.
struct Strategy_4CCEB2E1_71 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_71) = Rational{Int}[11//8, 11//5, 23//8, 27//8, 15//8, 39//8, 95//18, 11//8, 9//10, 18//7]

function feasible(s::Strategy_4CCEB2E1_71, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_72 | Store 2 | tick 35 ──────────────────────────────
# Our pricing strategy has been effective, as evidenced by the significant profit in tick 35. I will maintain our competitive edge by slightly undercutting the competitor on cereal, coffee, and pasta, while keeping other prices stable. This minor adjustment aims to capture more market share in these categories without sacrificing the overall profitability. I expect this approach to sustain our growth trajectory while maintaining customer loyalty.
struct Strategy_4CCEB2E1_72 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_72) = Rational{Int}[11//8, 11//5, 23//8, 27//8, 15//8, 39//8, 58//11, 11//8, 9//10, 31//12]

function feasible(s::Strategy_4CCEB2E1_72, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_73 | Store 1 | tick 36 ──────────────────────────────
# I noticed that our competitor's prices have been closely matching ours, especially for milk, bread, butter, eggs, bacon, and sugar. However, there has been some variation in coffee, cereal, pasta, and pasta_sauce prices. To maximize profit, I will slightly reduce the price of coffee to undercut our competitor and increase our market share, while maintaining competitive pricing for cereal and pasta. I will also slightly increase the price of higher-margin items like pasta_sauce to enhance profitability. This strategy aims to attract customers with competitive prices on popular items while optimizing profit margins on select goods.
struct Strategy_4CCEB2E1_73 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_73) = Rational{Int}[11//8, 35//16, 23//8, 27//8, 15//8, 39//8, 21//4, 11//8, 8//9, 13//5]

function feasible(s::Strategy_4CCEB2E1_73, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_74 | Store 2 | tick 36 ──────────────────────────────
# In recent ticks, our competitor has been closely matching our pricing strategy, particularly on higher-margin items like coffee and pasta sauce. To regain a competitive edge and increase our market share, I will slightly lower prices on key items such as coffee and pasta sauce while maintaining or slightly increasing prices on other goods where we have parity. This strategy aims to attract price-sensitive customers without significantly impacting our overall profit margin. I expect this approach to lead to increased foot traffic and boost our cumulative profit by gaining volume sales.
struct Strategy_4CCEB2E1_74 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_74) = Rational{Int}[11//8, 11//5, 23//8, 27//8, 15//8, 39//8, 21//4, 11//8, 9//10, 18//7]

function feasible(s::Strategy_4CCEB2E1_74, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_75 | Store 1 | tick 37 ──────────────────────────────
# I observed that our prices have been closely matched by the competitor, especially in the recent ticks, suggesting a highly competitive environment. To maximize profit, I will maintain most prices close to the competitor's, but slightly undercut on high-volume items like cereal and pasta to capture more market share. Given past fluctuations, I will stabilize coffee prices as it has shown volatile profits. This strategy aims to increase overall sales volume while maintaining a balanced profit margin.
struct Strategy_4CCEB2E1_75 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_75) = Rational{Int}[11//8, 24//11, 23//8, 27//8, 15//8, 39//8, 21//4, 11//8, 15//17, 31//12]

function feasible(s::Strategy_4CCEB2E1_75, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_76 | Store 2 | tick 37 ──────────────────────────────
# I have observed that my competitor has been slightly decreasing their prices over the past few ticks, particularly for cereal and pasta, likely to capture more market share. I will match or slightly undercut their prices on these items to prevent losing customers. Additionally, I will maintain stable pricing on high-margin items like coffee and bacon to ensure profitability. This balanced approach aims to maintain our competitive edge while securing profitability, anticipating an increase in profit stability.
struct Strategy_4CCEB2E1_76 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_76) = Rational{Int}[11//8, 24//11, 23//8, 27//8, 15//8, 39//8, 21//4, 11//8, 8//9, 18//7]

function feasible(s::Strategy_4CCEB2E1_76, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_77 | Store 1 | tick 38 ──────────────────────────────
# I have noticed that our pricing strategy has generally matched the competitor's prices closely, especially for milk, bread, butter, eggs, bacon, and sugar, which may indicate these are price-sensitive items. Given the drop in profit after tick 36, I believe it could be beneficial to slightly undercut the competitor on cereal and pasta, where we had previously seen a positive profit impact. I will maintain competitive prices on core items while slightly reducing prices on coffee and pasta_sauce to stimulate demand and increase our market share, expecting that this will help increase overall profit.
struct Strategy_4CCEB2E1_77 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_77) = Rational{Int}[11//8, 13//6, 23//8, 27//8, 15//8, 39//8, 26//5, 11//8, 13//15, 28//11]

function feasible(s::Strategy_4CCEB2E1_77, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_78 | Store 2 | tick 38 ──────────────────────────────
# I observed that our pricing strategy has been closely aligned with our competitor's, particularly on key items like milk, bread, and eggs. Since our cumulative profit has generally been positive, I will maintain similar pricing for these items to prevent losing market share. However, I will slightly lower the price of pasta to $0.87 to undercut the competitor and potentially increase sales volume, and I will slightly increase the price of coffee to $5.28 to capitalize on its inelastic demand. I expect this strategy to maintain our market position while driving higher profits on coffee and increasing volume on pasta.
struct Strategy_4CCEB2E1_78 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_78) = Rational{Int}[11//8, 24//11, 23//8, 27//8, 15//8, 39//8, 95//18, 11//8, 13//15, 18//7]

function feasible(s::Strategy_4CCEB2E1_78, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_79 | Store 1 | tick 39 ──────────────────────────────
# Given the recent spike in profits on tick 36 and 39, I aim to maintain a competitive edge by slightly underpricing the competitor on key items like pasta and pasta_sauce where minor price adjustments have previously yielded positive results. I will also keep our prices lower on coffee, as it appears to contribute significantly to profit fluctuations. By maintaining competitive pricing on these items and keeping other prices stable, I anticipate sustaining high profits while attracting cost-sensitive customers.
struct Strategy_4CCEB2E1_79 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_79) = Rational{Int}[11//8, 13//6, 23//8, 27//8, 15//8, 39//8, 83//16, 11//8, 6//7, 33//13]

function feasible(s::Strategy_4CCEB2E1_79, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_80 | Store 2 | tick 39 ──────────────────────────────
# The recent drop in profits suggests that we are losing competitive edge on certain products, especially coffee and pasta. Our competitor has been lowering their coffee and pasta prices, which may have attracted more customers. To regain market share, I will slightly reduce the price of coffee to match our competitor and set a more aggressive price on pasta to undercut them. Additionally, I'll adopt a gradual decrease in cereal prices to capture more of that market, as it seems to be a price-sensitive product. This approach should help us draw back customers and increase our profits without drastically undercutting our margins.
struct Strategy_4CCEB2E1_80 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_80) = Rational{Int}[11//8, 41//19, 23//8, 27//8, 15//8, 39//8, 26//5, 11//8, 11//13, 28//11]

function feasible(s::Strategy_4CCEB2E1_80, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_81 | Store 1 | tick 40 ──────────────────────────────
# In the recent ticks, our competitor has been slightly undercutting our prices on key items like cereal and pasta, which seems to have impacted our profits significantly. To regain competitive advantage, I will lower the prices of cereal and pasta just below our competitor's pricing to capture more market share. For coffee, where we have been competitive but profits have decreased, I will slightly reduce the price to regain customer interest. For other items, I will maintain stable pricing to ensure consistent profit margins. I expect this strategy to temporarily reduce profit per unit but increase overall sales volume and market capture.
struct Strategy_4CCEB2E1_81 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_81) = Rational{Int}[11//8, 28//13, 23//8, 27//8, 15//8, 39//8, 57//11, 11//8, 16//19, 33//13]

function feasible(s::Strategy_4CCEB2E1_81, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_82 | Store 2 | tick 40 ──────────────────────────────
# Given the recent trends, I noticed that our competitor has been slightly undercutting us on a few items such as cereal and pasta_sauce. My strategy is to match or slightly undercut their prices on these specific items to prevent losing market share. Additionally, I will maintain our current pricing on high-performing items like milk and sugar to sustain profit margins. This approach aims to balance competitiveness with profitability, expecting steady sales and profits while deterring the competitor from further aggressive pricing.
struct Strategy_4CCEB2E1_82 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_82) = Rational{Int}[11//8, 41//19, 23//8, 27//8, 15//8, 39//8, 83//16, 11//8, 11//13, 33//13]

function feasible(s::Strategy_4CCEB2E1_82, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_83 | Store 1 | tick 41 ──────────────────────────────
# The competitor's prices have been closely matching ours, indicating a tight pricing competition. Our recent profit spikes suggest that slight undercutting in key products like pasta and cereal has been effective. I will continue this strategy by slightly lowering the price of cereal and pasta to maintain competitive advantage while keeping other prices stable. This should maximize our profit by attracting cost-sensitive customers without significantly reducing margins.
struct Strategy_4CCEB2E1_83 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_83) = Rational{Int}[11//8, 15//7, 23//8, 27//8, 15//8, 39//8, 57//11, 11//8, 5//6, 33//13]

function feasible(s::Strategy_4CCEB2E1_83, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_84 | Store 2 | tick 41 ──────────────────────────────
# I aim to slightly undercut our competitor's prices on selected items to regain market share and boost our store's profit. Our profits have been inconsistent, with zero profits on ticks 39 and 41 when our prices closely matched our competitor's. By lowering prices on items like cereal, pasta, and coffee, where the competition has been most aggressive, I expect to attract price-sensitive customers, while maintaining higher prices on items where demand is less elastic to maximize margins.
struct Strategy_4CCEB2E1_84 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_84) = Rational{Int}[11//8, 15//7, 23//8, 27//8, 15//8, 39//8, 31//6, 11//8, 5//6, 38//15]

function feasible(s::Strategy_4CCEB2E1_84, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_85 | Store 1 | tick 42 ──────────────────────────────
# I observed a pattern of decreasing prices in both our store and our competitor's pricing for key goods. To maximize profit, I want to slightly undercut our competitor on strategic items like pasta and pasta sauce, which have been trending downwards. Additionally, I will maintain stability in other prices where our competitor is not significantly more aggressive. I expect this approach to capture more market share on these items without drastically impacting our overall profit margins.
struct Strategy_4CCEB2E1_85 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_85) = Rational{Int}[11//8, 17//8, 23//8, 27//8, 15//8, 39//8, 31//6, 11//8, 9//11, 53//21]

function feasible(s::Strategy_4CCEB2E1_85, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_86 | Store 2 | tick 42 ──────────────────────────────
# I noticed that our profits have been inconsistent with some zero-profit ticks, likely due to aggressive competitor pricing. My strategy is to slightly undercut the competitor's prices on high-demand items like cereal and pasta to increase sales volume while maintaining or slightly increasing prices on less elastic items like bread and butter. This should attract price-sensitive customers without sacrificing too much margin on staple goods, aiming for a steady profit increase.
struct Strategy_4CCEB2E1_86 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_86) = Rational{Int}[11//8, 17//8, 26//9, 61//18, 15//8, 39//8, 57//11, 11//8, 9//11, 53//21]

function feasible(s::Strategy_4CCEB2E1_86, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_87 | Store 1 | tick 43 ──────────────────────────────
# I have observed that small price adjustments, especially in cereal and pasta, significantly affect our profit margins. Our competitor has been closely matching our prices, particularly for milk and eggs, so I will keep those prices stable. However, I will slightly lower the prices of cereal and pasta to regain any potential lost sales from our competitor. This strategy aims to maintain high profitability while attracting price-sensitive customers, expecting a slight increase in cumulative profit.
struct Strategy_4CCEB2E1_87 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_87) = Rational{Int}[11//8, 21//10, 23//8, 27//8, 15//8, 39//8, 31//6, 11//8, 4//5, 5//2]

function feasible(s::Strategy_4CCEB2E1_87, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_88 | Store 2 | tick 43 ──────────────────────────────
# I have observed that our competitor consistently matches or slightly undercuts our prices, resulting in alternating profit gains and losses for us. To break this pattern and test our competitor's price sensitivity, I will slightly increase the price of goods where demand seems stable, like milk and bread, while introducing a small discount on high-margin items like coffee and bacon to attract more customers. This mixed strategy aims to maintain our competitive edge while optimizing profit on stable goods and increasing volume on high-margin items.
struct Strategy_4CCEB2E1_88 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_88) = Rational{Int}[7//5, 15//7, 29//10, 61//18, 19//10, 63//13, 67//13, 11//8, 9//11, 53//21]

function feasible(s::Strategy_4CCEB2E1_88, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_89 | Store 1 | tick 44 ──────────────────────────────
# I observed that our competitor slightly increased their prices on several items in tick 44. To maintain competitive advantage, I will keep our prices close to theirs while slightly undercutting on key items like milk, cereal, and pasta, where price sensitivity might be higher. This strategy aims to attract price-sensitive customers and boost our sales volume, enhancing overall profit. Given our past performance, this approach should help us maintain or increase market share without significantly sacrificing profit margins.
struct Strategy_4CCEB2E1_89 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_89) = Rational{Int}[11//8, 17//8, 23//8, 27//8, 15//8, 39//8, 98//19, 11//8, 13//16, 88//35]

function feasible(s::Strategy_4CCEB2E1_89, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_90 | Store 2 | tick 44 ──────────────────────────────
# Our competitor has been consistently pricing below us on several key items, which has led to our zero profits recently. Therefore, I will implement a competitive pricing strategy by slightly undercutting their prices on high-demand items like cereal, eggs, and pasta, while maintaining competitive pricing on other goods. This should help us regain market share and boost profits by attracting price-sensitive customers back to our store. I expect this strategy to improve our sales and increase our cumulative profit over time.
struct Strategy_4CCEB2E1_90 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_90) = Rational{Int}[11//8, 23//11, 23//8, 27//8, 15//8, 39//8, 36//7, 11//8, 11//14, 87//35]

function feasible(s::Strategy_4CCEB2E1_90, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_91 | Store 1 | tick 45 ──────────────────────────────
# Given the sharp drop in profit at tick 45, I suspect we have been undercut by the competitor on some key items. Therefore, I will slightly lower the prices on cereal, coffee, and pasta sauce to make them more competitive, as these are areas where the competitor has made changes. For other items, I will maintain prices to ensure stability and avoid unnecessary profit loss. This strategy aims to regain competitiveness and restore profit margins by aligning closely with competitor pricing while maintaining a slight edge on select items.
struct Strategy_4CCEB2E1_91 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_91) = Rational{Int}[11//8, 25//12, 23//8, 27//8, 15//8, 39//8, 67//13, 11//8, 13//16, 5//2]

function feasible(s::Strategy_4CCEB2E1_91, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_92 | Store 2 | tick 45 ──────────────────────────────
# I observed that the competitor adjusted their prices slightly upwards in the last tick, which suggests they are not engaging in aggressive price-cutting. My previous strategy of undercutting them on cereal and pasta led to profits, so I will maintain a slight advantage on these items while keeping other prices competitive. By keeping a few key items like cereal and pasta priced below the competitor, I aim to attract cost-sensitive customers and boost sales volume, maintaining overall profitability.
struct Strategy_4CCEB2E1_92 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_92) = Rational{Int}[11//8, 25//12, 23//8, 27//8, 15//8, 39//8, 36//7, 11//8, 7//9, 52//21]

function feasible(s::Strategy_4CCEB2E1_92, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_93 | Store 1 | tick 46 ──────────────────────────────
# To maximize cumulative profit, I need to regain market share as profits have declined sharply. I will slightly undercut the competitor on key items that are close to or at the same price, such as milk, cereal, and pasta. At the same time, I will keep my price on other goods stable to avoid significant profit loss. This strategy aims to entice price-sensitive customers while maintaining margins on other products, ultimately boosting total sales and profit.
struct Strategy_4CCEB2E1_93 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_93) = Rational{Int}[11//8, 29//14, 23//8, 27//8, 15//8, 39//8, 67//13, 11//8, 10//13, 52//21]

function feasible(s::Strategy_4CCEB2E1_93, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_94 | Store 2 | tick 46 ──────────────────────────────
# In the past few ticks, I observed that my competitor has been closely matching our prices, especially for high-demand items like milk and bread. To break this pattern and potentially capture more market share, I will strategically lower the price of cereal and pasta, which are staple items that can attract cost-sensitive customers. I expect this will increase foot traffic and overall sales volume, which should boost our cumulative profit despite the lower margins on these items.
struct Strategy_4CCEB2E1_94 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_94) = Rational{Int}[11//8, 39//19, 23//8, 27//8, 15//8, 39//8, 36//7, 11//8, 13//17, 52//21]

function feasible(s::Strategy_4CCEB2E1_94, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_95 | Store 1 | tick 47 ──────────────────────────────
# Analyzing the recent pricing trends, it's clear that we're closely aligned with our competitor's prices, which has resulted in zero profit in most recent ticks. To break this pattern and regain market traction, I'll strategically lower prices on goods with higher price elasticity like milk and pasta slightly below our competitor's levels to attract more customers. I will maintain price competitiveness on staple items like eggs and bread, while slightly increasing the price of less elastic goods like coffee to compensate for potential losses. This approach aims to increase customer traffic and overall revenue.
struct Strategy_4CCEB2E1_95 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_95) = Rational{Int}[11//8, 33//16, 23//8, 27//8, 15//8, 39//8, 98//19, 11//8, 3//4, 52//21]

function feasible(s::Strategy_4CCEB2E1_95, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_96 | Store 2 | tick 47 ──────────────────────────────
# I observed that while our prices were mostly aligned with the competitor, the small undercuts on cereal and pasta have driven sales and increased our profit. Thus, I will maintain a slight price advantage on these items while keeping other prices stable to avoid a price war. This strategy aims to continue attracting price-sensitive customers while ensuring profitability on higher-margin items.
struct Strategy_4CCEB2E1_96 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_96) = Rational{Int}[11//8, 47//23, 23//8, 27//8, 15//8, 39//8, 36//7, 11//8, 3//4, 52//21]

function feasible(s::Strategy_4CCEB2E1_96, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_97 | Store 1 | tick 48 ──────────────────────────────
# Over the past few ticks, our profits have been minimal or zero, indicating that our pricing strategy might not be competitive enough. The competitor has consistently dropped their prices slightly below ours, particularly in high-volume goods like cereal and pasta. To regain market share and drive up sales volume, I will slightly reduce prices on key items like cereal and pasta, matching or slightly undercutting the competitor's prices. I anticipate this will improve customer acquisition and increase overall sales, leading to higher cumulative profit over time.
struct Strategy_4CCEB2E1_97 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_97) = Rational{Int}[11//8, 59//29, 23//8, 27//8, 15//8, 39//8, 67//13, 11//8, 14//19, 37//15]

function feasible(s::Strategy_4CCEB2E1_97, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_98 | Store 2 | tick 48 ──────────────────────────────
# I noticed that our profits have been gradually decreasing over the last four ticks, which suggests that our prices might be too high or not competitive enough. Our competitor has been slightly undercutting some of our prices, particularly on cereal and coffee. To counter this, I will slightly lower the prices of these items to match or undercut our competitor, while keeping the rest stable to maintain margins. I expect this strategy to regain some competitive advantage and stabilize or increase our profit margins.
struct Strategy_4CCEB2E1_98 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_98) = Rational{Int}[11//8, 59//29, 23//8, 27//8, 15//8, 39//8, 41//8, 11//8, 3//4, 52//21]

function feasible(s::Strategy_4CCEB2E1_98, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_99 | Store 1 | tick 49 ──────────────────────────────
# In the past ticks, we have successfully increased our profit by incrementally reducing prices on select items to stay competitive, particularly with goods like cereal and pasta. Our competitor seems to be closely matching our pricing strategy, but we managed to maintain a higher profit margin. To continue this momentum, I will further decrease the prices of cereal and pasta slightly to potentially capture a greater market share, while keeping other prices stable to sustain overall profitability. This strategy should help us attract more customers without significantly impacting the profit margins of higher-priced items.
struct Strategy_4CCEB2E1_99 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_99) = Rational{Int}[11//8, 81//40, 23//8, 27//8, 15//8, 39//8, 67//13, 11//8, 8//11, 37//15]

function feasible(s::Strategy_4CCEB2E1_99, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_100 | Store 2 | tick 49 ──────────────────────────────
# To address the significant drop in profit observed in tick 49, I will implement a more aggressive pricing strategy by slightly undercutting the competitor on key items such as cereal and pasta sauce, where competition is keen. This should help us regain market share and increase sales volume. I will also slightly reduce the prices of coffee and pasta to make our offerings more attractive overall, while maintaining prices for other items to ensure profitability on those goods.
struct Strategy_4CCEB2E1_100 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_100) = Rational{Int}[11//8, 81//40, 23//8, 27//8, 15//8, 39//8, 51//10, 11//8, 14//19, 32//13]

function feasible(s::Strategy_4CCEB2E1_100, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_101 | Store 1 | tick 0 ──────────────────────────────
# Since this is the first tick with no historical pricing data from either us or our competitor, my strategy is to set competitive yet profitable prices that are slightly above wholesale costs to attract initial customers while ensuring a margin. I chose to use some goods as loss leaders, such as milk and pasta, to stimulate interest and drive traffic to our store. I expect this approach to establish a customer base and gather data on competitor reactions for future pricing strategies.
struct Strategy_4CCEB2E1_101 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_101) = Rational{Int}[7//5, 21//10, 7//5, 9//5, 13//5, 16//5, 26//5, 9//10, 5//4, 21//10]

function feasible(s::Strategy_4CCEB2E1_101, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_102 | Store 2 | tick 0 ──────────────────────────────
# Since this is the first tick with no prior data, I will adopt a strategy that sets prices slightly above the wholesale costs to establish a baseline for profit margins. This allows us to gauge customer response and competitor pricing strategies in subsequent ticks. I expect this initial approach to provide a balance between being competitive and ensuring profitability.
struct Strategy_4CCEB2E1_102 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_102) = Rational{Int}[7//4, 11//5, 23//17, 2//1, 27//10, 16//5, 11//2, 6//5, 7//5, 23//10]

function feasible(s::Strategy_4CCEB2E1_102, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_103 | Store 1 | tick 1 ──────────────────────────────
# In the previous tick, I set competitive prices which resulted in a decent profit. My competitor has generally priced higher, except for bread, where they undercut me. To maximize my profit while attracting more customers, I will slightly lower my prices on milk and bread to gain market share, as these are common staple products. I will keep my other prices competitive, especially on high-margin items like coffee and bacon, where my prices are already lower or equal to the competitor's. This strategy aims to increase foot traffic while maintaining healthy profit margins.
struct Strategy_4CCEB2E1_103 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_103) = Rational{Int}[23//17, 21//10, 13//10, 9//5, 13//5, 16//5, 26//5, 9//10, 5//4, 21//10]

function feasible(s::Strategy_4CCEB2E1_103, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_104 | Store 2 | tick 1 ──────────────────────────────
# I noticed that in tick 1, our competitor priced many items slightly lower than us, leading to zero profit for our store. To gain a competitive edge, I will strategically lower our prices on key items like milk and pasta, which have high price sensitivity, while maintaining a healthy margin on items like coffee and bacon, which are less price-sensitive. This approach aims to attract more customers with competitive loss leaders while sustaining profit on premium goods. I expect this strategy to increase our customer base and improve overall profitability.
struct Strategy_4CCEB2E1_104 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_104) = Rational{Int}[16//11, 28//13, 13//10, 24//13, 45//17, 13//4, 60//11, 18//19, 6//5, 28//13]

function feasible(s::Strategy_4CCEB2E1_104, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_105 | Store 1 | tick 2 ──────────────────────────────
# In tick 2, I reduced some prices, particularly milk and bread, which led to a significant drop in profit. This suggests that while competitive pricing is important, I must be cautious about undercutting key items too heavily. For tick 3, I will slightly increase prices on milk and bread to improve profit margins while still remaining competitive. I will also maintain or slightly reduce prices on other items to attract customers, using items like sugar as potential loss leaders. Overall, I aim to find a balance between competitive pricing and profit maximization.
struct Strategy_4CCEB2E1_105 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_105) = Rational{Int}[7//5, 21//10, 23//17, 9//5, 13//5, 16//5, 26//5, 11//13, 6//5, 21//10]

function feasible(s::Strategy_4CCEB2E1_105, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_106 | Store 2 | tick 2 ──────────────────────────────
# In the previous ticks, I tried to undercut the competitor's prices on most items, but this strategy has not yet yielded a profit. The competitor has consistently maintained lower prices, suggesting they might be pursuing a volume-based strategy. This time, I will match or slightly undercut their prices on key items like milk, cereal, and pasta to compete directly, while slightly increasing prices on less price-sensitive items like coffee and bacon to improve margins. I aim to attract price-sensitive customers on staple goods while maintaining profitability on specialty items, hoping this mix will maximize my profit.
struct Strategy_4CCEB2E1_106 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_106) = Rational{Int}[23//17, 21//10, 13//10, 7//4, 28//11, 33//10, 53//10, 9//10, 6//5, 21//10]

function feasible(s::Strategy_4CCEB2E1_106, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_107 | Store 1 | tick 3 ──────────────────────────────
# In recent ticks, our profits have been declining, indicating that we may be losing competitive edge. I will slightly undercut the competitor's prices on key items like milk, bread, and coffee, where price adjustments can shift consumer preference. Additionally, I will use sugar as a loss leader to entice customers, as it has a low wholesale cost. This strategy aims to increase foot traffic and overall sales volume to improve our profits.
struct Strategy_4CCEB2E1_107 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_107) = Rational{Int}[13//10, 21//10, 5//4, 9//5, 13//5, 16//5, 67//13, 4//5, 6//5, 21//10]

function feasible(s::Strategy_4CCEB2E1_107, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_108 | Store 2 | tick 3 ──────────────────────────────
# In the last tick, we observed a significant improvement in profit which suggests that our pricing strategy is becoming more competitive. Our competitor has been consistent with their pricing, offering slightly lower prices on some key items. To maintain our competitive edge and continue growing our profit, I will slightly lower the prices of our high-margin items like bacon and coffee while remaining competitive on staple goods like milk and bread. This should attract price-sensitive customers while maintaining our profitability.
struct Strategy_4CCEB2E1_108 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_108) = Rational{Int}[7//5, 21//10, 13//10, 7//4, 28//11, 41//13, 21//4, 9//10, 15//13, 21//10]

function feasible(s::Strategy_4CCEB2E1_108, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_109 | Store 1 | tick 4 ──────────────────────────────
# To regain profitability, I will slightly raise prices where I am undercutting the competitor, especially on milk and bread, while maintaining competitive pricing on popular items like sugar and pasta. This will help improve our margins while attempting to capture market share on high-demand goods by remaining price competitive. Given the competitor's pricing trends, I aim to balance between competitive pricing and margin improvement to boost our cumulative profit.
struct Strategy_4CCEB2E1_109 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_109) = Rational{Int}[11//8, 21//10, 23//18, 16//9, 31//12, 35//11, 57//11, 15//17, 13//11, 25//12]

function feasible(s::Strategy_4CCEB2E1_109, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_110 | Store 2 | tick 4 ──────────────────────────────
# Analyzing the competitor's pricing strategy, they tend to price lower to capture market share. To remain competitive, I'll focus on strategic pricing by slightly undercutting their prices on key items like milk and sugar, which are frequently purchased. This mixed strategy aims to maintain attractive prices on staples while keeping others at a profitable margin. I expect this to sustain our current customer base while potentially drawing in new ones from the competitor.
struct Strategy_4CCEB2E1_110 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_110) = Rational{Int}[5//4, 21//10, 13//10, 7//4, 28//11, 41//13, 67//13, 11//13, 15//13, 21//10]

function feasible(s::Strategy_4CCEB2E1_110, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_111 | Store 1 | tick 5 ──────────────────────────────
# To regain profitability, I need to adopt a more competitive pricing strategy while ensuring some margin on key products. The competitor has consistently priced milk, sugar, and pasta lower than us, which might be impacting our sales. I'll slightly undercut their prices on these items to regain market share. For higher-margin products like coffee and butter, I will maintain competitive but profitable prices. By strategically lowering prices where we can afford losses and maintaining margins on others, I aim to balance increasing volume with profitability.
struct Strategy_4CCEB2E1_111 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_111) = Rational{Int}[6//5, 21//10, 13//10, 16//9, 28//11, 41//13, 57//11, 4//5, 11//10, 25//12]

function feasible(s::Strategy_4CCEB2E1_111, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_112 | Store 2 | tick 5 ──────────────────────────────
# Given the recent negative profit, I need to adjust our strategy to better compete with Store 1. I will slightly increase the prices of milk and bread since they were underpriced compared to the competitor, which likely led to the loss. For items like butter and coffee, I will match the competitor's prices to regain competitive parity. I expect this balanced approach to stabilize profits while preventing further losses.
struct Strategy_4CCEB2E1_112 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_112) = Rational{Int}[11//8, 21//10, 23//18, 16//9, 31//12, 35//11, 57//11, 15//17, 13//11, 25//12]

function feasible(s::Strategy_4CCEB2E1_112, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_113 | Store 1 | tick 6 ──────────────────────────────
# To recover from the recent losses and negative profit, I will adjust my prices to be more competitive yet still above the wholesale cost to ensure positive margins. I noticed that my competitor's prices are occasionally higher, so I will slightly undercut their prices on key items such as milk and bread while maintaining similar prices on others to attract more customers. This strategy should increase sales volume and improve profitability.
struct Strategy_4CCEB2E1_113 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_113) = Rational{Int}[15//11, 21//10, 14//11, 30//17, 33//13, 19//6, 31//6, 13//15, 7//6, 29//14]

function feasible(s::Strategy_4CCEB2E1_113, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_114 | Store 2 | tick 6 ──────────────────────────────
# I observed that our recent pricing adjustments have not consistently led to increased profits, indicating that our prices might be too close to our competitor's or not leveraging competitive advantages. To address this, I will implement a slight undercutting strategy on key items like milk and sugar where our competitor has recently lowered prices. I will maintain competitive pricing on other items to maintain market share, aiming to increase foot traffic and boost overall sales volume while maintaining margins on high-value items like coffee.
struct Strategy_4CCEB2E1_114 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_114) = Rational{Int}[13//11, 21//10, 23//18, 9//5, 28//11, 35//11, 26//5, 4//5, 15//13, 25//12]

function feasible(s::Strategy_4CCEB2E1_114, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_115 | Store 1 | tick 7 ──────────────────────────────
# Given the history of erratic profits, it seems crucial to stabilize our pricing strategy while being competitive. I noticed that our competitor prices some products slightly lower than ours, contributing to our negative profits. I am reducing the prices of key items like milk, bread, and pasta slightly below the competitor to attract more customers while maintaining competitive prices for other goods. This strategy should help increase foot traffic and overall sales volume, potentially improving our cumulative profit over time.
struct Strategy_4CCEB2E1_115 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_115) = Rational{Int}[7//6, 21//10, 24//19, 7//4, 38//15, 22//7, 98//19, 11//14, 8//7, 33//16]

function feasible(s::Strategy_4CCEB2E1_115, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_116 | Store 2 | tick 7 ──────────────────────────────
# My recent pricing strategy has been underperforming, leading to losses. I noticed that the competitor has been slightly underpricing me, capturing market share. To counter this, I will adopt a more competitive pricing strategy by slightly lowering my prices on key items such as milk, bread, eggs, and pasta. This should help regain customer interest and improve my profit margins by attracting cost-conscious shoppers. I expect this to slightly reduce losses and stabilize profit while maintaining competitiveness in the market.
struct Strategy_4CCEB2E1_116 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_116) = Rational{Int}[15//13, 21//10, 5//4, 9//5, 5//2, 41//13, 67//13, 11//13, 11//10, 39//19]

function feasible(s::Strategy_4CCEB2E1_116, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_117 | Store 1 | tick 8 ──────────────────────────────
# Given my recent losses, I need to adjust my pricing strategy to be more competitive while still aiming for profitability. I will set my prices slightly below my competitor's on key items like milk, bread, and pasta to attract more customers. For items where demand is less price-sensitive, like coffee and butter, I'll maintain prices closer to their levels. This strategy should increase customer traffic and boost overall sales, while minimizing the risk of another significant loss.
struct Strategy_4CCEB2E1_117 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_117) = Rational{Int}[8//7, 21//10, 21//17, 23//13, 53//21, 25//8, 98//19, 16//19, 9//8, 39//19]

function feasible(s::Strategy_4CCEB2E1_117, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_118 | Store 2 | tick 8 ──────────────────────────────
# To improve our profit margins, I will implement a strategy to slightly undercut our competitor on key products while maintaining competitive pricing on others. Observing that our competitor is pricing milk very close to cost, I will slightly reduce our milk price to attract customers. For other popular items like eggs and sugar, I will keep our prices just below the competitor's to gain market share. I expect this strategy will increase store traffic and sales, thus improving our overall profitability.
struct Strategy_4CCEB2E1_118 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_118) = Rational{Int}[22//19, 21//10, 9//7, 23//13, 53//21, 25//8, 36//7, 7//9, 9//8, 29//14]

function feasible(s::Strategy_4CCEB2E1_118, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_119 | Store 1 | tick 9 ──────────────────────────────
# Our recent pricing strategy has led to considerable losses, indicating that our prices are too low to cover costs or we are not competitive enough. Examining the competitor's prices, I see that they slightly undercut us on key items like milk and sugar, while matching or exceeding us on others. To regain profitability, I will slightly increase prices on milk, bread, and sugar to be more competitive and at least cover costs, while maintaining competitive prices on higher-margin items like coffee and bacon to attract customers. This strategy aims to stabilize our profits by balancing competitive pricing with cost coverage.
struct Strategy_4CCEB2E1_119 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_119) = Rational{Int}[5//4, 21//10, 13//10, 16//9, 28//11, 35//11, 57//11, 9//10, 15//13, 25//12]

function feasible(s::Strategy_4CCEB2E1_119, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_120 | Store 2 | tick 9 ──────────────────────────────
# To improve our cumulative profit, I aim to align closely with our competitor's pricing, especially for high-demand items like milk and bread, where they have been more aggressive. By slightly undercutting them on key items while maintaining competitive prices on others, we can attract price-sensitive customers without significantly sacrificing margin. I expect this strategy to increase our sales volume, improving our overall profit despite the lower individual margins.
struct Strategy_4CCEB2E1_120 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_120) = Rational{Int}[9//8, 21//10, 5//4, 30//17, 5//2, 31//10, 67//13, 5//6, 10//9, 33//16]

function feasible(s::Strategy_4CCEB2E1_120, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_121 | Store 1 | tick 10 ──────────────────────────────
# To maximize our cumulative profit, I will adopt a mixed strategy of competitive pricing and strategic discounting on select items. Given our recent performance, it's clear that our pricing needs to be more competitive, especially on key items where our competitor is consistently undercutting us, like milk and pasta. I will slightly lower prices on these and a few other high-demand goods to regain market share, while maintaining or slightly increasing prices on items where we've consistently matched or beaten the competitor, like cereal and pasta_sauce. This approach should help balance volume with margin and improve our profit trajectory.
struct Strategy_4CCEB2E1_121 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_121) = Rational{Int}[9//8, 17//8, 23//18, 16//9, 88//35, 28//9, 31//6, 13//16, 12//11, 23//11]

function feasible(s::Strategy_4CCEB2E1_121, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_122 | Store 2 | tick 10 ──────────────────────────────
# I noticed that our recent pricing strategy has not been effective, leading to significant losses. Our prices have been consistently lower than our competitor's, yet we are not achieving profitability. This suggests that our reduced prices are not increasing sales volume enough to offset the lower margins. Therefore, I will align our prices more closely with the competitor's while maintaining competitive pricing on key items like milk and eggs to attract customers. I expect this will improve our profit margins without losing too much market share.
struct Strategy_4CCEB2E1_122 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_122) = Rational{Int}[16//13, 21//10, 9//7, 16//9, 33//13, 41//13, 31//6, 11//13, 8//7, 29//14]

function feasible(s::Strategy_4CCEB2E1_122, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_123 | Store 1 | tick 11 ──────────────────────────────
# In recent ticks, I have observed significant losses, indicating that our prices may not be competitive enough or are too high to sustain our market share. The competitor has been pricing milk, sugar, and pasta lower than us, which could be contributing to our losses. I will slightly reduce prices on these key items to undercut the competitor, aiming to regain customer interest and boost sales volume. By keeping other prices stable and slightly increasing on high-margin items like coffee and pasta sauce, I expect to attract price-sensitive customers while maintaining margin on premium products.
struct Strategy_4CCEB2E1_123 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_123) = Rational{Int}[11//10, 21//10, 9//7, 16//9, 53//21, 25//8, 83//16, 11//14, 13//12, 21//10]

function feasible(s::Strategy_4CCEB2E1_123, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_124 | Store 2 | tick 11 ──────────────────────────────
# In the last tick, we saw no profit, indicating that our pricing isn't sufficiently competitive. Our competitor recently undercut us on milk, eggs, and sugar. I'll strategically lower prices on these items to regain market share while slightly increasing prices on high-margin items like coffee and pasta_sauce to offset potential losses. I expect this strategy to attract more customers and improve our overall profitability as we balance competitive pricing with profit margins.
struct Strategy_4CCEB2E1_124 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_124) = Rational{Int}[11//10, 17//8, 14//11, 9//5, 52//21, 22//7, 83//16, 4//5, 9//8, 21//10]

function feasible(s::Strategy_4CCEB2E1_124, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_125 | Store 1 | tick 12 ──────────────────────────────
# Our current pricing strategy appears to be leading to consistent losses, likely due to being undercut by our competitor on several key items. In response, I will slightly increase prices on items where we have a competitive edge and lower prices on others to attract more customers, particularly focusing on high-volume items like milk, bread, and sugar as loss leaders to drive traffic. This should help us regain market share while maintaining a sustainable profit margin on other goods.
struct Strategy_4CCEB2E1_125 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_125) = Rational{Int}[20//19, 19//9, 11//9, 30//17, 5//2, 25//8, 57//11, 7//9, 15//14, 23//11]

function feasible(s::Strategy_4CCEB2E1_125, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_126 | Store 2 | tick 12 ──────────────────────────────
# I noticed that our prices have been very close to the competitor's, yet our profits remain zero or negative. To increase market share and boost sales volume, I will slightly undercut the competitor on key items like milk, bread, and eggs, which are essentials and likely to drive foot traffic. I expect this strategy to attract more customers to our store, leading to higher overall sales and eventually improved profitability.
struct Strategy_4CCEB2E1_126 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_126) = Rational{Int}[12//11, 21//10, 21//17, 23//13, 87//35, 25//8, 57//11, 11//14, 15//14, 23//11]

function feasible(s::Strategy_4CCEB2E1_126, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_127 | Store 1 | tick 13 ──────────────────────────────
# To reverse our recent trend of negative profits, I will slightly undercut the competitor on key items where their prices are close to ours, aiming to capture more market share. For milk, our price will be lower than the competitor's, as this is a staple that can drive customer traffic. I will also adjust the prices of cereal, bread, and pasta to be more competitive while maintaining some margin. For high-margin items like coffee and bacon, I will keep prices steady to maximize profit. I expect this strategy to increase our sales volume and improve overall profitability.
struct Strategy_4CCEB2E1_127 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_127) = Rational{Int}[13//12, 23//11, 11//9, 23//13, 88//35, 25//8, 57//11, 13//17, 17//16, 25//12]

function feasible(s::Strategy_4CCEB2E1_127, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_128 | Store 2 | tick 13 ──────────────────────────────
# Our recent pricing strategy has yielded zero profits, indicating a need for adjustment. The competitor's prices are slightly lower for some items, suggesting price sensitivity in the market. I will strategically lower prices on key items like milk and eggs to regain customer interest and drive traffic, using them as loss leaders, while maintaining competitive but profitable prices on other goods. This approach aims to increase volume sales and overall profit by attracting customers with core staple items, expecting a positive change in profit margins.
struct Strategy_4CCEB2E1_128 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_128) = Rational{Int}[20//19, 21//10, 24//19, 16//9, 27//11, 25//8, 57//11, 4//5, 13//12, 25//12]

function feasible(s::Strategy_4CCEB2E1_128, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_129 | Store 1 | tick 14 ──────────────────────────────
# Our recent strategy of lowering prices to match or undercut the competitor has not resulted in profitability, indicating we may be underpricing. We should adjust our prices slightly upward while ensuring they are competitive, particularly for goods with higher wholesale costs like bacon and coffee, where our margins are thin. By raising prices moderately, we aim to improve profit margins without losing too much market share, expecting to reach a balance where increased revenue offsets any potential loss in sales volume.
struct Strategy_4CCEB2E1_129 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_129) = Rational{Int}[15//13, 19//9, 24//19, 25//14, 38//15, 22//7, 26//5, 11//13, 11//10, 21//10]

function feasible(s::Strategy_4CCEB2E1_129, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_130 | Store 2 | tick 14 ──────────────────────────────
# Given our recent losses, it's important to adjust our strategy to focus on improving profitability while staying competitive. I noticed that our competitor's prices are consistently slightly higher than ours, indicating a willingness to maintain a premium position. To counter this, I will slightly increase our prices on select items where we've been undercutting their prices, like milk and bread, while maintaining or lowering prices on high-margin items like coffee and bacon to attract value-conscious customers. This balanced approach aims to increase our profit margin while still capturing market share from budget-focused shoppers.
struct Strategy_4CCEB2E1_130 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_130) = Rational{Int}[13//12, 19//9, 16//13, 23//13, 5//2, 31//10, 98//19, 11//14, 12//11, 29//14]

function feasible(s::Strategy_4CCEB2E1_130, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_131 | Store 1 | tick 15 ──────────────────────────────
# To improve profitability, I will slightly reduce prices on high-margin items like bacon and coffee to increase volume while staying competitive. In contrast, I will focus on undercutting the competitor on bread and pasta sauce to draw more customers. The competitor's price adjustments show they are sensitive to competition, so strategic undercutting could gain us market share and boost overall profit.
struct Strategy_4CCEB2E1_131 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_131) = Rational{Int}[11//10, 21//10, 17//14, 30//17, 5//2, 37//12, 67//13, 4//5, 20//19, 33//16]

function feasible(s::Strategy_4CCEB2E1_131, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_132 | Store 2 | tick 15 ──────────────────────────────
# To recover from recent losses, I will focus on a competitive pricing strategy to attract customers by undercutting the competitor on key staple items while maintaining profitability on high-margin goods. I will lower the prices of milk, bread, and pasta below the competitor's to drive traffic, while adjusting prices slightly above their level for high-margin items like coffee and bacon, which are less price-sensitive. This mixed strategy aims to increase customer volume and overall sales, minimizing losses and working towards positive profit margins.
struct Strategy_4CCEB2E1_132 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_132) = Rational{Int}[13//12, 23//11, 11//9, 23//13, 87//35, 60//19, 47//9, 7//9, 20//19, 25//12]

function feasible(s::Strategy_4CCEB2E1_132, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_133 | Store 1 | tick 16 ──────────────────────────────
# I have observed that our competitor's pricing is generally slightly higher than ours, yet we have been incurring losses, indicating we may need to adjust our strategy. To increase market share and ultimately improve profits, I will lower prices on key staples such as milk and bread, which are likely to attract more foot traffic to our store. I will also slightly reduce prices on high-margin items like coffee and pasta sauce to remain competitive while maintaining margins. This strategy should enhance customer loyalty and drive sales volume, leading to improved profitability over time.
struct Strategy_4CCEB2E1_133 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_133) = Rational{Int}[20//19, 23//11, 6//5, 7//4, 87//35, 34//11, 51//10, 3//4, 24//23, 39//19]

function feasible(s::Strategy_4CCEB2E1_133, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_134 | Store 2 | tick 16 ──────────────────────────────
# Our store has been experiencing consistent losses, likely due to being undercut by our competitor on key items. To regain market share and improve profitability, I will slightly reduce prices on high-margin items like coffee and bacon to attract more customers, while maintaining competitive pricing on essentials such as milk and bread. I aim to leverage these competitive prices to increase sales volume and thereby increase our cumulative profit over time.
struct Strategy_4CCEB2E1_134 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_134) = Rational{Int}[20//19, 25//12, 6//5, 7//4, 37//15, 31//10, 67//13, 10//13, 24//23, 39//19]

function feasible(s::Strategy_4CCEB2E1_134, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_135 | Store 1 | tick 17 ──────────────────────────────
# To improve our profitability, I will slightly undercut the competitor on key items like milk, cereal, and bread, which are staple products with high turnover. This should attract more customers into our store. I will maintain competitive pricing on other items but ensure they remain profitable. I expect this strategy to increase our volume of sales and thereby improve our overall profit margins.
struct Strategy_4CCEB2E1_135 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_135) = Rational{Int}[24//23, 29//14, 19//16, 30//17, 52//21, 34//11, 41//8, 14//19, 30//29, 47//23]

function feasible(s::Strategy_4CCEB2E1_135, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_136 | Store 2 | tick 17 ──────────────────────────────
# Our recent pricing strategy has been resulting in consistent losses, suggesting that our prices might be too high or not competitive enough. To counter this, I will adopt a more aggressive pricing strategy by slightly undercutting or matching the competitor's prices on key items, especially those with higher consumer demand like milk, eggs, and bacon. This approach should help regain market share and increase sales volume, potentially improving our profit margin despite narrower per-unit profits.
struct Strategy_4CCEB2E1_136 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_136) = Rational{Int}[24//23, 29//14, 19//16, 33//19, 32//13, 37//12, 51//10, 14//19, 30//29, 47//23]

function feasible(s::Strategy_4CCEB2E1_136, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_137 | Store 1 | tick 18 ──────────────────────────────
# I have noticed that our prices have been slightly higher than or equal to our competitor's prices, which has resulted in consistent losses. To regain market share and increase sales volume, I will implement a temporary aggressive pricing strategy by undercutting our competitor's prices slightly on key items such as milk, eggs, and pasta, which are highly price-sensitive. This should attract more customers, increase foot traffic, and potentially lead to higher sales of other items, thereby improving our overall profit despite some items being sold at a loss.
struct Strategy_4CCEB2E1_137 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_137) = Rational{Int}[30//29, 33//16, 13//11, 19//11, 27//11, 43//14, 56//11, 8//11, 41//40, 59//29]

function feasible(s::Strategy_4CCEB2E1_137, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_138 | Store 2 | tick 18 ──────────────────────────────
# Our current pricing strategy is leading to significant losses, especially in the last tick. I will increase prices slightly on goods where we have been undercutting the competitor, such as milk and eggs, to reduce loss per unit. Additionally, I will keep competitive prices on high-margin items like coffee and bacon, aligning them closer to the competitor's prices to maintain market share. This approach aims to stabilize profits while remaining competitive in the market.
struct Strategy_4CCEB2E1_138 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_138) = Rational{Int}[17//16, 23//11, 17//14, 30//17, 52//21, 28//9, 36//7, 13//17, 17//16, 33//16]

function feasible(s::Strategy_4CCEB2E1_138, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_139 | Store 1 | tick 19 ──────────────────────────────
# Over the last few ticks, my strategy of undercutting the competitor's prices has resulted in significant losses. I need to adjust my approach to improve profitability. I will increase prices slightly to be more aligned with the competitor, while still remaining competitive, particularly focusing on items where the competitor has consistently priced higher. I expect this change to reduce losses and improve profit margins by leveraging perceived value while staying competitive in key categories.
struct Strategy_4CCEB2E1_139 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_139) = Rational{Int}[17//16, 25//12, 6//5, 7//4, 87//35, 31//10, 36//7, 13//17, 17//16, 33//16]

function feasible(s::Strategy_4CCEB2E1_139, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_140 | Store 2 | tick 19 ──────────────────────────────
# Over the past few ticks, my store has struggled with profitability, despite competitive pricing. Competitor prices have slightly undercut mine, impacting my store's ability to attract customers. To address this, I will implement a slight price reduction strategy, ensuring my prices are consistently lower than the competitor's. This should help increase customer traffic and potentially recover losses by boosting volume sales. Additionally, I will use coffee and eggs as loss leaders, as they have relatively high wholesale costs and are popular items, to attract more customers to the store.
struct Strategy_4CCEB2E1_140 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_140) = Rational{Int}[41//40, 39//19, 13//11, 31//18, 22//9, 49//16, 5//1, 13//18, 68//67, 81//40]

function feasible(s::Strategy_4CCEB2E1_140, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_141 | Store 1 | tick 20 ──────────────────────────────
# Our recent profits have been fluctuating, with tick 20 resulting in a break-even. The competitor has slightly undercut us in the last tick, particularly on milk, coffee, and pasta sauce. To regain a competitive edge and drive sales volume, I will slightly lower prices on high-margin items like bacon and coffee, while maintaining close competition on staples such as milk and bread. This strategy aims to increase our customer base without significantly compromising our margins, and to potentially reclaim some lost market share.
struct Strategy_4CCEB2E1_141 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_141) = Rational{Int}[41//40, 39//19, 7//6, 12//7, 17//7, 58//19, 96//19, 5//7, 1//1, 135//67]

function feasible(s::Strategy_4CCEB2E1_141, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_142 | Store 2 | tick 20 ──────────────────────────────
# Our recent pricing strategy has led to significant losses, particularly in the latest tick. The competitor's pricing is consistently close to ours, and their profits are likely better, given the stability in their pricing. To regain competitive advantage and attract more customers, I will slightly undercut the competitor's prices on key items such as milk, eggs, and coffee, where our losses have been notable. I expect this will boost our sales volume and help stabilize our profitability over time.
struct Strategy_4CCEB2E1_142 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_142) = Rational{Int}[68//67, 29//14, 7//6, 12//7, 17//7, 58//19, 334//67, 5//7, 1//1, 135//67]

function feasible(s::Strategy_4CCEB2E1_142, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_143 | Store 1 | tick 21 ──────────────────────────────
# Our recent pricing strategy has consistently resulted in significant losses, even when we attempted to marginally undercut our competitor. Given the tight competition, I will experiment with a more aggressive strategy by setting prices for certain key items slightly below wholesale costs to attract more customers, specifically focusing on high-draw items like milk, eggs, and coffee. This temporary loss-leader approach aims to increase store traffic and cross-sell other products at a profit, with the expectation of improving cumulative profits in future ticks.
struct Strategy_4CCEB2E1_143 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_143) = Rational{Int}[1//1, 33//16, 7//6, 31//18, 12//5, 37//12, 94//19, 7//10, 68//67, 81//40]

function feasible(s::Strategy_4CCEB2E1_143, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_144 | Store 2 | tick 21 ──────────────────────────────
# Our recent pricing strategy has resulted in negative profits, indicating that our prices might not be competitive enough or are failing to attract sufficient sales volume. Our competitor's prices are slightly higher for most items, but they may have better marketing or customer loyalty. I will implement a combination of slightly undercutting competitor prices and using loss leaders to draw customers in. By strategically setting competitive prices on high-demand items and slightly reducing the price of others, I expect to increase customer flow and boost overall sales volume, improving our profit margin.
struct Strategy_4CCEB2E1_144 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_144) = Rational{Int}[1//1, 47//23, 22//19, 17//10, 29//12, 70//23, 94//19, 7//10, 66//67, 2//1]

function feasible(s::Strategy_4CCEB2E1_144, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_145 | Store 1 | tick 22 ──────────────────────────────
# I notice that our competitor has been slightly undercutting us in recent ticks, which has likely contributed to our negative profits. To counter this, I will set our prices slightly lower than theirs on key products like milk, eggs, and pasta, which are high demand items. This strategy aims to attract price-sensitive customers back to our store, while keeping other prices competitive to ensure we don't lose further profit. I expect this approach to improve our sales volume and gradually boost our profitability.
struct Strategy_4CCEB2E1_145 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_145) = Rational{Int}[66//67, 59//29, 15//13, 22//13, 43//18, 88//29, 79//16, 9//13, 39//40, 2//1]

function feasible(s::Strategy_4CCEB2E1_145, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_146 | Store 2 | tick 22 ──────────────────────────────
# Our recent pricing strategy has resulted in significant losses, indicating that our prices may be too low given our cost structure. To improve profitability, I will slightly increase prices on key items like coffee and bacon, which have shown potential for margin improvement. Additionally, I will align other prices more closely with our competitor's, avoiding undercutting that would lead to further losses. I expect this shift to stabilize our profits while maintaining competitive positioning.
struct Strategy_4CCEB2E1_146 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_146) = Rational{Int}[41//40, 25//12, 13//11, 33//19, 22//9, 34//11, 51//10, 3//4, 24//23, 39//19]

function feasible(s::Strategy_4CCEB2E1_146, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_147 | Store 1 | tick 23 ──────────────────────────────
# Our recent pricing strategy has led to significant losses, suggesting that our prices are not competitive enough against our competitor. To recover, I will slightly undercut the competitor's pricing across all products to regain market share. By doing so, I anticipate increasing our sales volume, which should help boost our overall profit despite lower margins. This approach aims to stabilize our financial performance by attracting more customers, while also monitoring the impact closely to adjust if necessary.
struct Strategy_4CCEB2E1_147 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_147) = Rational{Int}[68//67, 29//14, 7//6, 17//10, 17//7, 70//23, 61//12, 14//19, 30//29, 47//23]

function feasible(s::Strategy_4CCEB2E1_147, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_148 | Store 2 | tick 23 ──────────────────────────────
# I noticed that our competitor has been steadily reducing their prices, likely trying to capture more market share. Our recent prices have not been competitive enough, leading to negative profits. To counteract this, I will lower our prices slightly below the competitor's current prices on key items to regain some of the lost market share and drive sales volume. By being aggressive on pricing, particularly on staple items, I expect to improve our store's cumulative profit in the long run, even if it means short-term reductions in margin.
struct Strategy_4CCEB2E1_148 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_148) = Rational{Int}[39//40, 81//40, 8//7, 32//19, 19//8, 121//40, 69//14, 13//19, 22//23, 133//67]

function feasible(s::Strategy_4CCEB2E1_148, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_149 | Store 1 | tick 24 ──────────────────────────────
# In recent ticks, my store's profits have been erratic, with significant losses and occasional break-evens. It appears our prices have been closely mirroring those of the competitor, but without yielding positive profit margins. To address this, I will slightly undercut the competitor's prices on high-margin items like bacon, coffee, and eggs to drive volume while maintaining competitive prices for staples like milk and bread. I expect this strategy to increase my market share without significantly impacting margins, aiming for a net positive profit outcome.
struct Strategy_4CCEB2E1_149 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_149) = Rational{Int}[18//19, 47//23, 9//8, 32//19, 40//17, 119//40, 49//10, 2//3, 18//19, 79//40]

function feasible(s::Strategy_4CCEB2E1_149, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_150 | Store 2 | tick 24 ──────────────────────────────
# In the previous ticks, I've observed that pricing slightly below the competitor did not yield a positive profit. To improve our profit margins, I will adopt a strategy of matching or slightly exceeding the competitor's prices on key products like milk and eggs, which have shown to be sensitive to pricing changes. I will maintain competitive pricing on high-demand items such as coffee and sugar, while slightly increasing prices on items where we have previously been underpriced relative to the competitor. I expect this strategy to attract price-sensitive customers while improving our profit margins.
struct Strategy_4CCEB2E1_150 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_150) = Rational{Int}[41//40, 29//14, 13//11, 31//18, 17//7, 58//19, 5//1, 13//18, 41//40, 59//29]

function feasible(s::Strategy_4CCEB2E1_150, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_151 | Store 1 | tick 25 ──────────────────────────────
# I have observed that our competitor has been slightly undercutting or matching our prices, leading to significant losses in recent ticks. To improve our profitability, I will adopt a slight undercutting strategy on key products like milk, bread, and pasta, while maintaining competitive pricing on other items. This should attract more customers, increase our sales volume, and improve our profit margins. I expect this approach to better position us against the competitor and gradually recover our profits.
struct Strategy_4CCEB2E1_151 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_151) = Rational{Int}[39//40, 33//16, 9//8, 32//19, 26//11, 200//67, 54//11, 13//19, 22//23, 133//67]

function feasible(s::Strategy_4CCEB2E1_151, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_152 | Store 2 | tick 25 ──────────────────────────────
# Our recent pricing strategies have resulted in zero or negative profits, indicating that we need to adjust our approach. I have decided to lower prices slightly across most products, focusing on competitive pricing for high-demand items like milk, eggs, and pasta where the competitor has been more aggressive. By undercutting their prices slightly on these key items, I aim to attract more customers while maintaining higher margins on products like coffee and bacon. This strategy is intended to increase foot traffic and improve our overall profit through increased sales volume.
struct Strategy_4CCEB2E1_152 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_152) = Rational{Int}[15//16, 81//40, 9//8, 5//3, 68//29, 3//1, 61//12, 19//29, 18//19, 57//29]

function feasible(s::Strategy_4CCEB2E1_152, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_153 | Store 1 | tick 26 ──────────────────────────────
# Our recent strategy of undercutting the competitor has led to significant losses, indicating that our prices may be too low to sustain profitability. Therefore, I propose a strategy of slightly increasing prices on key items where we have been undercutting, while maintaining competitive pricing on others. By aligning closely with the competitor's prices, we can stabilize our profit margins and avoid a price war, allowing us to potentially capture some market share through perceived quality or loyalty. I expect this to improve our profit without drastically losing sales volume.
struct Strategy_4CCEB2E1_153 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_153) = Rational{Int}[22//23, 59//29, 9//8, 22//13, 40//17, 202//67, 5//1, 9//13, 39//40, 135//67]

function feasible(s::Strategy_4CCEB2E1_153, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_154 | Store 2 | tick 26 ──────────────────────────────
# To maximize cumulative profit, I will adopt a competitive pricing strategy by slightly undercutting the competitor on key items while maintaining a margin on others. Previously, we've seen profit losses when prices were too low, indicating unsustainable pricing. This time, I'll set milk and bacon as loss leaders to attract customers, as they are common staples. By slightly undercutting the competitor on these items and maintaining prices on higher-margin goods like coffee and pasta sauce, I aim to regain market share and improve profit margins.
struct Strategy_4CCEB2E1_154 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_154) = Rational{Int}[13//14, 39//19, 9//8, 22//13, 40//17, 86//29, 5//1, 9//13, 28//29, 135//67]

function feasible(s::Strategy_4CCEB2E1_154, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_155 | Store 1 | tick 27 ──────────────────────────────
# To improve our profitability, I will slightly undercut our competitor on key items while maintaining competitive prices on others. I noticed that our competitor has priced milk lower in recent ticks, so I will reduce our milk price to regain customer interest. I will also lower our prices on eggs and bacon, as these are high-demand items. By maintaining our prices on other items near or slightly above their wholesale costs, I aim to balance attracting customers and increasing our profit margin.
struct Strategy_4CCEB2E1_155 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_155) = Rational{Int}[11//12, 39//19, 9//8, 22//13, 68//29, 68//23, 5//1, 7//10, 28//29, 135//67]

function feasible(s::Strategy_4CCEB2E1_155, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_156 | Store 2 | tick 27 ──────────────────────────────
# Given the recent negative profits, I aim to slightly increase prices on key goods to improve profit margins while remaining competitive. I've noticed that our competitor tends to keep prices slightly higher on average, so I will adjust our prices to undercut them on some high-traffic items such as milk and bacon, while increasing prices on goods where we have traditionally been underpriced, like coffee and pasta sauce. This strategy should help us regain profitability by attracting cost-sensitive customers and maximizing revenue from less price-sensitive items.
struct Strategy_4CCEB2E1_156 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_156) = Rational{Int}[18//19, 33//16, 9//8, 17//10, 26//11, 3//1, 96//19, 7//10, 39//40, 81//40]

function feasible(s::Strategy_4CCEB2E1_156, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_157 | Store 1 | tick 28 ──────────────────────────────
# My strategy is to slightly undercut the competitor’s prices on key items where we have been losing profit, while still maintaining a competitive margin on others. Recent history shows our profits have been negative or zero, indicating a need to reassess our positioning. By strategically pricing some items slightly below their cost as loss leaders, like milk and sugar, I aim to draw in more customers and boost sales across the board, thus increasing overall profitability. I expect this will help us regain market share and improve our bottom line.
struct Strategy_4CCEB2E1_157 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_157) = Rational{Int}[9//10, 47//23, 9//8, 22//13, 7//3, 56//19, 94//19, 11//17, 15//16, 57//29]

function feasible(s::Strategy_4CCEB2E1_157, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_158 | Store 2 | tick 28 ──────────────────────────────
# I noticed that our competitor has been undercutting our prices slightly, which has led to our inability to make a profit. In response, I will strategically lower our prices slightly below the competitor's on key items to regain market share while keeping some prices close to their level to maintain margins. This strategy aims to attract more customers by being the most affordable option without drastically impacting our overall profitability, hoping to reverse the trend of zero profits and losses.
struct Strategy_4CCEB2E1_158 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_158) = Rational{Int}[9//10, 47//23, 10//9, 32//19, 7//3, 56//19, 49//10, 13//19, 22//23, 2//1]

function feasible(s::Strategy_4CCEB2E1_158, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_159 | Store 1 | tick 29 ──────────────────────────────
# Our current pricing strategy appears unsustainable as we are consistently experiencing losses. To maximize profit, I propose aligning our prices more closely with the competitor's while slightly undercutting on key items like milk and eggs to draw in customers. Given the competitor's stable pricing, this small undercut could increase foot traffic and sales volume. I expect this to improve our profit margins by attracting price-sensitive customers while maintaining competitive pricing across the board.
struct Strategy_4CCEB2E1_159 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_159) = Rational{Int}[8//9, 59//29, 11//10, 5//3, 44//19, 47//16, 39//8, 7//11, 18//19, 45//23]

function feasible(s::Strategy_4CCEB2E1_159, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_160 | Store 2 | tick 29 ──────────────────────────────
# Our recent pricing strategy has resulted in fluctuating profits, suggesting that we might be slightly misaligned with our competitor's pricing. The goal now is to adjust our prices to be more competitive while ensuring profitability. I will increase prices slightly for high-demand items like milk, coffee, and cereal, where we are currently pricing lower or equal to our competitor. For other items, I'll keep prices competitive but slightly below their levels, aiming to draw in more customers, particularly for staples like pasta and pasta sauce. This strategy should help gradually increase our profit margins without losing market share.
struct Strategy_4CCEB2E1_160 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_160) = Rational{Int}[15//16, 33//16, 9//8, 17//10, 68//29, 86//29, 206//41, 9//13, 39//40, 2//1]

function feasible(s::Strategy_4CCEB2E1_160, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_161 | Store 1 | tick 30 ──────────────────────────────
# Our current pricing strategy is leading to significant losses, especially as our prices are consistently lower than those of our competitor. To improve profitability, I will increase prices slightly closer to our competitor's levels, focusing on goods where we have a higher margin potential like coffee and pasta sauce. This adjustment aims to capture more profit per item sold while still being competitive enough to retain customers, expecting an improvement in profit while maintaining sales volume.
struct Strategy_4CCEB2E1_161 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_161) = Rational{Int}[13//14, 39//19, 9//8, 32//19, 68//29, 68//23, 206//41, 13//19, 28//29, 79//40]

function feasible(s::Strategy_4CCEB2E1_161, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_162 | Store 2 | tick 30 ──────────────────────────────
# I have noticed that our competitor has been slightly undercutting us, especially in the last tick. To regain market share and improve our cumulative profit, I will strategically lower our prices on a few key items such as milk, eggs, and coffee, while maintaining competitive pricing on others. This should increase foot traffic and sales volume, allowing us to outsell the competitor and move towards profitability. I expect this approach will boost our short-term sales and eventually improve our profit margins as we adjust incrementally.
struct Strategy_4CCEB2E1_162 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_162) = Rational{Int}[15//17, 47//23, 11//10, 48//29, 23//10, 41//14, 63//13, 12//19, 15//16, 37//19]

function feasible(s::Strategy_4CCEB2E1_162, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_163 | Store 1 | tick 31 ──────────────────────────────
# I have observed that reducing prices too aggressively has led to significant losses, even though our competitor has sometimes undercut us on certain items. Therefore, I aim to balance our prices slightly above or near the competitor's, focusing on competitive pricing for key items while ensuring we cover costs. By setting prices strategically, we can maintain market share without incurring further losses, aiming for a gradual improvement in profitability. I anticipate this approach will stabilize our profit margins while retaining customer interest.
struct Strategy_4CCEB2E1_163 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_163) = Rational{Int}[9//10, 47//23, 10//9, 32//19, 7//3, 56//19, 94//19, 19//29, 18//19, 57//29]

function feasible(s::Strategy_4CCEB2E1_163, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_164 | Store 2 | tick 31 ──────────────────────────────
# The recent trend shows that our lower pricing strategy is not yielding positive profits, as seen from the significant losses in ticks 27, 29, and 31. Our competitor is pricing slightly higher and may be capturing more profit. I will increase our prices slightly above the competitor's to test if our customer base is loyal enough to maintain sales volume while improving our profit margins. This strategy aims to strike a balance between competitiveness and profitability, hoping to turn around our recent losses.
struct Strategy_4CCEB2E1_164 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_164) = Rational{Int}[18//19, 33//16, 15//13, 31//18, 19//8, 58//19, 51//10, 13//18, 1//1, 39//19]

function feasible(s::Strategy_4CCEB2E1_164, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_165 | Store 1 | tick 32 ──────────────────────────────
# I have noticed that despite recent price adjustments, our profits have been consistently negative, indicating that our prices may still be too high to attract sufficient customers. The competitor has occasionally undercut us, notably in milk and sugar, suggesting that these are key competitive areas. To regain market share and improve profitability, I will lower our prices slightly on high-volume items like milk, bacon, and coffee to undercut the competitor, while keeping other prices stable to maintain margins. I expect this strategy to increase customer foot traffic and sales volume, ultimately improving our profit margin over time.
struct Strategy_4CCEB2E1_165 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_165) = Rational{Int}[13//15, 47//23, 11//10, 32//19, 7//3, 29//10, 39//8, 7//11, 18//19, 45//23]

function feasible(s::Strategy_4CCEB2E1_165, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_166 | Store 2 | tick 32 ──────────────────────────────
# Given our recent historical performance with zero or negative profits, I will adopt a more competitive pricing strategy to attract customers. Our competitor's prices have been consistently lower, which may have contributed to their potential success. By slightly lowering our prices on high-demand items like milk, eggs, and coffee, while maintaining competitive pricing on other goods, I aim to increase our market share. I expect this to boost sales volume and improve our overall profitability.
struct Strategy_4CCEB2E1_166 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_166) = Rational{Int}[8//9, 59//29, 11//10, 5//3, 44//19, 47//16, 39//8, 7//11, 18//19, 45//23]

function feasible(s::Strategy_4CCEB2E1_166, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_167 | Store 1 | tick 33 ──────────────────────────────
# I noticed that our recent pricing strategy has been resulting in negative profits, suggesting that we might be underpricing or losing market share. The competitor's prices indicate they are slightly higher on some items, so I'll experiment with slightly increasing prices on selected goods to improve margins without losing competitiveness. I'll focus on goods where we have room to match or slightly undercut the competitor, hoping to balance attracting customers and improving profitability.
struct Strategy_4CCEB2E1_167 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_167) = Rational{Int}[9//10, 39//19, 9//8, 22//13, 68//29, 41//14, 59//12, 2//3, 28//29, 79//40]

function feasible(s::Strategy_4CCEB2E1_167, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_168 | Store 2 | tick 33 ──────────────────────────────
# Our recent history shows significant losses and zero profits, indicating that our pricing strategy isn't competitive enough or fails to attract sufficient customer volume. The competitor's prices are closely matched to ours but with slight undercuts, especially on key staples like milk and sugar. To regain competitiveness and drive volume, I am slightly lowering prices on popular goods such as milk, bread, and sugar to incentivize purchases and potentially capture more market share, while maintaining a competitive yet profitable pricing on other items. I expect this approach to increase customer foot traffic and improve our profit margins over time.
struct Strategy_4CCEB2E1_168 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_168) = Rational{Int}[11//13, 59//29, 13//12, 5//3, 23//10, 35//12, 34//7, 8//13, 18//19, 37//19]

function feasible(s::Strategy_4CCEB2E1_168, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_169 | Store 1 | tick 34 ──────────────────────────────
# I have noticed that our competitor has been frequently adjusting their prices, often undercutting us, which led to zero profits in recent ticks. To counter this, I will implement a strategic price cut on key goods that have been competitively priced, such as milk, bread, and sugar, to attract more customers and regain market share. Additionally, I will slightly increase prices on less price-sensitive items like coffee and bacon to improve our margin. I expect this balanced approach will help us increase sales volume while maintaining a healthy profit margin.
struct Strategy_4CCEB2E1_169 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_169) = Rational{Int}[16//19, 59//29, 20//19, 48//29, 44//19, 47//16, 116//23, 11//18, 22//23, 57//29]

function feasible(s::Strategy_4CCEB2E1_169, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_170 | Store 2 | tick 34 ──────────────────────────────
# In recent ticks, we've consistently set our prices below the competitor's but have still faced significant losses. This suggests that undercutting might not be the effective strategy here. I will slightly increase some prices to better align with or slightly above the competitor's, focusing on products where our prices were significantly lower, such as milk and coffee, to reduce losses. I aim to find a balance that maintains competitiveness while improving our profit margins.
struct Strategy_4CCEB2E1_170 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_170) = Rational{Int}[9//10, 39//19, 9//8, 32//19, 68//29, 56//19, 5//1, 11//17, 28//29, 79//40]

function feasible(s::Strategy_4CCEB2E1_170, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_171 | Store 1 | tick 35 ──────────────────────────────
# I've noticed that we've been underpricing compared to our competitor, which has resulted in significant losses. To address this, I will align our prices closer to the competitor's levels, focusing on competitive yet slightly higher pricing on high-margin items like coffee and bacon, while using loss leaders like milk and sugar to attract customers. This strategy aims to balance attracting customers with competitive pricing and improving profitability by not undercutting too much on key items.
struct Strategy_4CCEB2E1_171 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_171) = Rational{Int}[8//9, 39//19, 11//10, 32//19, 7//3, 56//19, 5//1, 11//17, 22//23, 57//29]

function feasible(s::Strategy_4CCEB2E1_171, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_172 | Store 2 | tick 35 ──────────────────────────────
# I will slightly undercut my competitor's prices on key items such as milk, bread, and eggs to attract more customers, as these are staple goods that drive store traffic. I aim to maintain competitive pricing on other items like cereal and pasta sauce but will not drastically lower prices to avoid significant profit loss. By strategically pricing these goods, I expect to increase my store's market share and improve our cumulative profit over time.
struct Strategy_4CCEB2E1_172 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_172) = Rational{Int}[5//6, 47//23, 24//23, 5//3, 30//13, 41//14, 49//10, 3//5, 22//23, 57//29]

function feasible(s::Strategy_4CCEB2E1_172, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_173 | Store 1 | tick 36 ──────────────────────────────
# Given the recent lack of profit, my strategy is to slightly undercut our competitor's prices on key items to attract more customers, while maintaining higher margins on others. This mixed pricing approach aims to draw in price-sensitive buyers with competitive prices on staples like milk and bread, while generating profits on other items like coffee and bacon. I expect this will increase our volume of sales and thus improve our overall profitability.
struct Strategy_4CCEB2E1_173 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_173) = Rational{Int}[9//11, 81//40, 30//29, 17//10, 23//10, 32//11, 39//8, 8//13, 18//19, 45//23]

function feasible(s::Strategy_4CCEB2E1_173, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_174 | Store 2 | tick 36 ──────────────────────────────
# To improve profitability, I will align prices closely with our competitor, as their strategy seems to avoid losses. I will slightly undercut on essential goods like milk and eggs to attract more customers, while keeping prices for other items competitive. This should shift some demand towards us without drastically affecting margins. I expect this strategy to stabilize profits and eventually increase market share.
struct Strategy_4CCEB2E1_174 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_174) = Rational{Int}[15//17, 39//19, 11//10, 32//19, 23//10, 47//16, 114//23, 7//11, 22//23, 57//29]

function feasible(s::Strategy_4CCEB2E1_174, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_175 | Store 1 | tick 37 ──────────────────────────────
# Our strategy is to slightly undercut the competitor's prices on key goods where we have historically priced higher, such as milk and coffee, to regain market share and boost sales volume. By setting competitive prices on these goods and maintaining or slightly reducing prices on others, we aim to reduce our deficit and potentially break even or achieve a small profit. The goal is to attract price-sensitive customers while keeping an eye on margins for long-term sustainability.
struct Strategy_4CCEB2E1_175 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_175) = Rational{Int}[13//15, 47//23, 13//12, 5//3, 16//7, 35//12, 63//13, 11//18, 15//16, 37//19]

function feasible(s::Strategy_4CCEB2E1_175, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_176 | Store 2 | tick 37 ──────────────────────────────
# Given our recent history of zero or negative profits, it seems that our pricing strategy needs adjustment. Our competitor has slightly underpriced us on several key items, which might be affecting our sales volume. I will slightly lower the prices of milk, bread, and coffee to make our store more attractive, while keeping other prices competitive but stable. This strategy aims to increase foot traffic and volume sales, especially on popular items, to improve our overall profit margin.
struct Strategy_4CCEB2E1_176 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_176) = Rational{Int}[13//16, 39//19, 41//40, 32//19, 30//13, 47//16, 63//13, 7//11, 22//23, 57//29]

function feasible(s::Strategy_4CCEB2E1_176, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_177 | Store 1 | tick 38 ──────────────────────────────
# Given the consistent negative profits over the past few ticks, it is evident that our pricing strategy has been ineffective against the competitor. I will adopt a more competitive pricing approach by slightly undercutting the competitor's prices on high-margin items like bacon and coffee while setting loss leaders on staple items such as milk and bread to attract customers. This combination should help increase foot traffic and overall sales volume, with the expectation of improving our cumulative profit over time.
struct Strategy_4CCEB2E1_177 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_177) = Rational{Int}[4//5, 33//16, 1//1, 22//13, 41//18, 32//11, 24//5, 3//5, 15//16, 31//16]

function feasible(s::Strategy_4CCEB2E1_177, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_178 | Store 2 | tick 38 ──────────────────────────────
# Our recent pricing strategy has resulted in consistent losses, indicating that we are not competitive enough with our pricing. I will adjust our prices to more closely match our competitor's successful pricing, while slightly undercutting them on select items to capture more market share. By tightening our price differences, especially on staple items like milk and eggs, we aim to drive higher sales volume and ultimately increase our profit margins.
struct Strategy_4CCEB2E1_178 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_178) = Rational{Int}[6//7, 47//23, 20//19, 5//3, 16//7, 32//11, 92//19, 3//5, 15//16, 37//19]

function feasible(s::Strategy_4CCEB2E1_178, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_179 | Store 1 | tick 39 ──────────────────────────────
# Our recent pricing strategy has resulted in significant losses, indicating that our prices may be too low to cover costs or too high to attract enough customers. I noticed the competitor generally keeps their prices slightly above ours, which suggests that competing solely on price might not be effective. Instead, I'll slightly increase prices on high-margin items like coffee and bacon to improve profit margins while keeping key staples like milk and pasta competitively priced to maintain customer flow. I expect this balanced approach to reduce losses while gradually improving our profit margins.
struct Strategy_4CCEB2E1_179 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_179) = Rational{Int}[15//17, 47//23, 17//16, 32//19, 23//10, 68//23, 51//10, 8//13, 13//14, 45//23]

function feasible(s::Strategy_4CCEB2E1_179, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_180 | Store 2 | tick 39 ──────────────────────────────
# I noticed that our profits have been low or negative, likely due to undercutting our competitor in an attempt to gain market share. However, this strategy has not yielded the desired positive profits. I will slightly increase prices on key items like coffee and bacon, which have been consistently priced lower or at par with the competitor, to improve our margins. I will maintain competitive pricing on high-demand items like milk and bread to attract customers. This balanced approach aims to improve profitability while retaining customer interest.
struct Strategy_4CCEB2E1_180 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_180) = Rational{Int}[11//13, 47//23, 30//29, 5//3, 23//10, 47//16, 94//19, 8//13, 18//19, 45//23]

function feasible(s::Strategy_4CCEB2E1_180, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_181 | Store 1 | tick 40 ──────────────────────────────
# Our recent pricing strategy has resulted in fluctuating profits, with the most recent tick showing no profit. The competitor's prices have been slightly lower or similar, suggesting a highly competitive market. I will adopt a strategy that undercuts the competitor on select items, while maintaining competitive pricing on others to attract price-sensitive customers and increase overall sales volume. I expect this will help capture more market share and improve our profit margin in the long run.
struct Strategy_4CCEB2E1_181 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_181) = Rational{Int}[9//11, 59//29, 41//40, 48//29, 25//11, 29//10, 63//13, 10//17, 11//12, 31//16]

function feasible(s::Strategy_4CCEB2E1_181, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_182 | Store 2 | tick 40 ──────────────────────────────
# Our recent pricing strategy has not been effective, resulting in significant losses. The competitor's prices have been slightly higher or similar, yet we've failed to capture sufficient market share. To improve profitability, I'll reduce prices slightly on key items like milk and bread to undercut the competitor, while maintaining competitive pricing on high-margin items like coffee and bacon. This should help increase customer attraction to our store and boost sales volume, aiming for a positive profit shift.
struct Strategy_4CCEB2E1_182 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_182) = Rational{Int}[9//11, 59//29, 68//67, 48//29, 41//18, 29//10, 29//6, 7//12, 11//12, 31//16]

function feasible(s::Strategy_4CCEB2E1_182, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_183 | Store 1 | tick 41 ──────────────────────────────
# I have noticed that our pricing strategy has resulted in zero profit in the last two ticks, suggesting we're not competitive enough. Our competitor's prices are similar, but they are slightly undercutting us on key items like milk, sugar, and coffee. I will reduce our prices slightly below our competitor's and focus on undercutting them on popular items such as milk, sugar, and eggs to attract more customers, while maintaining competitive margins on other goods. This should help us regain market share and improve our profit margins.
struct Strategy_4CCEB2E1_183 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_183) = Rational{Int}[4//5, 81//40, 68//67, 28//17, 9//4, 26//9, 53//11, 4//7, 10//11, 27//14]

function feasible(s::Strategy_4CCEB2E1_183, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_184 | Store 2 | tick 41 ──────────────────────────────
# Our recent pricing strategy has led to negative profits, indicating that we need to adjust our approach. I will pursue a strategy of selective price undercutting on key items like milk and bread to regain customer traffic while maintaining higher margins on higher-cost items like coffee and bacon. This should balance attracting consumers with more competitive prices while ensuring profitability on premium goods. I expect this strategy to stabilize our profits by increasing sales volume and reducing losses.
struct Strategy_4CCEB2E1_184 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_184) = Rational{Int}[11//14, 39//19, 1//1, 28//17, 25//11, 56//19, 96//19, 3//5, 13//14, 37//19]

function feasible(s::Strategy_4CCEB2E1_184, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_185 | Store 1 | tick 42 ──────────────────────────────
# Given our recent losses, it's crucial to adjust our pricing strategy to regain profitability. I will slightly undercut the competitor on key items like milk and bread to draw customers in while maintaining or slightly raising prices on higher-margin items like coffee and eggs. This mixed strategy aims to attract price-sensitive customers while improving margins on selected goods. I expect this approach to stabilize our profits and potentially capture more market share.
struct Strategy_4CCEB2E1_185 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_185) = Rational{Int}[7//9, 33//16, 39//40, 32//19, 44//19, 86//29, 51//10, 12//19, 18//19, 45//23]

function feasible(s::Strategy_4CCEB2E1_185, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_186 | Store 2 | tick 42 ──────────────────────────────
# Given our recent negative profits, it's clear that our pricing strategy needs adjustment. Our competitor has been slightly undercutting us on key items like milk and eggs, which are staples that drive foot traffic. I have decided to lower prices on these highly competitive items to match or slightly undercut our competitor, while maintaining a reasonable markup on less price-sensitive items like coffee and pasta sauce. This should help us regain market share and increase sales volume, potentially turning our profits positive in the upcoming ticks.
struct Strategy_4CCEB2E1_186 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_186) = Rational{Int}[7//9, 39//19, 41//40, 5//3, 43//19, 29//10, 96//19, 10//17, 18//19, 45//23]

function feasible(s::Strategy_4CCEB2E1_186, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_187 | Store 1 | tick 43 ──────────────────────────────
# To improve our profitability, I will slightly increase prices on goods where we have been closely matching or undercutting the competitor, like milk and bread, as these products have shown demand elasticity in past ticks. I will also increase the price of coffee, which remains a high-margin product, while keeping strategic staples like pasta and pasta sauce competitive. This approach aims to balance competitiveness and profitability by capitalizing on higher-margin goods and stabilizing losses on others.
struct Strategy_4CCEB2E1_187 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_187) = Rational{Int}[4//5, 33//16, 20//19, 32//19, 30//13, 56//19, 26//5, 3//5, 15//16, 37//19]

function feasible(s::Strategy_4CCEB2E1_187, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_188 | Store 2 | tick 43 ──────────────────────────────
# I aim to enhance our competitive position while improving profitability. Our recent pricing strategy led to losses, particularly due to pricing below wholesale costs without gaining sufficient market share. I will increase prices slightly on key items where we were previously undercut by the competitor or where we matched their prices, such as milk, bread, and coffee. This adjustment should help cover costs while maintaining competitiveness in other areas like cereal and pasta sauce, where we have been slightly underpriced. I expect this strategy to stabilize profits by balancing competitive pricing with cost coverage.
struct Strategy_4CCEB2E1_188 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_188) = Rational{Int}[13//16, 59//29, 24//23, 48//29, 41//18, 35//12, 49//10, 11//18, 15//16, 37//19]

function feasible(s::Strategy_4CCEB2E1_188, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_189 | Store 1 | tick 44 ──────────────────────────────
# I noticed that my current pricing strategy has resulted in negative profits, likely because my prices are too close to the competitor's, reducing my competitive edge. To improve profits, I will slightly reduce prices on key items like milk and bread to draw more customers, while maintaining competitive pricing on higher-margin items like coffee and bacon. I expect this strategy to increase store traffic and overall sales volume, offsetting the lower margins on some products and driving cumulative profit upward.
struct Strategy_4CCEB2E1_189 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_189) = Rational{Int}[10//13, 59//29, 1//1, 48//29, 16//7, 47//16, 59//12, 10//17, 13//14, 31//16]

function feasible(s::Strategy_4CCEB2E1_189, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_190 | Store 2 | tick 44 ──────────────────────────────
# I noticed that our profits have been negative recently, and we are pricing slightly below or matching our competitor in several categories. To increase profitability, I will slightly increase prices on items where our competitor has maintained higher prices, such as coffee and bacon. I will also maintain competitive pricing on high-demand items like milk and eggs to attract customers. This strategy aims to balance attracting customers through competitive pricing while improving profit margins on select items.
struct Strategy_4CCEB2E1_190 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_190) = Rational{Int}[4//5, 47//23, 20//19, 32//19, 16//7, 47//16, 51//10, 8//13, 18//19, 37//19]

function feasible(s::Strategy_4CCEB2E1_190, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_191 | Store 1 | tick 45 ──────────────────────────────
# Given our recent history of negative profits, it is clear that our pricing strategy needs to be adjusted to regain profitability. I noticed that our competitor is pricing aggressively, particularly on key items like milk and coffee, which could be drawing customers away. To counter this, I will lower prices on those goods to match or slightly undercut the competitor's prices, using them as loss leaders to increase foot traffic. By maintaining competitive prices on other items while slightly increasing prices on less price-sensitive goods like cereal, I aim to balance attracting customers with maintaining an overall profit margin.
struct Strategy_4CCEB2E1_191 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_191) = Rational{Int}[11//14, 33//16, 24//23, 5//3, 41//18, 35//12, 5//1, 7//12, 22//23, 45//23]

function feasible(s::Strategy_4CCEB2E1_191, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_192 | Store 2 | tick 45 ──────────────────────────────
# Analyzing the price history, it seems that matching or slightly undercutting the competitor's prices has not consistently led to positive profits. For the next tick, I will focus on competitive pricing with a slight emphasis on loss leaders to drive store traffic, particularly on goods like milk, bread, and sugar, which are commonly purchased items. By setting attractive prices on these, I aim to increase customer footfall and encourage purchases of higher-margin products. This strategy should help improve our sales volume and ultimately our cumulative profit over time.
struct Strategy_4CCEB2E1_192 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_192) = Rational{Int}[3//4, 33//16, 1//1, 32//19, 23//10, 41//14, 5//1, 7//12, 22//23, 57//29]

function feasible(s::Strategy_4CCEB2E1_192, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_193 | Store 1 | tick 46 ──────────────────────────────
# Our recent profits indicate a negative trend, suggesting that our current pricing strategy may not be competitive enough. I aim to slightly undercut the competitor's pricing on high-demand items like milk, bread, and coffee to drive more traffic to our store, while maintaining competitive pricing on other items. The goal is to attract price-sensitive customers and increase volume sales, expecting a positive impact on overall profit despite potentially lower margins on certain goods.
struct Strategy_4CCEB2E1_193 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_193) = Rational{Int}[14//19, 33//16, 66//67, 5//3, 16//7, 35//12, 204//41, 4//7, 15//16, 37//19]

function feasible(s::Strategy_4CCEB2E1_193, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_194 | Store 2 | tick 46 ──────────────────────────────
# My strategy is to slightly undercut the competitor's prices on key items like milk, bread, and bacon while maintaining competitive prices on others. I will also use coffee as a loss leader by pricing it just below the wholesale cost to attract customers. Given our recent history of losses, I aim to increase foot traffic and sales volume, hoping to offset the loss leader strategy with higher sales of other goods. I expect this approach to improve our profit margin by attracting price-sensitive consumers who might also purchase higher-margin items.
struct Strategy_4CCEB2E1_194 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_194) = Rational{Int}[7//9, 47//23, 66//67, 5//3, 25//11, 29//10, 94//19, 4//7, 15//16, 31//16]

function feasible(s::Strategy_4CCEB2E1_194, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_195 | Store 1 | tick 47 ──────────────────────────────
# I noticed that our recent profits have been negative, suggesting that our pricing strategy isn't effective. Our competitor has been slightly undercutting us on certain staple items like eggs and bacon. To counter this, I will slightly decrease our prices on key items such as eggs and bacon while maintaining competitive prices on other goods. This should increase our sales volume and help regain market share. I expect this strategy to improve our overall profitability by attracting more price-sensitive customers without significantly sacrificing profit margins.
struct Strategy_4CCEB2E1_195 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_195) = Rational{Int}[3//4, 39//19, 41//40, 5//3, 9//4, 26//9, 94//19, 10//17, 18//19, 45//23]

function feasible(s::Strategy_4CCEB2E1_195, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_196 | Store 2 | tick 47 ──────────────────────────────
# Our current pricing strategy has led to significant losses. The competitor consistently sets slightly lower prices, particularly on key items like milk and eggs, which likely draws more customers. To counter this, I will implement a competitive pricing strategy by slightly undercutting the competitor's prices on high-demand items such as milk, bread, and eggs, while maintaining similar pricing for the other goods. This approach aims to increase our customer base and sales volume, offsetting the temporary loss from lower margins, and ultimately improving our cumulative profit over time.
struct Strategy_4CCEB2E1_196 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_196) = Rational{Int}[8//11, 33//16, 39//40, 5//3, 41//18, 32//11, 334//67, 7//12, 13//14, 31//16]

function feasible(s::Strategy_4CCEB2E1_196, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_197 | Store 1 | tick 48 ──────────────────────────────
# Our recent pricing strategy has resulted in negative profits, indicating that we are not competitive enough. The competitor has slightly undercut us on milk, which seems to be impacting our sales significantly. To counteract this, I will decrease the price of milk below the competitor's to attract more customers. I will also adjust the prices of other goods to align more closely with or slightly below the competitor's prices, particularly focusing on high-margin items like coffee and eggs. This approach aims to increase foot traffic and overall sales volume, improving our cumulative profit over time.
struct Strategy_4CCEB2E1_197 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_197) = Rational{Int}[13//18, 39//19, 68//67, 48//29, 38//17, 29//10, 144//29, 4//7, 13//14, 37//19]

function feasible(s::Strategy_4CCEB2E1_197, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_198 | Store 2 | tick 48 ──────────────────────────────
# My pricing strategy is to slightly undercut the competitor's prices on key items while maintaining a competitive margin on others. Over the past few ticks, our profit has been negative, indicating that we need to adjust our approach to attract more customers. By strategically lowering prices on high-demand items like milk, bread, and coffee, I hope to draw customers away from the competitor, increase sales volume, and improve our overall profit. I expect this approach to boost our market share and help us recover from recent losses.
struct Strategy_4CCEB2E1_198 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_198) = Rational{Int}[13//18, 39//19, 39//40, 5//3, 43//19, 29//10, 79//16, 4//7, 11//12, 27//14]

function feasible(s::Strategy_4CCEB2E1_198, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_199 | Store 1 | tick 49 ──────────────────────────────
# I have observed that pricing too aggressively below the competitor has led to negative profits, suggesting that we may be undercutting too significantly without capturing enough market share or volume to compensate. Therefore, I aim to slightly increase prices on some key items where we are currently undercutting, such as milk and bread, to improve margins. I will also align closely with competitor prices on items like eggs and coffee, which are staples and may drive more consistent sales. This strategy should help stabilize profits while maintaining competitiveness in the market.
struct Strategy_4CCEB2E1_199 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_199) = Rational{Int}[14//19, 39//19, 30//29, 48//29, 9//4, 32//11, 114//23, 7//12, 13//14, 37//19]

function feasible(s::Strategy_4CCEB2E1_199, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_4CCEB2E1_200 | Store 2 | tick 49 ──────────────────────────────
# I noticed our store is consistently experiencing losses, likely due to competitor pricing strategies. To counter this, I will slightly undercut competitor prices on key items like milk and bread to attract more customers. I'll also maintain competitive pricing on high-margin items like coffee and bacon to boost profits. I expect this strategy to increase our sales volume and reduce our losses over the coming ticks.
struct Strategy_4CCEB2E1_200 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_4CCEB2E1_200) = Rational{Int}[5//7, 47//23, 39//40, 48//29, 9//4, 26//9, 69//14, 5//9, 10//11, 23//12]

function feasible(s::Strategy_4CCEB2E1_200, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_201 | Store 1 | tick 0 ──────────────────────────────
# Since we have no history yet, I will start with a balanced approach, setting prices slightly above the wholesale cost to ensure a baseline profit while remaining competitive. I expect this to help us gauge customer response and competitor reactions in the initial periods. This strategy should provide a foundation to adjust prices based on market feedback and maintain profitability.
struct Strategy_2124315B_201 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_201) = Rational{Int}[7//4, 11//4, 9//4, 2//1, 5//2, 13//4, 11//2, 5//4, 3//2, 7//4]

function feasible(s::Strategy_2124315B_201, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_202 | Store 2 | tick 0 ──────────────────────────────
# As we enter the market with no prior history, my strategy is to start with a balanced pricing approach that slightly undercuts average retail prices but remains above wholesale costs to ensure profitability. This initial strategy aims to attract customers while maintaining a sustainable profit margin. By setting competitive prices, I expect to capture market share without incurring losses, setting the stage for future adjustments based on competitors' actions and consumer responses.
struct Strategy_2124315B_202 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_202) = Rational{Int}[2//1, 3//1, 5//2, 2//1, 3//1, 4//1, 6//1, 3//2, 2//1, 5//2]

function feasible(s::Strategy_2124315B_202, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_203 | Store 1 | tick 1 ──────────────────────────────
# In the last tick, I priced slightly below the competitor on most items, which resulted in a healthy profit. I aim to maintain this edge while slightly adjusting prices to test elasticity. I'll keep bread, butter, and sugar at similar levels since they are essentials, but I'll slightly increase the prices of milk, cereal, and eggs to improve margins without losing competitiveness. I expect to continue capturing market share while sustaining profitability.
struct Strategy_2124315B_203 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_203) = Rational{Int}[9//5, 14//5, 9//4, 2//1, 13//5, 13//4, 11//2, 5//4, 3//2, 7//4]

function feasible(s::Strategy_2124315B_203, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_204 | Store 2 | tick 1 ──────────────────────────────
# In the previous tick, we had zero profit, suggesting our prices were too high or our sales were too low compared to the competitor. I will strategically lower the prices of key competitive items such as milk, cereal, and pasta to attract more customers while maintaining or slightly increasing the prices on less price-sensitive items like coffee and bacon to ensure profitability. This approach aims to regain some market share without sustaining losses, balancing between competitive pricing and maintaining store-level profitability.
struct Strategy_2124315B_204 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_204) = Rational{Int}[17//10, 13//5, 5//2, 2//1, 14//5, 41//10, 31//5, 3//2, 17//10, 2//1]

function feasible(s::Strategy_2124315B_204, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_205 | Store 1 | tick 2 ──────────────────────────────
# In the previous tick, we saw an increase in profit despite the competitor slightly lowering their prices. This suggests that our pricing strategy remains competitive. I will continue to maintain slightly lower prices on key staples like milk, cereal, and eggs to attract price-sensitive customers while keeping our high-margin items like coffee and bacon priced higher. This balanced approach aims to maximize profitability while maintaining market share.
struct Strategy_2124315B_205 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_205) = Rational{Int}[16//9, 25//9, 9//4, 2//1, 28//11, 33//10, 11//2, 5//4, 3//2, 7//4]

function feasible(s::Strategy_2124315B_205, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_206 | Store 2 | tick 2 ──────────────────────────────
# Given our small profit in the last tick, I aim to strengthen our competitive position by slightly undercutting the competitor's prices on key items while maintaining profitability. I've decided to keep coffee and bacon prices higher, as they still sold well despite higher prices. I expect this strategy to sustain profitability while attracting cost-conscious customers on essentials like milk, cereal, and eggs, where I've reduced prices further.
struct Strategy_2124315B_206 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_206) = Rational{Int}[28//17, 28//11, 5//2, 39//19, 11//4, 41//10, 31//5, 16//11, 17//11, 37//19]

function feasible(s::Strategy_2124315B_206, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_207 | Store 1 | tick 3 ──────────────────────────────
# Our recent pricing strategy has maintained a healthy profit margin without inducing any negative profit periods. The competitor has consistently undercut our prices on certain items like milk and cereal, but our strong performance suggests that customers value our overall basket of goods. I will slightly lower the prices of milk and cereal to remain competitive, while keeping other prices stable to avoid negative profit. This strategy aims to retain customers on key comparison items while maintaining overall profitability.
struct Strategy_2124315B_207 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_207) = Rational{Int}[17//10, 27//10, 9//4, 2//1, 28//11, 33//10, 11//2, 5//4, 3//2, 7//4]

function feasible(s::Strategy_2124315B_207, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_208 | Store 2 | tick 3 ──────────────────────────────
# Given the recent increase in our profitability, I aim to maintain competitive pricing while slightly adjusting our prices to optimize margins. Our competitor has been consistent, so I will align closely with their pricing while ensuring our key products remain attractive to customers. I expect this strategy to sustain our positive profit momentum and enhance our market share.
struct Strategy_2124315B_208 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_208) = Rational{Int}[7//4, 27//10, 12//5, 2//1, 45//17, 57//17, 28//5, 13//10, 8//5, 19//10]

function feasible(s::Strategy_2124315B_208, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_209 | Store 1 | tick 4 ──────────────────────────────
# Given the slight decline in profits in tick 4, my strategy is to adjust prices to regain profitability while remaining competitive. I will slightly increase the price of goods where our competitor is higher, such as eggs, to capture more margin, and maintain or slightly reduce prices on popular items like milk and cereal to attract customers. This approach should help us balance competitive pricing with the need to enhance profitability.
struct Strategy_2124315B_209 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_209) = Rational{Int}[31//18, 49//18, 11//5, 2//1, 13//5, 59//18, 60//11, 6//5, 31//21, 31//18]

function feasible(s::Strategy_2124315B_209, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_210 | Store 2 | tick 4 ──────────────────────────────
# Given my store's recent history of zero profit in ticks 1 and 4, I need to adjust prices to avoid sustained losses. I will slightly increase prices on high-demand items like milk and eggs to improve margins, while still keeping them competitive. I will also maintain or slightly decrease prices on goods where competitors are stronger, like cereal and pasta, to regain customer interest. This balanced approach aims to increase profitability while staying competitive.
struct Strategy_2124315B_210 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_210) = Rational{Int}[9//5, 45//17, 12//5, 2//1, 27//10, 17//5, 57//10, 13//10, 17//11, 24//13]

function feasible(s::Strategy_2124315B_210, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_211 | Store 1 | tick 5 ──────────────────────────────
# Given the recent decline in profitability, I aim to increase prices slightly on certain goods while still remaining competitive, particularly where our competitor has higher prices. I will raise prices on milk, cereal, and pasta to close the gap and improve profit margins, while maintaining competitive pricing on butter and coffee where the competition is higher. This strategy should help us recover profitability without losing too much market share.
struct Strategy_2124315B_211 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_211) = Rational{Int}[30//17, 47//17, 9//4, 2//1, 45//17, 33//10, 11//2, 5//4, 32//21, 9//5]

function feasible(s::Strategy_2124315B_211, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_212 | Store 2 | tick 5 ──────────────────────────────
# Given our recent history of zero profit over the last two ticks, it's crucial to adjust prices to regain profitability while remaining competitive. I will slightly increase prices on certain goods that are less price-sensitive, such as bacon and coffee, where the competitor's prices are similar. For more price-sensitive items like milk, cereal, and pasta, I'll keep prices competitive to maintain volume. This balanced approach should help us achieve positive profits without losing market share.
struct Strategy_2124315B_212 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_212) = Rational{Int}[7//4, 27//10, 23//10, 2//1, 45//17, 38//11, 23//4, 23//17, 3//2, 9//5]

function feasible(s::Strategy_2124315B_212, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_213 | Store 1 | tick 6 ──────────────────────────────
# My strategy is to slightly increase prices on key items like milk, cereal, and coffee, where we have maintained lower prices compared to the competitor, to improve profit margins without deviating from competitive positioning. Notably, I am aligning prices on butter and pasta_sauce with the competitor, leveraging the competitive landscape to maintain customer interest. I expect this balanced approach to sustain profitability while maintaining a competitive edge in the market.
struct Strategy_2124315B_213 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_213) = Rational{Int}[16//9, 25//9, 9//4, 2//1, 45//17, 63//19, 61//11, 5//4, 32//21, 9//5]

function feasible(s::Strategy_2124315B_213, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_214 | Store 2 | tick 6 ──────────────────────────────
# Given the recent uptick in profitability in tick 6, I aim to maintain this momentum by slightly undercutting our competitor's pricing on key items like bread, pasta, and pasta sauce where they have been slightly lower. I will also slightly increase prices on milk, cereal, and coffee to capitalize on their inelastic demand while keeping butter and eggs prices competitive. This strategy is designed to sustain our profitability and prevent any potential negative profit periods by balancing competitive pricing with strategic price increases.
struct Strategy_2124315B_214 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_214) = Rational{Int}[16//9, 11//4, 11//5, 2//1, 13//5, 57//17, 29//5, 13//10, 52//35, 16//9]

function feasible(s::Strategy_2124315B_214, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_215 | Store 1 | tick 7 ──────────────────────────────
# The significant drop in profit in tick 7 suggests that we need to adjust our strategy. The competitor has slightly increased prices in some categories, allowing us to raise prices moderately where we were previously undercutting without exceeding their prices. I will maintain competitive pricing on key items like milk and cereal while increasing prices on others like bread and coffee to regain profitability. This balanced approach aims to recover our profit margins while staying competitive.
struct Strategy_2124315B_215 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_215) = Rational{Int}[30//17, 52//19, 23//10, 39//19, 27//10, 57//17, 28//5, 23//18, 23//15, 20//11]

function feasible(s::Strategy_2124315B_215, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_216 | Store 2 | tick 7 ──────────────────────────────
# Given our recent significant profit increase in tick 7, I intend to maintain a competitive edge by keeping prices close to our competitor's, while slightly undercutting on key items like milk and coffee to attract customers. Our past losses indicate that being too aggressive in pricing can hurt profitability, but our recent success suggests we can afford some targeted price reductions to drive volume. I expect this strategy to sustain profitability by attracting more customers without triggering another price war.
struct Strategy_2124315B_216 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_216) = Rational{Int}[7//4, 52//19, 20//9, 2//1, 21//8, 10//3, 52//9, 14//11, 53//35, 25//14]

function feasible(s::Strategy_2124315B_216, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_217 | Store 1 | tick 8 ──────────────────────────────
# To address the recent profit decline, I will strategically lower prices on a few key goods to attract more customers while slightly increasing prices on others to offset costs. This approach helps regain competitiveness without sustaining losses, as seen in recent price wars with our competitor. By undercutting on specific goods like milk and sugar, I aim to drive traffic, while increasing prices on less elastic goods like coffee and bacon to ensure profitability. I expect this balanced strategy to stabilize profits and potentially regain market share.
struct Strategy_2124315B_217 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_217) = Rational{Int}[33//19, 27//10, 41//18, 39//19, 51//19, 27//8, 96//17, 21//17, 53//35, 9//5]

function feasible(s::Strategy_2124315B_217, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_218 | Store 2 | tick 8 ──────────────────────────────
# Our strategy has been successful in recent ticks, resulting in increased profitability. I will continue to maintain competitive pricing on key items like milk and cereal, while slightly adjusting prices on goods where we have a margin advantage compared to our competitor, such as coffee and sugar. This approach should attract price-sensitive customers without sacrificing overall profitability, given our recent strong profits. I expect this will help us continue to capture market share while maintaining a positive profit trajectory.
struct Strategy_2124315B_218 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_218) = Rational{Int}[7//4, 30//11, 9//4, 2//1, 21//8, 97//29, 75//13, 9//7, 3//2, 16//9]

function feasible(s::Strategy_2124315B_218, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_219 | Store 1 | tick 9 ──────────────────────────────
# Recent profits have been low, indicating that our competitive pricing strategy isn't yielding the desired profitability. Competitors have slightly higher prices, suggesting room to adjust our pricing upwards without losing competitive parity. To avoid sustaining further losses, I will increase the prices of key items like bacon, coffee, and eggs where our prices are currently undercutting the competition, while maintaining strategic loss leaders in items like milk and sugar to attract customers. This should help improve profitability while still drawing in customers with competitive pricing on certain essentials.
struct Strategy_2124315B_219 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_219) = Rational{Int}[32//19, 52//19, 41//18, 39//19, 77//29, 37//11, 57//10, 6//5, 3//2, 9//5]

function feasible(s::Strategy_2124315B_219, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_220 | Store 2 | tick 9 ──────────────────────────────
# Given our recent profitability and successful undercutting of the competitor on key items, I will continue with a competitive pricing strategy. I'll slightly reduce prices on milk and sugar, which are key competitive items, to attract more customers while maintaining or increasing our prices on other items where we have a price advantage or are already competitive. This should continue to drive store traffic and maintain profitability, as we are already operating at a strong profit margin.
struct Strategy_2124315B_220 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_220) = Rational{Int}[33//19, 30//11, 38//17, 2//1, 21//8, 97//29, 75//13, 23//18, 3//2, 25//14]

function feasible(s::Strategy_2124315B_220, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_221 | Store 1 | tick 10 ──────────────────────────────
# Given the recent trend of decreasing profits, it's crucial to adjust our prices to avoid sustained losses. I have decided to slightly increase prices on goods where we are currently undercutting the competition, such as milk and eggs, to increase our margin while staying competitive. Additionally, I will maintain competitive pricing on high-margin items like coffee while slightly lowering prices on bread to attract more customers. This strategy aims to stabilize profits and regain momentum without compromising our market position.
struct Strategy_2124315B_221 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_221) = Rational{Int}[31//18, 47//17, 11//5, 39//19, 29//11, 97//29, 103//18, 11//9, 32//21, 9//5]

function feasible(s::Strategy_2124315B_221, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_222 | Store 2 | tick 10 ──────────────────────────────
# Our performance in the last few ticks has been strong with increasing profits, although we saw a slight dip in the last period. Our competitor has been slightly undercutting us on milk and sugar, which might be affecting our sales. To counter this, I will lower the price of milk and sugar to match theirs, while maintaining competitive pricing on other items to sustain profitability. This adjustment aims to recapture market share on these key items while keeping overall profit margins healthy.
struct Strategy_2124315B_222 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_222) = Rational{Int}[32//19, 52//19, 38//17, 2//1, 21//8, 97//29, 75//13, 6//5, 3//2, 25//14]

function feasible(s::Strategy_2124315B_222, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_223 | Store 1 | tick 11 ──────────────────────────────
# My strategy is to adjust prices to regain profitability while maintaining competitiveness. Given the recent profit of only 2.73, I need to carefully raise prices on items where we have been undercutting competitors, such as milk and bread, to improve margins. At the same time, I will slightly lower prices on high-margin items like coffee to attract more customers, balancing the overall store profit. This approach should help us move back to positive profits while remaining attractive to price-sensitive shoppers.
struct Strategy_2124315B_223 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_223) = Rational{Int}[33//19, 47//17, 38//17, 39//19, 29//11, 97//29, 108//19, 6//5, 32//21, 9//5]

function feasible(s::Strategy_2124315B_223, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_224 | Store 2 | tick 11 ──────────────────────────────
# My strategy is to maintain a competitive edge while ensuring profitability. In recent ticks, we have managed to stay profitable, but I observed that our competitor has slightly increased their prices. I will adjust our prices to be competitive, especially on popular items like milk and sugar, while increasing margins on less price-sensitive items like coffee and bacon. This approach aims to attract price-sensitive customers and maintain our profit levels.
struct Strategy_2124315B_224 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_224) = Rational{Int}[17//10, 11//4, 29//13, 2//1, 21//8, 37//11, 81//14, 11//9, 53//35, 16//9]

function feasible(s::Strategy_2124315B_224, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_225 | Store 1 | tick 12 ──────────────────────────────
# In recent periods, we've seen fluctuations in our profits, with a significant dip at tick 11. To ensure we don't sustain further losses, I'm adjusting our prices to be just slightly above our competitor's for key items like milk and bread, while keeping prices competitive for other staples. This strategy aims to stabilize profits by attracting customers with competitive yet profitable pricing, especially where our costs allow for margin flexibility. I expect this approach to maintain profitability while minimizing the risk of sustained losses.
struct Strategy_2124315B_225 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_225) = Rational{Int}[12//7, 11//4, 29//13, 39//19, 21//8, 57//17, 74//13, 17//14, 53//35, 25//14]

function feasible(s::Strategy_2124315B_225, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_226 | Store 2 | tick 12 ──────────────────────────────
# To maximize profit while remaining competitive, I'm slightly adjusting our prices to undercut the competitor on key goods where we've seen consistent sales, such as milk and bread. This strategy should attract more customers without significantly impacting our overall profitability. I'll keep premium products like coffee slightly above our competitor's prices to maintain margins, as their demand is less price-sensitive. I expect this approach to stabilize our profits while potentially increasing our market share.
struct Strategy_2124315B_226 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_226) = Rational{Int}[22//13, 52//19, 20//9, 2//1, 47//18, 57//17, 23//4, 17//14, 3//2, 23//13]

function feasible(s::Strategy_2124315B_226, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_227 | Store 1 | tick 13 ──────────────────────────────
# Given our recent history of low profits and a significant loss in tick 11, it's imperative to adjust our pricing strategy to stabilize profitability. Our competitor's pricing is very close to ours, suggesting high price sensitivity among customers. To regain profitability, I will slightly increase prices on milk, cereal, and coffee where competitor prices were higher or similar, but maintain competitive pricing on essentials like bread and pasta. This approach aims to balance competitive positioning with slightly improved margins, expecting a modest profit increase.
struct Strategy_2124315B_227 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_227) = Rational{Int}[19//11, 36//13, 9//4, 39//19, 21//8, 37//11, 63//11, 16//13, 32//21, 9//5]

function feasible(s::Strategy_2124315B_227, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_228 | Store 2 | tick 13 ──────────────────────────────
# Our store has maintained steady profits over the last three ticks, suggesting our pricing strategy is competitive. Our goal is to continue maximizing profit without triggering a price war. I will slightly lower prices on milk and bread to undercut the competitor and potentially increase volume sales, while maintaining or slightly increasing prices on other items to preserve margins. I expect this strategy to attract price-sensitive customers for key staple goods, while benefiting from higher margins on other products.
struct Strategy_2124315B_228 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_228) = Rational{Int}[32//19, 11//4, 31//14, 81//40, 21//8, 37//11, 98//17, 11//9, 3//2, 16//9]

function feasible(s::Strategy_2124315B_228, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_229 | Store 1 | tick 14 ──────────────────────────────
# Given the recent decline in profits and the zero profit at tick 14, it's crucial to adjust our prices to regain profitability while remaining competitive. I'll slightly raise prices on milk, cereal, and coffee, which are currently close to our competitor's prices, to improve margins without significantly affecting demand. I'll also slightly lower the price of pasta sauce to attract more customers, using it as a strategic loss leader. This strategy aims to stabilize our profits while maintaining competitiveness.
struct Strategy_2124315B_229 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_229) = Rational{Int}[33//19, 25//9, 9//4, 39//19, 21//8, 37//11, 109//19, 11//9, 32//21, 23//13]

function feasible(s::Strategy_2124315B_229, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_230 | Store 2 | tick 14 ──────────────────────────────
# In the recent ticks, our profits have been stable and increasing slightly, suggesting our pricing strategy has been effective. However, our competitor has slightly raised some of their prices, which gives us room to increase prices on certain items while maintaining a competitive edge. I will incrementally increase prices on milk, bread, and pasta_sauce, where the competitor has consistently priced higher, to improve our profit margins. I expect this will help us sustain a healthy profit without losing too much market share.
struct Strategy_2124315B_230 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_230) = Rational{Int}[17//10, 11//4, 9//4, 81//40, 21//8, 37//11, 98//17, 11//9, 3//2, 25//14]

function feasible(s::Strategy_2124315B_230, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_231 | Store 1 | tick 15 ──────────────────────────────
# Given the recent trend of minimal profit, it is essential to adjust our prices slightly upwards to ensure positive store-level profitability. While our competitor's prices are generally lower, we must maintain a balance between competitiveness and profitability. Consequently, I've decided to increase prices on goods where we can sustain a higher margin without significantly affecting demand, such as coffee and bacon. I expect this strategy to stabilize our profits and prevent further losses while remaining competitive on key items like milk, bread, and pasta.
struct Strategy_2124315B_231 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_231) = Rational{Int}[7//4, 39//14, 43//19, 33//16, 21//8, 27//8, 52//9, 16//13, 23//15, 29//16]

function feasible(s::Strategy_2124315B_231, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_232 | Store 2 | tick 15 ──────────────────────────────
# Our recent profits have been stable and slightly increasing, suggesting that our pricing strategy is effective in maintaining profitability. However, our competitor has slightly higher prices, allowing us some room to increase our prices while still being competitive. I will slightly raise the prices of milk and coffee, which are key items with higher demand elasticity, while keeping other prices stable to improve our profit margins without risking customer attrition. This strategy aims to maintain our competitive edge and continue to grow our cumulative profit.
struct Strategy_2124315B_232 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_232) = Rational{Int}[31//18, 11//4, 9//4, 81//40, 21//8, 37//11, 52//9, 11//9, 3//2, 25//14]

function feasible(s::Strategy_2124315B_232, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_233 | Store 1 | tick 16 ──────────────────────────────
# Over the last few ticks, our profits have been negligible, indicating that our current pricing strategy is not sustainable. To return to profitability, I will increase prices slightly across most goods to better align with our competitor's pricing and cover costs. However, I will maintain competitive pricing on key items like milk and cereal to draw in customers. This balanced approach aims to improve profit margins while maintaining customer traffic.
struct Strategy_2124315B_233 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_233) = Rational{Int}[30//17, 14//5, 25//11, 29//14, 21//8, 61//18, 29//5, 21//17, 20//13, 20//11]

function feasible(s::Strategy_2124315B_233, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_234 | Store 2 | tick 16 ──────────────────────────────
# Our recent strategy of maintaining competitive prices while gradually increasing them has yielded consistent profit growth. To continue this trend, I will slightly increase our prices on select items where we are still competitively lower than our competitor, such as milk and pasta sauce. This approach allows us to maximize profit without losing our competitive edge. I expect this strategy will help maintain our profitability while keeping us attractive to price-sensitive customers.
struct Strategy_2124315B_234 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_234) = Rational{Int}[19//11, 47//17, 9//4, 59//29, 21//8, 27//8, 81//14, 16//13, 53//35, 9//5]

function feasible(s::Strategy_2124315B_234, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_235 | Store 1 | tick 17 ──────────────────────────────
# Given the recent trend of zero or minimal profits, I need to adjust our pricing strategy to return to profitability while remaining competitive. Our competitor has maintained slightly lower prices, which may have impacted our sales. Consequently, I will marginally increase prices on goods where we still maintain a competitive edge and reduce prices on key items like milk and cereal to attract more customers. This balanced approach should help us regain market share and improve our profit margin.
struct Strategy_2124315B_235 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_235) = Rational{Int}[17//10, 52//19, 43//19, 47//23, 21//8, 27//8, 98//17, 11//9, 3//2, 9//5]

function feasible(s::Strategy_2124315B_235, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_236 | Store 2 | tick 17 ──────────────────────────────
# Our recent history shows consistent profits, indicating that our pricing strategy is effective. However, our competitor is gradually increasing their prices, which gives us room to adjust ours slightly upwards while still remaining competitive. This will allow us to increase our profit margins without losing significant market share. I plan to slightly raise the prices of milk, cereal, bread, and bacon to stay competitive and maintain profitability while holding other prices steady to ensure we remain attractive to cost-sensitive customers.
struct Strategy_2124315B_236 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_236) = Rational{Int}[33//19, 36//13, 43//19, 59//29, 21//8, 61//18, 81//14, 16//13, 53//35, 9//5]

function feasible(s::Strategy_2124315B_236, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_237 | Store 1 | tick 18 ──────────────────────────────
# Given the recent increase in profitability at tick 18, I aim to sustain this positive trend while staying competitive. I will slightly adjust the prices upwards for certain goods to ensure we maintain a profit, particularly those where we were previously undercut by the competitor. By keeping key items like milk and sugar slightly below the competitor's prices, I hope to attract price-sensitive customers. This strategy should help us balance between competitive pricing and maintaining sufficient margins.
struct Strategy_2124315B_237 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_237) = Rational{Int}[12//7, 47//17, 25//11, 39//19, 21//8, 27//8, 75//13, 17//14, 32//21, 25//14]

function feasible(s::Strategy_2124315B_237, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_238 | Store 2 | tick 18 ──────────────────────────────
# Based on recent history, my store experienced a significant drop in profit at tick 18, likely due to aggressive pricing by the competitor. To regain profitability, I will slightly increase the prices of milk, cereal, and coffee, as these items have shown sensitivity to price changes in the past. I will maintain competitive pricing on items like bread and sugar to attract customers, as these are staple goods that can drive store traffic. I expect this strategy to balance competitiveness with profitability, helping the store recover from the recent loss without drastically losing market share.
struct Strategy_2124315B_238 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_238) = Rational{Int}[7//4, 25//9, 43//19, 47//23, 21//8, 61//18, 93//16, 17//14, 53//35, 9//5]

function feasible(s::Strategy_2124315B_238, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_239 | Store 1 | tick 19 ──────────────────────────────
# In the recent ticks, I have seen a significant increase in profits, indicating that our pricing strategy is effective. However, our competitor is slightly undercutting us on some products. To maintain our profitability while staying competitive, I will slightly lower the prices of a few key items such as milk and cereal, which are highly competitive, to attract more customers. I will keep most other prices stable as the current strategy is yielding positive results. This should help sustain our profitability and possibly increase our market share.
struct Strategy_2124315B_239 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_239) = Rational{Int}[31//18, 36//13, 25//11, 39//19, 21//8, 27//8, 75//13, 17//14, 32//21, 25//14]

function feasible(s::Strategy_2124315B_239, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_240 | Store 2 | tick 19 ──────────────────────────────
# Given the recent drop in profit, I need to adjust prices to ensure we're not operating at a loss. My strategy is to slightly undercut our competitor on key items like milk and pasta sauce where price competition is evident, while slightly increasing prices on less elastic goods like coffee and bacon where we're still competitive. This should improve our profitability while maintaining competitiveness on essential goods. I expect this approach to stabilize our profits and regain a positive trajectory.
struct Strategy_2124315B_240 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_240) = Rational{Int}[22//13, 39//14, 25//11, 39//19, 21//8, 58//17, 35//6, 21//17, 32//21, 25//14]

function feasible(s::Strategy_2124315B_240, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_241 | Store 1 | tick 20 ──────────────────────────────
# I have observed that our recent profits have been positive, indicating that our pricing strategy is working well. However, to remain competitive, I need to slightly adjust prices on certain items to undercut our competitor and attract more customers, especially on high-demand products like milk and bread. I will keep the prices of other goods stable to maintain overall profitability and avoid a loss-leading strategy that could hurt our bottom line in consecutive periods.
struct Strategy_2124315B_241 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_241) = Rational{Int}[32//19, 25//9, 43//19, 59//29, 21//8, 27//8, 52//9, 6//5, 3//2, 16//9]

function feasible(s::Strategy_2124315B_241, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_242 | Store 2 | tick 20 ──────────────────────────────
# After experiencing a dip in profits, I have noticed that our competitor's prices were slightly lower than ours, suggesting they may be undercutting to capture more market share. To counter this, I will slightly reduce prices on key items like milk and cereal to regain competitiveness while maintaining or slightly increasing prices on others to ensure overall profitability. This balanced approach aims to increase customer traffic without sacrificing too much margin, expecting a rise in profit while avoiding sustained losses.
struct Strategy_2124315B_242 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_242) = Rational{Int}[12//7, 25//9, 43//19, 47//23, 21//8, 17//5, 29//5, 16//13, 53//35, 16//9]

function feasible(s::Strategy_2124315B_242, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_243 | Store 1 | tick 21 ──────────────────────────────
# I aim to maintain profitability while slightly undercutting the competitor to capture more market share. Our recent profits have been stable, suggesting our pricing strategy is working. However, given the competitor's recent price adjustments, I will slightly lower prices on key staple items like milk and bread, while keeping coffee and bacon prices competitive. This should help us attract price-sensitive customers without sacrificing overall profit margins.
struct Strategy_2124315B_243 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_243) = Rational{Int}[5//3, 11//4, 9//4, 39//19, 21//8, 27//8, 81//14, 19//16, 52//35, 23//13]

function feasible(s::Strategy_2124315B_243, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_244 | Store 2 | tick 21 ──────────────────────────────
# Our recent history shows fluctuating profits with some periods of zero profit, indicating we need to adjust our strategy to maximize profitability. The competitor has been slightly undercutting us on key items like milk and pasta. To regain competitive advantage, I will slightly lower prices on milk and pasta to match the competitor, while raising prices on inelastic goods like coffee where we have room to increase margins. This should help us capture more market share without sacrificing overall profitability.
struct Strategy_2124315B_244 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_244) = Rational{Int}[32//19, 25//9, 43//19, 47//23, 21//8, 17//5, 35//6, 16//13, 3//2, 25//14]

function feasible(s::Strategy_2124315B_244, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_245 | Store 1 | tick 22 ──────────────────────────────
# In recent periods, our profits have slightly declined, indicating that our prices might be too low to sustain profitability. I observed that the competitor's prices are generally higher, particularly on goods like coffee and bacon, where they do not seem to be undercutting us significantly. This suggests room for us to increase prices slightly without losing our competitive edge, especially on high-margin items like coffee. Raising prices on select goods will help us improve profitability while staying competitive on key items such as milk and bread to maintain customer interest.
struct Strategy_2124315B_245 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_245) = Rational{Int}[17//10, 39//14, 41//18, 33//16, 21//8, 61//18, 93//16, 17//14, 32//21, 9//5]

function feasible(s::Strategy_2124315B_245, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_246 | Store 2 | tick 22 ──────────────────────────────
# Our recent history shows that we have been unable to maintain consistent profits, with tick 22 showing another zero profit period. To address this and avoid sustained losses, I will slightly increase prices on key items to improve profitability while remaining competitive. I will align some prices closer to the competitor's higher priced items to capture margin without losing customers. I expect this strategy to stabilize our profit while keeping us competitive in the market.
struct Strategy_2124315B_246 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_246) = Rational{Int}[31//18, 39//14, 25//11, 33//16, 21//8, 58//17, 76//13, 5//4, 23//15, 29//16]

function feasible(s::Strategy_2124315B_246, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_247 | Store 1 | tick 23 ──────────────────────────────
# Our profit has been relatively stable, slightly increasing in the last tick. I aim to maintain competitive pricing while slightly increasing prices on products where we have room compared to the competitor, such as bacon and coffee, to maximize profit. I will keep the prices of milk and sugar slightly lower than the competitor to attract customers and prevent them from switching stores. This strategy should maintain our profitability and possibly increase our market share.
struct Strategy_2124315B_247 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_247) = Rational{Int}[22//13, 25//9, 25//11, 33//16, 21//8, 17//5, 29//5, 11//9, 32//21, 9//5]

function feasible(s::Strategy_2124315B_247, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_248 | Store 2 | tick 23 ──────────────────────────────
# Given the recent series of zero profits, it's essential to adjust our pricing strategy to avoid sustaining further losses. I will increase prices slightly above our competitor's prices on key items like milk, cereal, and bread where margins are tight, while maintaining competitive pricing on high-margin items like coffee. This strategy aims to improve profitability without losing too much market share, expecting a return to positive profits in the short term.
struct Strategy_2124315B_248 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_248) = Rational{Int}[19//11, 14//5, 16//7, 33//16, 45//17, 41//12, 41//7, 24//19, 20//13, 20//11]

function feasible(s::Strategy_2124315B_248, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_249 | Store 1 | tick 24 ──────────────────────────────
# Over the last few periods, our profits have been consistently strong, indicating that our pricing strategy is working well. Our main competitor has slightly increased their prices recently, which gives us an opportunity to maintain or slightly reduce some of our key prices to capture more market share without sacrificing overall profitability. I will keep most prices stable but slightly lower the price of milk and sugar to attract more customers and maintain our competitive edge. I expect this to sustain our profit levels while potentially increasing our customer base.
struct Strategy_2124315B_249 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_249) = Rational{Int}[32//19, 25//9, 25//11, 33//16, 21//8, 61//18, 29//5, 6//5, 32//21, 9//5]

function feasible(s::Strategy_2124315B_249, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_250 | Store 2 | tick 24 ──────────────────────────────
# Given that we have experienced four consecutive periods of zero profit, it's crucial to adjust our pricing strategy to restore profitability. I have decided to slightly increase prices across staple items while remaining competitive with our competitor's pricing. This should help cover our costs without significantly losing market share. I anticipate this strategy will stabilize our profits while maintaining a competitive stance in the market.
struct Strategy_2124315B_250 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_250) = Rational{Int}[7//4, 31//11, 23//10, 25//12, 8//3, 31//9, 47//8, 23//18, 14//9, 35//19]

function feasible(s::Strategy_2124315B_250, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_251 | Store 1 | tick 25 ──────────────────────────────
# In recent history, our profits have been stable and relatively high, suggesting that our pricing strategy is effective in maintaining competitiveness and profitability. However, our competitor has been consistently raising prices, which provides us an opportunity to slightly increase our prices without losing market share. This strategy aims to boost our profit margins while still remaining competitive, expecting that customers will not switch due to minor price increases given the competitor's higher prices.
struct Strategy_2124315B_251 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_251) = Rational{Int}[31//18, 14//5, 41//18, 29//14, 29//11, 58//17, 64//11, 16//13, 20//13, 20//11]

function feasible(s::Strategy_2124315B_251, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_252 | Store 2 | tick 25 ──────────────────────────────
# Given the consistent zero profit over the last five ticks, I need to adjust our pricing strategy to ensure profitability. Our competitor's prices have been slightly lower, which may have affected our sales volume. I will slightly reduce prices on key loss leader items like milk and sugar to increase foot traffic. I will keep other prices close to our previous levels to maintain margins. This strategy aims to attract more customers while maintaining overall profitability.
struct Strategy_2124315B_252 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_252) = Rational{Int}[22//13, 14//5, 41//18, 33//16, 45//17, 24//7, 47//8, 11//9, 23//15, 29//16]

function feasible(s::Strategy_2124315B_252, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_253 | Store 1 | tick 26 ──────────────────────────────
# Our last tick showed a significant drop in profit, likely due to increased prices that were not competitive enough against our rival. To prevent sustained losses, I will lower the prices of key items such as milk, sugar, and pasta, which are commonly perceived as staples, to attract more customers. For other items, I will slightly undercut our competitor's prices while maintaining a reasonable margin to recover profitability. This strategy aims to increase our store traffic and overall sales volume, expecting a rebound in profit while staying competitive.
struct Strategy_2124315B_253 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_253) = Rational{Int}[28//17, 25//9, 25//11, 39//19, 21//8, 17//5, 81//14, 13//11, 53//35, 25//14]

function feasible(s::Strategy_2124315B_253, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_254 | Store 2 | tick 26 ──────────────────────────────
# After sustaining several periods of zero profit, our last adjustment resulted in a positive profit. To continue this trend, I'll slightly increase prices on goods that have shown consistent demand while keeping a few key items competitively priced to attract customers. This strategy is aimed at maintaining profitability while preventing the competitor from undercutting us significantly on high-demand products.
struct Strategy_2124315B_254 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_254) = Rational{Int}[17//10, 31//11, 16//7, 23//11, 51//19, 38//11, 59//10, 5//4, 17//11, 11//6]

function feasible(s::Strategy_2124315B_254, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_255 | Store 1 | tick 27 ──────────────────────────────
# Our recent profits have seen a significant decline, especially in tick 26, indicating the need to adjust our strategy. To regain profitability, I will slightly increase prices on select goods where we have room relative to the competition, such as milk, bread, and pasta sauce, while maintaining competitive pricing on other items. This approach should help us capitalize on competitive gaps while ensuring we do not lose market share significantly, aiming for a balanced improvement in profit margins.
struct Strategy_2124315B_255 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_255) = Rational{Int}[32//19, 14//5, 16//7, 29//14, 45//17, 41//12, 64//11, 11//9, 23//15, 20//11]

function feasible(s::Strategy_2124315B_255, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_256 | Store 2 | tick 27 ──────────────────────────────
# Our recent pricing strategy has resulted in fluctuating profits, with a significant profit in tick 26 followed by no profit in tick 27. To address this, I have decided to slightly reduce prices on key competitive items like milk and eggs, which are frequently compared with our competitor's pricing, while maintaining a competitive edge. At the same time, I am increasing prices for items with less price sensitivity such as coffee and bacon to improve our profit margins. This approach should help us retain customer interest with attractive prices on essentials while boosting profits on other goods.
struct Strategy_2124315B_256 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_256) = Rational{Int}[32//19, 39//14, 41//18, 33//16, 29//11, 45//13, 71//12, 6//5, 20//13, 20//11]

function feasible(s::Strategy_2124315B_256, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_257 | Store 1 | tick 28 ──────────────────────────────
# Our recent profit history shows fluctuations with a significant drop in tick 26. To stabilize profits and avoid sustained losses, I will increase prices slightly for high-cost items like coffee, bacon, and eggs. This aligns with competitive pricing while ensuring margin protection. I expect this strategy to improve profitability without losing too much market share, as our prices will still be competitive.
struct Strategy_2124315B_257 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_257) = Rational{Int}[17//10, 45//16, 41//18, 29//14, 77//29, 38//11, 76//13, 11//9, 20//13, 11//6]

function feasible(s::Strategy_2124315B_257, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_258 | Store 2 | tick 28 ──────────────────────────────
# To ensure profitability while maintaining competitiveness, I will marginally increase prices on certain items where we have been closely matched with our competitor, such as milk and eggs. This will help offset any potential losses from other goods priced aggressively to attract customers, like sugar and pasta sauce. My focus is on striking a balance between competitive pricing and sustaining positive profit margins, which is vital given our recent fluctuation in profits.
struct Strategy_2124315B_258 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_258) = Rational{Int}[31//18, 45//16, 41//18, 29//14, 77//29, 31//9, 59//10, 19//16, 32//21, 9//5]

function feasible(s::Strategy_2124315B_258, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_259 | Store 1 | tick 29 ──────────────────────────────
# Given the recent decline in profits, particularly the minimal profit in tick 29, it's evident that our pricing strategy needs adjustment to avoid sustained negative profits. I will slightly reduce prices on popular items such as milk, cereal, and pasta to increase sales volume and remain competitive. Meanwhile, I will maintain or slightly increase prices on goods where we still have room to match or slightly undercut competitors without losing profitability. The goal is to attract more customers with competitive pricing on staple items while maintaining overall store profitability.
struct Strategy_2124315B_259 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_259) = Rational{Int}[32//19, 25//9, 16//7, 29//14, 45//17, 31//9, 47//8, 6//5, 23//15, 29//16]

function feasible(s::Strategy_2124315B_259, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_260 | Store 2 | tick 29 ──────────────────────────────
# I have observed that our profitability has been positive recently, and our prices are competitive with our rival. I will maintain a similar price strategy with slight reductions on select items to attract more customers while ensuring overall profitability. This strategy should help us maintain our profit momentum and potentially capture more market share.
struct Strategy_2124315B_260 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_260) = Rational{Int}[12//7, 14//5, 41//18, 29//14, 45//17, 24//7, 53//9, 13//11, 23//15, 29//16]

function feasible(s::Strategy_2124315B_260, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_261 | Store 1 | tick 30 ──────────────────────────────
# In recent periods, I have achieved strong profits, especially in the latest tick, despite a slight dip in tick 29. The competitor's prices are slightly higher in most categories, which suggests an opportunity to maintain a competitive edge with marginally lower prices while still ensuring profitability. I will continue with a competitive pricing strategy but slightly increase prices on key items like coffee and bacon to boost profit margins, given that the competitor has consistently priced higher in these areas. This approach should maintain our customer base while ensuring sustained profitability.
struct Strategy_2124315B_261 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_261) = Rational{Int}[17//10, 39//14, 41//18, 33//16, 45//17, 45//13, 59//10, 6//5, 20//13, 20//11]

function feasible(s::Strategy_2124315B_261, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_262 | Store 2 | tick 30 ──────────────────────────────
# Given the recent history of volatile profits and a near-zero profit in the last tick, I aim to stabilize profitability by slightly increasing prices on goods with close competition, such as milk and cereal, to reduce the risk of losses. I'm maintaining competitive pricing on key attractors like coffee and sugar to sustain customer traffic. This strategy should balance retaining market share while improving profit margins, aiming for a consistent profit without driving away price-sensitive customers.
struct Strategy_2124315B_262 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_262) = Rational{Int}[19//11, 31//11, 16//7, 25//12, 8//3, 41//12, 65//11, 17//14, 20//13, 11//6]

function feasible(s::Strategy_2124315B_262, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_263 | Store 1 | tick 31 ──────────────────────────────
# Our recent performance shows a rebound in profits, indicating that our current pricing strategy is effective. The competitor's prices are slightly higher, which gives us room to maintain competitive pricing while ensuring profitability. I will slightly increase the prices of milk and eggs to align more closely with the competitor, while keeping other prices steady to maintain our profit margins. This should help us sustain our current profitability without losing our competitive edge.
struct Strategy_2124315B_263 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_263) = Rational{Int}[31//18, 14//5, 41//18, 33//16, 77//29, 45//13, 59//10, 6//5, 20//13, 20//11]

function feasible(s::Strategy_2124315B_263, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_264 | Store 2 | tick 31 ──────────────────────────────
# To address the recent trend of zero profit and stay competitive, I will primarily match or slightly undercut the competitor on key items like milk, cereal, and bread, where small price differences can influence customer choice. I will slightly increase prices on higher-margin items like coffee and sugar to ensure profitability without losing competitiveness. This strategy aims to prevent sustained losses while capturing market share on essential goods, expecting to balance volume and margin for a positive outcome.
struct Strategy_2124315B_264 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_264) = Rational{Int}[17//10, 25//9, 41//18, 33//16, 45//17, 31//9, 83//14, 11//9, 23//15, 20//11]

function feasible(s::Strategy_2124315B_264, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_265 | Store 1 | tick 32 ──────────────────────────────
# Given the recent inconsistent profit performance with a significant drop at tick 32, I aim to stabilize and increase profitability by slightly increasing prices on goods where we are closely aligned with the competitor, such as milk and pasta. Simultaneously, I will maintain competitive pricing on key traffic drivers like cereal and bread to retain customer interest. This strategy should help us mitigate losses while positioning us for better profit margins in the upcoming periods.
struct Strategy_2124315B_265 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_265) = Rational{Int}[33//19, 39//14, 23//10, 25//12, 51//19, 73//21, 71//12, 6//5, 17//11, 35//19]

function feasible(s::Strategy_2124315B_265, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_266 | Store 2 | tick 32 ──────────────────────────────
# Given the recent profitability and competitive pricing strategy, I aim to slightly increase prices on key items to maintain profitability while remaining competitive. Our competitor has slightly increased their prices, especially on milk and cereal, which allows room for us to adjust prices similarly without risking loss in market share. I expect these adjustments to sustain our profits while avoiding another period of loss, balancing the need to stay competitive and profitable.
struct Strategy_2124315B_266 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_266) = Rational{Int}[12//7, 45//16, 16//7, 29//14, 77//29, 38//11, 71//12, 17//14, 17//11, 11//6]

function feasible(s::Strategy_2124315B_266, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_267 | Store 1 | tick 33 ──────────────────────────────
# We have experienced a significant drop in profits over the last two ticks, indicating increased competition. I will lower prices slightly on high-traffic items like milk and bread to attract more customers while keeping other prices competitive to maintain overall profitability. This strategy aims to increase customer footfall and boost sales volumes, thus recovering profits without engaging in a price war.
struct Strategy_2124315B_267 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_267) = Rational{Int}[22//13, 25//9, 9//4, 21//10, 27//10, 38//11, 59//10, 19//16, 32//21, 9//5]

function feasible(s::Strategy_2124315B_267, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_268 | Store 2 | tick 33 ──────────────────────────────
# Given the recent trends, I aim to balance competitive pricing with maintaining profitability. We have seen fluctuating profits, with some dips into negative territory. To avoid prolonged losses, I'm slightly increasing prices on milk and eggs since our competitor has been raising theirs. I expect this will improve our margins without losing too much market share, as the competitor's prices are also higher this tick.
struct Strategy_2124315B_268 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_268) = Rational{Int}[7//4, 14//5, 16//7, 29//14, 51//19, 38//11, 71//12, 17//14, 20//13, 11//6]

function feasible(s::Strategy_2124315B_268, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_269 | Store 1 | tick 34 ──────────────────────────────
# After experiencing two periods of low profits, followed by a significant profit recovery in the last tick, I aim to stabilize our profitability by slightly increasing prices on key goods while maintaining competitive pricing on others. My strategy is to keep our prices close to the competitor's to retain market share while ensuring each product contributes positively to the bottom line. This approach should help us avoid sustained losses and build a more consistent profit trend going forward.
struct Strategy_2124315B_269 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_269) = Rational{Int}[19//11, 14//5, 16//7, 25//12, 51//19, 52//15, 65//11, 17//14, 20//13, 20//11]

function feasible(s::Strategy_2124315B_269, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_270 | Store 2 | tick 34 ──────────────────────────────
# Given the recent history of alternating between high profits and zero profit, I aim to stabilize our profitability. I will slightly reduce prices on competitive items like milk and cereal to regain market share lost to competitors, while maintaining or slightly increasing prices on less price-sensitive goods like coffee and pasta sauce. This strategy should help balance between attracting more customers and maintaining profitability, ultimately leading to sustained positive profits.
struct Strategy_2124315B_270 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_270) = Rational{Int}[17//10, 25//9, 16//7, 25//12, 8//3, 38//11, 83//14, 6//5, 20//13, 35//19]

function feasible(s::Strategy_2124315B_270, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_271 | Store 1 | tick 35 ──────────────────────────────
# Given that our recent history shows fluctuating profits with the last tick barely breaking even, I aim to adjust our prices to stabilize and increase our store's profitability. Our competitor's prices suggest an opportunity for us to slightly undercut on high-margin items like coffee and bacon while maintaining competitive pricing on other staples like milk and cereal to attract more customers. By carefully balancing competitive pricing and slightly increasing our margins on select goods, I expect to enhance our store's appeal and improve profits without incurring prolonged losses.
struct Strategy_2124315B_271 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_271) = Rational{Int}[31//18, 39//14, 41//18, 29//14, 8//3, 31//9, 53//9, 19//16, 23//15, 29//16]

function feasible(s::Strategy_2124315B_271, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_272 | Store 2 | tick 35 ──────────────────────────────
# I aim to maintain profitability while staying competitive. Our recent profits suggest we are well-positioned, but the zero profit in ticks 31 and 34 indicates potential room for improvement or competitive pressure. I will slightly raise prices on coffee, a high-margin item, while being mindful to not price ourselves out of the market. I will also maintain competitive pricing on staples like milk and bread to attract and retain customers. This approach should help ensure profitability without losing market share.
struct Strategy_2124315B_272 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_272) = Rational{Int}[12//7, 39//14, 41//18, 33//16, 77//29, 45//13, 113//19, 17//14, 23//15, 11//6]

function feasible(s::Strategy_2124315B_272, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_273 | Store 1 | tick 36 ──────────────────────────────
# Given the recent history of significant profits, I aim to maintain a competitive edge while ensuring profitability. I've noted that the competitor slightly undercuts or matches our prices. To counter this, I will slightly adjust our prices upward for high-demand items like milk and cereal, while keeping some prices like sugar and pasta lower to attract value-conscious customers. This strategy balances maintaining our profit margins and attracting customers with key loss leaders, expecting to sustain profitability and compete effectively.
struct Strategy_2124315B_273 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_273) = Rational{Int}[33//19, 31//11, 23//10, 23//11, 35//13, 45//13, 71//12, 13//11, 32//21, 20//11]

function feasible(s::Strategy_2124315B_273, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_274 | Store 2 | tick 36 ──────────────────────────────
# To address the recent dip in profits, I will slightly increase the prices on key products where we are close to our competitor's pricing, such as milk, butter, and pasta sauce, to avoid sustained losses. We will keep prices competitive on high-margin items like coffee and eggs to maintain customer interest. By adjusting these prices, I aim to improve our profit margins while remaining attractive to price-sensitive customers, expecting a stabilization in profits.
struct Strategy_2124315B_274 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_274) = Rational{Int}[19//11, 14//5, 41//18, 29//14, 8//3, 52//15, 95//16, 6//5, 20//13, 35//19]

function feasible(s::Strategy_2124315B_274, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_275 | Store 1 | tick 37 ──────────────────────────────
# Our recent profit history suggests that we've been able to maintain profitability despite some fluctuations. We should continue to stay competitive, especially on key staples like milk and bread, where our prices have been slightly higher than the competitor. By slightly decreasing the prices of milk and bread while keeping other prices stable or slightly increased, we can attract more customers without significantly impacting overall profitability. This strategy should allow us to maintain a healthy profit margin while gaining a competitive edge in the market.
struct Strategy_2124315B_275 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_275) = Rational{Int}[17//10, 45//16, 25//11, 23//11, 51//19, 38//11, 83//14, 13//11, 23//15, 11//6]

function feasible(s::Strategy_2124315B_275, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_276 | Store 2 | tick 37 ──────────────────────────────
# To maximize profit while maintaining competitiveness, I will adjust our prices slightly above our competitor's prices where we can sustain it, and slightly below where we're losing market share. Our focus is to ensure we are not pricing ourselves out of the market while avoiding prolonged losses. This strategy aims to stabilize and increase our profit margins without triggering a price war.
struct Strategy_2124315B_276 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_276) = Rational{Int}[7//4, 17//6, 16//7, 23//11, 27//10, 73//21, 83//14, 19//16, 17//11, 24//13]

function feasible(s::Strategy_2124315B_276, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_277 | Store 1 | tick 38 ──────────────────────────────
# Given our recent performance, we have been able to maintain profitability with some fluctuations. Observing the competitor's pricing, they have slightly increased their prices for key items like milk and cereal. To remain competitive while maximizing profit, I will slightly increase prices on high-margin items like bacon and coffee, where we still have some room compared to the competitor. I will also adjust prices slightly upward on milk and pasta sauce to match the competitor, ensuring we do not lose market share. This strategy should help maintain our profit levels while staying competitive.
struct Strategy_2124315B_277 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_277) = Rational{Int}[33//19, 31//11, 16//7, 23//11, 35//13, 73//21, 113//19, 6//5, 20//13, 35//19]

function feasible(s::Strategy_2124315B_277, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_278 | Store 2 | tick 38 ──────────────────────────────
# To address the recent zero profit outcomes, I will slightly increase prices on high-volume items like milk and cereal where our competitor has been pricing lower. This should help improve our profit margin while still remaining competitive. I'll maintain competitive pricing on key items like eggs, bread, and bacon to attract customers. I expect this adjustment to stabilize profits while preventing further zero-profit periods.
struct Strategy_2124315B_278 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_278) = Rational{Int}[30//17, 54//19, 41//18, 25//12, 51//19, 52//15, 71//12, 6//5, 23//15, 35//19]

function feasible(s::Strategy_2124315B_278, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_279 | Store 1 | tick 39 ──────────────────────────────
# Our recent history shows strong profitability, and we have managed to maintain competitive pricing with our competitor while still generating significant profits. This suggests we have some flexibility to adjust prices slightly to maximize profit. I will slightly raise prices on a few key items where we're closely priced with the competitor, like milk and cereal, to test if we can improve margins without significantly impacting sales volume. This approach should help us maintain high profitability while remaining competitive.
struct Strategy_2124315B_279 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_279) = Rational{Int}[7//4, 17//6, 16//7, 21//10, 35//13, 122//35, 137//23, 19//16, 17//11, 35//19]

function feasible(s::Strategy_2124315B_279, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_280 | Store 2 | tick 39 ──────────────────────────────
# Given the recent history, we experienced a period of zero profit but have since returned to modest profitability. To prevent sustained losses and maintain a competitive edge, I will slightly increase prices on items where we have been undercut, such as milk and bread, while maintaining competitive pricing on key items like coffee and bacon. This approach aims to stabilize our profits while matching the competitor on popular products, expecting to attract more customers without incurring significant losses.
struct Strategy_2124315B_280 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_280) = Rational{Int}[7//4, 31//11, 23//10, 23//11, 27//10, 45//13, 71//12, 17//14, 17//11, 24//13]

function feasible(s::Strategy_2124315B_280, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_281 | Store 1 | tick 40 ──────────────────────────────
# Our profits have shown variability with a significant dip in tick 37, but overall we are maintaining positive profitability. To ensure we don't sustain losses, I will slightly increase prices on a few items like coffee and bacon where our prices are lower or equal to the competitor, while maintaining competitive pricing on other items like milk and eggs. This strategy balances maintaining competitiveness with ensuring profitability, expecting to stabilize our profits above the wholesale cost while capturing consumer interest with strategic pricing.
struct Strategy_2124315B_281 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_281) = Rational{Int}[30//17, 31//11, 16//7, 25//12, 35//13, 7//2, 173//29, 13//11, 20//13, 35//19]

function feasible(s::Strategy_2124315B_281, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_282 | Store 2 | tick 40 ──────────────────────────────
# Given the recent trend in profits, it is crucial to maintain our competitive edge while ensuring profitability. Our prices have been generally competitive with the competitor's pricing, and we've seen a good recovery from the zero profit in tick 38. I will slightly adjust prices for milk, cereal, and eggs to maintain competitiveness while increasing the price of coffee, as it seems less elastic. This strategy aims to capitalize on less price-sensitive items while remaining competitive on essentials, expecting a balanced outcome maintaining profitability.
struct Strategy_2124315B_282 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_282) = Rational{Int}[33//19, 45//16, 23//10, 25//12, 51//19, 45//13, 113//19, 19//16, 20//13, 24//13]

function feasible(s::Strategy_2124315B_282, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_283 | Store 1 | tick 41 ──────────────────────────────
# Given the sharp decline in profit in the last period, I need to adjust prices to regain profitability. Competitor prices are very close to ours, suggesting a need to differentiate strategically. I will increase prices slightly on the staple goods like milk, cereal, and eggs, while maintaining competitive pricing on coffee and bacon, which are high-margin products. This strategy aims to improve profit margins without losing too much market share, expecting to stabilize our store's finances.
struct Strategy_2124315B_283 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_283) = Rational{Int}[9//5, 37//13, 16//7, 21//10, 19//7, 74//21, 113//19, 19//16, 14//9, 13//7]

function feasible(s::Strategy_2124315B_283, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_284 | Store 2 | tick 41 ──────────────────────────────
# Over the past few ticks, we've recovered from a zero-profit period and are now seeing strong profitability. Our competitor's prices have been slightly above ours, suggesting our competitive pricing is effective. I will maintain a similar pricing strategy with slight adjustments to remain competitive and sustain profitability, particularly focusing on not undercutting significantly in products like milk and bacon where we have a competitive edge. This strategy should help us continue capturing market share without risking consecutive losses.
struct Strategy_2124315B_284 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_284) = Rational{Int}[7//4, 17//6, 23//10, 23//11, 27//10, 52//15, 95//16, 6//5, 17//11, 13//7]

function feasible(s::Strategy_2124315B_284, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_285 | Store 1 | tick 42 ──────────────────────────────
# Given the recent trend of decreasing profits, I will increase prices slightly on high-margin items like coffee and bacon to stabilize profitability. I will also price some goods like bread and pasta slightly below competitor levels to attract customers and compensate through increased volume. This mixed strategy aims to regain profitability while maintaining competitive edge in critical products, expecting a balanced outcome of improved profit margins and sustained customer traffic.
struct Strategy_2124315B_285 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_285) = Rational{Int}[16//9, 54//19, 25//11, 21//10, 27//10, 39//11, 6//1, 13//11, 20//13, 24//13]

function feasible(s::Strategy_2124315B_285, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_286 | Store 2 | tick 42 ──────────────────────────────
# In recent ticks, our profits have consistently increased, indicating that our pricing strategy is effective. However, the competitor has started to raise some of their prices slightly above ours. To maintain our competitive edge and continue maximizing profit, I will slightly increase prices on key items like milk and coffee where we have room, while keeping other prices competitive. This should help us stay profitable without risking customer loss due to higher prices.
struct Strategy_2124315B_286 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_286) = Rational{Int}[30//17, 37//13, 23//10, 21//10, 19//7, 73//21, 113//19, 17//14, 14//9, 13//7]

function feasible(s::Strategy_2124315B_286, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_287 | Store 1 | tick 43 ──────────────────────────────
# After sustaining two consecutive periods of minimal profit, our last period showed a significant recovery, suggesting that our price adjustments were effective. The competitor's prices are slightly lower for most goods, indicating a competitive market. To continue maximizing profit while maintaining competitiveness, I will slightly increase prices on items like bread, bacon, and coffee, which have shown stable demand. At the same time, I will slightly reduce the price of pasta to capitalize on its potential as a loss leader, attracting more customers and potentially increasing overall sales volume.
struct Strategy_2124315B_287 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_287) = Rational{Int}[23//13, 54//19, 30//13, 21//10, 19//7, 32//9, 247//41, 19//16, 32//21, 13//7]

function feasible(s::Strategy_2124315B_287, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_288 | Store 2 | tick 43 ──────────────────────────────
# I observe that our recent profit has been volatile, with a significant drop last period. This suggests we need to adjust prices to be more competitive while ensuring profitability. The competitor has slightly increased their prices, and I will strategically keep our prices slightly below theirs to capture more market share, particularly on high-margin items like coffee and bacon. By focusing on maintaining a balance between competitive pricing and profit margin, I expect to stabilize and increase our profit in the upcoming period.
struct Strategy_2124315B_288 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_288) = Rational{Int}[7//4, 17//6, 16//7, 23//11, 27//10, 122//35, 95//16, 19//16, 20//13, 24//13]

function feasible(s::Strategy_2124315B_288, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_289 | Store 1 | tick 44 ──────────────────────────────
# Given the brief loss in profit at tick 44, I need to adjust prices to ensure profitability while remaining competitive. I will slightly increase prices on items where I have room above the competitor, specifically bacon and coffee, where I have been slightly higher but still competitive. I will maintain or slightly reduce prices on items like milk and cereal, where the competitor is close, to attract price-sensitive customers. This strategic adjustment aims to balance maintaining market share with boosting profitability, expecting a moderate increase in profit while retaining customers.
struct Strategy_2124315B_289 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_289) = Rational{Int}[30//17, 31//11, 41//18, 23//11, 27//10, 43//12, 115//19, 7//6, 23//15, 24//13]

function feasible(s::Strategy_2124315B_289, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_290 | Store 2 | tick 44 ──────────────────────────────
# Our recent history shows profitable periods with only one instance of reduced profit. To maintain competitiveness while ensuring profits, I will slightly undercut our competitor's prices on high-margin items like coffee and bacon while matching or slightly exceeding on others. This strategy should attract price-sensitive customers while maintaining a healthy margin overall. I expect this approach to sustain our profit levels and potentially increase our market share.
struct Strategy_2124315B_290 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_290) = Rational{Int}[33//19, 17//6, 30//13, 23//11, 27//10, 73//21, 83//14, 6//5, 17//11, 24//13]

function feasible(s::Strategy_2124315B_290, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_291 | Store 1 | tick 45 ──────────────────────────────
# Given the recent fluctuations in profits and the competitive pricing from our rival, I aim to stabilize our profit by making strategic price adjustments. Some items will see a slight increase to cover costs and ensure profitability, while maintaining competitive pricing on key items to attract customers. This approach should balance the risk of losing sales with the need to avoid consecutive periods of negative profits, ultimately improving our cumulative profit over time.
struct Strategy_2124315B_291 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_291) = Rational{Int}[7//4, 54//19, 16//7, 19//9, 49//18, 25//7, 139//23, 13//11, 20//13, 13//7]

function feasible(s::Strategy_2124315B_291, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_292 | Store 2 | tick 45 ──────────────────────────────
# The recent dip in profit on tick 43 suggests that my prices may have been slightly misaligned with consumer demand or competitor pricing. To ensure consistent profitability, I will slightly raise prices on items where the competitor has a higher price, such as bacon and coffee, to capture more value without losing competitiveness. I will keep some prices slightly below the competitor's, leveraging them as loss leaders to attract customers. This balanced approach aims to maintain overall profitability while remaining competitive in the market.
struct Strategy_2124315B_292 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_292) = Rational{Int}[7//4, 54//19, 23//10, 21//10, 19//7, 7//2, 173//29, 19//16, 17//11, 13//7]

function feasible(s::Strategy_2124315B_292, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_293 | Store 1 | tick 46 ──────────────────────────────
# In recent periods, we have managed to maintain profitability, but there have been instances of very low profit margins. The competitor's prices are very close to ours, and in some cases, slightly lower. To mitigate the risk of losing market share, I will slightly reduce the prices of key goods where our competition is undercutting us, such as milk and bacon, while maintaining or slightly increasing prices on goods where we've seen consistent sales, like coffee. This balanced approach should help us stay competitive and sustain profitability.
struct Strategy_2124315B_293 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_293) = Rational{Int}[33//19, 17//6, 16//7, 19//9, 49//18, 39//11, 97//16, 13//11, 23//15, 24//13]

function feasible(s::Strategy_2124315B_293, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_294 | Store 2 | tick 46 ──────────────────────────────
# I have noticed that while our profits have been mostly stable, there was a significant drop in tick 43. Our competitor has been maintaining slightly higher prices on most items, and we can leverage this by slightly undercutting them to capture more market share. By pricing strategically around their levels, I aim to maximize our profit without triggering a price war. I expect this approach to stabilize our profit margins while maintaining competitive advantage.
struct Strategy_2124315B_294 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_294) = Rational{Int}[33//19, 17//6, 41//18, 25//12, 35//13, 123//35, 71//12, 13//11, 23//15, 24//13]

function feasible(s::Strategy_2124315B_294, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_295 | Store 1 | tick 47 ──────────────────────────────
# Our recent profits have been inconsistent, with a significant dip in tick 47, suggesting a need to adjust prices to stabilize profits. I will increase prices marginally, especially on items like coffee and bacon where competitors have lower prices, to prevent sustained losses. Additionally, I'll use sugar as a loss leader to attract customers, as it's a common staple and our price matches the competitor's. This strategy aims to increase profitability while maintaining competitive pricing overall.
struct Strategy_2124315B_295 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_295) = Rational{Int}[30//17, 37//13, 23//10, 17//8, 30//11, 18//5, 61//10, 1//1, 17//11, 13//7]

function feasible(s::Strategy_2124315B_295, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_296 | Store 2 | tick 47 ──────────────────────────────
# Our recent pricing strategy has been effective, maintaining profitability while slightly undercutting our competitor on key items like milk and cereal. To continue this trend, I will keep our prices competitive, slightly adjusting them to maintain a small edge over our competitor. This should sustain our profitability while attracting price-sensitive customers, without incurring significant losses on any item.
struct Strategy_2124315B_296 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_296) = Rational{Int}[19//11, 31//11, 41//18, 23//11, 27//10, 7//2, 65//11, 7//6, 32//21, 35//19]

function feasible(s::Strategy_2124315B_296, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_297 | Store 1 | tick 48 ──────────────────────────────
# Given the recent fluctuations in profit, I aim to stabilize our earnings while remaining competitive. I notice our competitor is slightly undercutting us on key items like coffee and bacon, which may have impacted our profits. I'll slightly reduce prices on milk and bread, which are staples, to attract customers while increasing prices on high-margin items like coffee and bacon to improve profitability. I expect this strategy will maintain customer interest and increase our overall profit.
struct Strategy_2124315B_297 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_297) = Rational{Int}[33//19, 17//6, 41//18, 17//8, 30//11, 29//8, 80//13, 20//19, 14//9, 15//8]

function feasible(s::Strategy_2124315B_297, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_298 | Store 2 | tick 48 ──────────────────────────────
# Our recent pricing strategy has been yielding positive profits, though we have seen fluctuations. I aim to maintain competitive pricing while slightly increasing prices on some items where we are undercut by the competitor but still maintain an edge. This will help sustain profitability without significant risk of losing customers. I expect this approach to stabilize our profits by balancing competitiveness with margin improvements.
struct Strategy_2124315B_298 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_298) = Rational{Int}[7//4, 54//19, 23//10, 21//10, 19//7, 74//21, 113//19, 13//11, 23//15, 24//13]

function feasible(s::Strategy_2124315B_298, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_299 | Store 1 | tick 49 ──────────────────────────────
# In the past few ticks, we experienced a significant drop in profit followed by a recovery, indicating that my current pricing strategy is mostly effective but needs slight adjustments. I noticed that our competitor has been setting competitive prices, especially on bacon and coffee, which are key products. To maximize our profits while ensuring competitiveness, I will slightly increase prices on high-demand items like bacon and coffee, while maintaining competitive pricing on others. This should help sustain profitability without losing significant market share.
struct Strategy_2124315B_299 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_299) = Rational{Int}[7//4, 37//13, 23//10, 19//9, 49//18, 40//11, 68//11, 17//16, 11//7, 15//8]

function feasible(s::Strategy_2124315B_299, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end


# ── Strategy_2124315B_300 | Store 2 | tick 49 ──────────────────────────────
# To maintain profitability while remaining competitive, I slightly increased prices on high-margin items like coffee and bacon, which have consistently been priced lower than our competitor. I also aligned milk and cereal prices more closely with our competitor's to capture market share without triggering a price war. This strategy aims to boost profit margins on key items while remaining attractive to customers on essential goods, expecting to see a steady profit increase.
struct Strategy_2124315B_300 <: PricingStrategy
    number::Int
    tick_created::Int
end

get_prices(s::Strategy_2124315B_300) = Rational{Int}[33//19, 54//19, 16//7, 19//9, 49//18, 39//11, 6//1, 19//16, 20//13, 15//8]

function feasible(s::Strategy_2124315B_300, budget::Int64, consumer::Consumer, bundle::Bundle)
    prices = get_prices(s)
    best_u = -Inf
    best_x = zeros(Int, length(bundle.goods))
    for x in ALL_BASKETS
        if dot(prices, x) ≤ budget
            u = dot(consumer.a, x) + 0.5 * (x' * bundle.B * x) - dot(prices, x)
            if u > best_u
                best_u = u
                best_x = copy(x)
            end
        end
    end
    return best_u, best_x
end

