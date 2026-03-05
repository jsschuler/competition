# LLM Grocery Bertrand Project Handoff

## Purpose
This note is a resume point for both a human researcher and a large language model. It captures the current modeling decisions, what has already been settled, what remains open, and what the next coding steps should be.

The project is a repeated, two-store, multi-product Bertrand competition model in which LLMs act as pricing agents. The environment is intentionally small and computationally manageable so it can be implemented quickly, studied systematically, and later extended.

## Core research idea
Two stores compete by setting prices over a small grocery basket. Consumers choose exactly one store per shopping trip and then choose a basket of goods from that store. Consumer preferences reflect both standalone item values and pairwise complement/substitute structure across goods. LLMs control the stores and generate pricing strategies over time.

The point is not coordination or collusion. The framing is competitive pricing in a repeated strategic environment.

## Fit for the call for papers
Based on the call text discussed in the conversation, this project fits well because it is directly an agent-based setting in which LLMs determine agents' actions in a strategic game. The cleanest framing is:

**LLMs as strategic pricing agents in a repeated multi-product Bertrand game.**

The grocery setting is the environment, not the main contribution. The main contribution is about strategic behavior of LLMs in a repeated game.

## Modeling decisions already made

### 1. Strategic variable
This is a **Bertrand** model, not Cournot. Stores choose prices, not quantities.

### 2. Store choice
Each consumer goes to exactly **one store per shopping trip**.

### 3. Basket choice
Within a chosen store, the consumer chooses a basket over `K` goods.

### 4. Discrete basket model
The basket is binary: each good is either in the basket or not.

- `x_k = 1` means good `k` is included
- `x_k = 0` means good `k` is excluded

### 5. Utility function
The agreed discrete utility specification is:

```text
U_i(x) = a_i^T x + (1/2) x^T B x
```

where:

- `x in {0,1}^K`
- `a_i` is agent `i`'s vector of standalone values for the `K` goods
- `B` is a common symmetric `K x K` interaction matrix
- `B_kk = 0`
- `B_kell > 0` for complements
- `B_kell < 0` for substitutes
- `B_kell = 0` otherwise

This means heterogeneity comes from `a_i`, not from changing the structural complement/substitute matrix across agents.

### 6. Ordinality point
A common additive constant such as `theta_i` is unnecessary because utility is used ordinally for basket choice. It does not affect the argmax over baskets.

### 7. Consumer heterogeneity
We chose **Option 1**:

- all consumers share the same structural interaction matrix `B`
- consumers differ only in their standalone-value vectors `a_i`

### 8. Agent generation method
We chose **shopper types** rather than a pure continuous random taste distribution.

## Goods currently under consideration
The current working 10-good basket is:

1. Milk
2. Cereal
3. Bread
4. Butter
5. Eggs
6. Bacon
7. Coffee
8. Sugar
9. Pasta
10. Pasta Sauce

This list is intended to produce a few clear complement pairs and a mostly sparse cross-good structure.

## Shopper types currently proposed
The current proposed shopper types are:

1. Breakfast
2. Pantry
3. Coffee
4. Balanced

These are not sacred; they are a practical first pass.

## Proposed type-specific mean vectors
These are working values on an arbitrary utility scale.

```text
Breakfast = [8, 8, 7, 5, 8, 7, 4, 2, 3, 2]
Pantry    = [3, 2, 6, 5, 4, 3, 2, 1, 8, 8]
Coffee    = [5, 3, 4, 2, 3, 2, 8, 7, 2, 2]
Balanced  = [6, 5, 6, 4, 6, 4, 5, 3, 5, 5]
```

These numbers should be treated as placeholders for implementation, calibration, and iteration.

## Proposed type shares
Current placeholder population shares:

```text
Breakfast = 0.30
Pantry    = 0.25
Coffee    = 0.15
Balanced  = 0.30
```

## Agent generator
For each consumer agent `i`:

1. Draw a shopper type `t_i`
2. Set the mean vector to `mu^(t_i)`
3. Draw idiosyncratic noise `epsilon_i`
4. Set `a_i = mu^(t_i) + epsilon_i`
5. Optionally clip negatives to zero

A simple version is:

```text
epsilon_ik ~ Normal(0, sigma^2)
a_i = max(mu^(t_i) + epsilon_i, 0)
```

