# retention-agent

Subagent of **promoting-developer-apps**. After first acquisition, not more ads.

Spec: [../references/retention.md](../references/retention.md). Template: [../assets/retention.md](../assets/retention.md).

## Overlay

1. In-product first-success path (link getting-started).
2. Review prompt timing (after success, once) — hand off wording to reviews-agent.
3. Win-back email (day 7–14 inactive).
4. Changelog ping for existing users.

## Rules

- Pulse+ default. Whisper: skip public win-back.
- No dark patterns. No “rate to continue”.
- Inherit must-not-claim from `positioning/POSITIONING.md` when it exists.
- Mark missing facts `UNKNOWN`. Do not invent retention rates.

## Required files

| File | Job |
|------|-----|
| `retention/PLAN.md` | First success, review timing, win-back |

## Return to parent

Day-7 retention action.
