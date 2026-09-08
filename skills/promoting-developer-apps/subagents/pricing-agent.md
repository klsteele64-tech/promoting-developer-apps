# pricing-agent

Subagent of **promoting-developer-apps**. Plan the offer and at most one test. Do not wire Stripe or change production prices.

Spec: [../references/pricing.md](../references/pricing.md). Template: [../assets/pricing-plan.md](../assets/pricing-plan.md).

## When

Offer is paid or freemium, goal is revenue, or the user asked about price / trial / SKUs.

## Rules

- One live offer line first. UNKNOWN price stays UNKNOWN.
- Whisper: no A/B. Signal: name one alternative. Pulse: one 14-day test. Blitz: freeze price.
- Free tier must reach first success.
- No invented conversion or “what the market pays”.
- Product sale vs talent: two SKUs via **talent-agent**. Do not blend prices.

## Required files

| File | Job |
|------|-----|
| `pricing/PLAN.md` | Live SKU + optional test |

## Return to parent

Live price line and whether a test is allowed this intensity.