A small `sigma`, such as `0.5` or `1.0`, is a reasonable first pass.

## Net utility at a store
If store `s` posts price vector `p_s`, then consumer `i` evaluates baskets using:

```text
V_is(x) = U_i(x) - p_s^T x
```

and chooses the best basket at that store:

```text
x_is^* = argmax_{x in {0,1}^K} V_is(x)
```

The consumer then compares the best achievable value across stores and chooses the store with the higher maximized net utility.

Because `K = 10`, brute force over all baskets is easy:

```text
2^10 = 1024 baskets
```

That makes the consumer side exact and simple to code.

## Important simplification hierarchy
The project should use two nested models.

### Simpler model
A simplification of the richer one. This should help with intuition, debugging, and robustness.

A good simple baseline is:

```text
U_i(x) = a_i^T x
```

That is, no pairwise interactions.

### Richer model
The main model:

```text
U_i(x) = a_i^T x + (1/2) x^T B x
```

This lets the paper compare pricing behavior with and without explicit basket interaction structure.

## Why both models matter
Using both models helps establish that findings are not an artifact of one simulator. It also lets the paper ask whether LLMs behave differently when complements and substitutes matter explicitly.

## What the LLM store agents should eventually do
Store agents are intended to generate competitive pricing strategies over time. The near-term version should keep the action space simple:

- choose prices for all `K` goods each period

Later extensions can include:

- loss leaders
- bundle promotions
- quantity discounts
- category promotions

But prices only should come first.

## What remains open
The main unresolved object is the actual **numeric goods interaction matrix `B`**.

The sign pattern should respect an LLM-generated goods relationship matrix with entries:

- complement
- substitute
- zero / no strong direct interaction

The matrix should be symmetric with a blank or zero diagonal.

## Explicit request for a future LLM
When resuming this project, the next immediate task is to generate a realistic numeric interaction matrix for the 10 goods.

The LLM should do the following:

1. Start from the 10 current goods.
2. Produce a symmetric `10 x 10` matrix with entries in `{C, S, 0}`.
3. Keep the matrix sparse. Most pairs should be `0`.
4. Use clear grocery intuition:
   - Milk-Cereal should likely be `C`
   - Pasta-Pasta Sauce should likely be `C`
   - Coffee-Sugar should likely be `C`
   - Bread-Butter should likely be `C`
   - Eggs-Bacon should likely be `C`
5. Any substitute relationships should be few and economically plausible.
6. After producing the sign matrix, translate it into a numeric symmetric matrix `B`.
7. Use stronger positive magnitudes for strong complements, weaker negative magnitudes for substitutes, and zeros elsewhere.
8. Set the diagonal to zero.
9. Explain the economic intuition for each nonzero pair.

A good output format is:

- first: the symbolic sign matrix
- second: the numeric `B` matrix
- third: a short rationale list for the nonzero entries

## Suggested numeric conventions for B
A good first-pass convention would be:

```text
strong complement = +2.0
moderate complement = +1.0
weak substitute = -0.5
moderate substitute = -1.0
no interaction = 0.0
```

These are placeholders and can be tuned.

## Suggested coding order
1. Define the 10 goods.
2. Define shopper types and type means.
3. Generate consumer agents with type-based `a_i` vectors.
4. Generate the goods sign matrix.
5. Convert that sign matrix into numeric `B`.
6. Enumerate all baskets.
7. Write a function that computes `U_i(x)`.
8. Write a function that computes `V_is(x)` given store prices.
9. For each store and consumer, find the utility-maximizing basket.
10. Let the consumer choose the store with the higher maximized value.
11. Aggregate store demand by item.
12. Compute store revenue and profit.
13. Plug in LLM-generated price vectors.
14. Repeat over periods.

## Minimal Python pseudocode

