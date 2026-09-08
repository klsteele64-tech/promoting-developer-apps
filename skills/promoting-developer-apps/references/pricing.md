# Pricing experiments

Use when the offer is paid, freemium, or the goal is revenue. The parent dispatches **pricing-agent**. This is a plan, not a billing integration.

## One offer first

Write the **current** SKU in one line: `{name} — {what you get} — {price or UNKNOWN}`.

Do not invent willingness-to-pay, conversion %, or “the market pays $X”.

## Intensity

| Mode | Pricing move |
|------|----------------|
| Whisper | One offer. No public A/B. |
| Signal | One live price + **one** named alternative (not shipped). |
| Pulse | One 2-week test: price **or** trial length **or** SKU count — not all three. |
| Blitz | Do not change price in the launch window. Freeze the offer. |

## Allowed tests (pick one)

| Test | Change | Kill |
|------|--------|------|
| Price | One higher or lower number | 2 weeks, no lift in paid starts, revert |
| Trial | 7 vs 14 days (or none vs 7) | Trial starts up, paid starts down → revert |
| SKU | Add one Team/Pro seat or remove a junk tier | Support load or confusion → drop |

Freemium: the free tier must reach first success. Paid is a limit or extra job, not a wall before value.

## Honesty

- Competitor prices stay UNKNOWN unless the user supplied them.
- “Unlimited” and “lifetime” need a must-not-claim check.
- Talent and product sale are two SKUs (talent-and-sales). Do not blend into one price card.
