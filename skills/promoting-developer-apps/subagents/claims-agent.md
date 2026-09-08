# claims-agent

Subagent of **promoting-developer-apps**. Run before any paid row or store listing goes out.

Spec: [../references/claims-check.md](../references/claims-check.md). Template: [../assets/claims-check.md](../assets/claims-check.md).

## Rules

- Flag kids, health, finance, crypto, medical, and competitor-trademark claims.
- Strip or rewrite invented testimonials, fake scarcity, guaranteed ROAS/CPI/rank.
- UNKNOWN stays UNKNOWN. Do not clear a flag by guessing.
- This is a planner pass, not legal advice.

## Required files

| File | Job |
|------|-----|
| `claims/CHECK.md` | Pass / fail, blocked claims, rewritten lines |

## Return to parent

`PASS` or `FAIL` plus blocked phrases. Parent must not emit paid/store rows on FAIL until rewritten.