```python
# goods
GOODS = [
    "milk", "cereal", "bread", "butter", "eggs",
    "bacon", "coffee", "sugar", "pasta", "pasta_sauce"
]

# shopper types
TYPE_MEANS = {
    "breakfast": [8, 8, 7, 5, 8, 7, 4, 2, 3, 2],
    "pantry":    [3, 2, 6, 5, 4, 3, 2, 1, 8, 8],
    "coffee":    [5, 3, 4, 2, 3, 2, 8, 7, 2, 2],
    "balanced":  [6, 5, 6, 4, 6, 4, 5, 3, 5, 5],
}

TYPE_PROBS = {
    "breakfast": 0.30,
    "pantry":    0.25,
    "coffee":    0.15,
    "balanced":  0.30,
}

# generate one agent
# draw type t
# draw epsilon
# a_i = max(mu_t + epsilon, 0)

# utility
# U_i(x) = a_i.T @ x + 0.5 * x.T @ B @ x

# net utility at store s
# V_is(x) = U_i(x) - p_s.T @ x

# choose best basket by exhaustive search over all 2^K baskets
```

## Paper framing reminder
The cleanest paper framing remains:

**Large language models as strategic pricing agents in a repeated multi-product Bertrand game.**

The grocery setting is the environment. The central contribution is the behavior of LLMs in a repeated strategic pricing game.

## Immediate next task
The next concrete task is:

**Generate the goods relationship matrix and numeric interaction matrix B.**

That is the missing object required before coding consumer choice and demand aggregation.

---

## Implementation status

The full simulation has been implemented in Julia (`competition.jl`, `server.jl`, `strategies.jl`). The following records what was completed and what was added beyond the original plan.

### Completed from plan

All 14 steps in the suggested coding order have been implemented:

- Goods, shopper types, type means, and population shares match the plan exactly.
- Consumer agents are generated with type-specific mean vectors, Normal noise (sigma=1.0), and clipping at zero.
- All 2^10 = 1024 baskets are precomputed once at startup (`ALL_BASKETS`).
- Both utility models are implemented: the simple `a'x` baseline and the full `a'x + 0.5 x'Bx`.
- The B matrix, sign matrix, wholesale costs, and rationale are generated together by an LLM call (`generate_bundle`) and symmetry/zero-diagonal are enforced programmatically.
- Consumers evaluate all baskets at each store under budget constraint, choose the store with higher maximized net utility, and their baskets aggregate into per-store revenue, cost, and profit.
- LLM-generated pricing strategies are produced each period and repeated over T_PERIODS ticks.

One minor gap from step 11: per-item demand aggregation is not separately reported (only total revenue and cost are printed). The basket data is collected and could support this easily.

### Additions beyond the plan

**Budget constraints.** Each consumer has an integer shopping budget drawn from a type-specific Normal distribution (`TYPE_BUDGETS`, `BUDGET_SIGMA`). Only baskets costing at most the budget are considered feasible. This was not in the original plan.

**Store loyalty.** A `loyal_share` parameter assigns a fraction of consumers a preferred store. Loyal consumers receive a `loyalty_bump` added to their utility for their preferred store. Not in the original plan.

**Utility noise on store choice.** A `utility_noise_sigma` parameter adds Normal noise to each consumer's store comparison, softening the hard argmax. Not in the original plan.

**Behavioral treatment arms.** `generate_strategy` accepts flags `no_loss_constraint`, `seek_nash`, `collusion`, and `threats`. These modify the LLM prompt to run different experimental conditions. The original plan called for competitive pricing first and later extensions; this jumped ahead to include multiple conditions from the start.

**Rational arithmetic.** Prices and costs are stored as `Rational{Int}` so that profit arithmetic is exact. Not discussed in the plan but a sound engineering choice.

**Memory window L.** The LLM prompt for strategy generation includes the last L periods of own prices/profits and competitor prices. This operationalizes the repeated-game information structure.

**JLD2 bundle persistence.** The generated bundle (goods, costs, B, sign matrix, rationale) is saved to a `.jld2` file and can be reloaded to make runs reproducible.

**WebSocket server and dashboard.** A full WebSocket server (`server.jl`) and browser dashboard (`dashboard.html`) were added, enabling real-time visualization of the simulation. This is entirely outside the plan's scope.

**Run ID for struct namespacing.** Each run generates a unique 8-character hex ID prepended to strategy struct names to prevent collisions when `strategies.jl` is reloaded across sessions.

### Model choice note

The implementation uses GPT-4o (OpenAI) as the pricing LLM. The plan did not specify which LLM to use. If the paper's central contribution is about LLM strategic behavior, reviewers may ask whether results generalize across models. Cross-model comparison (e.g., GPT-4o vs. Claude vs. Gemini) is a natural extension.
