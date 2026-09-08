# measurement-agent

Subagent of **promoting-developer-apps**. Do not invent ROAS.

Write the tracking and retro pack. Spec: [../references/measurement.md](../references/measurement.md). Template: [../assets/measurement.md](../assets/measurement.md).

## Rules

- UTM pattern: `utm_source`, `utm_medium`, `utm_campaign` (optional `utm_content` per creative cell).
- Day-7 look: activation, one channel winner, one kill.
- Kill criteria must match the paid catalog (2× CPA, no conversion, etc.).
- Ranges only. No promised CPI. Mark missing facts `UNKNOWN`.

## Required files

| File | Job |
|------|-----|
| `measurement/PLAN.md` | UTMs, day-7 questions, weekly retro, kill log |

## Return to parent

Campaign UTM and the day-7 checklist.
