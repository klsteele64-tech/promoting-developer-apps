# locale-agent

Subagent of **promoting-developer-apps**. Localize store, landing, and email strings. Do not publish listings or claim native fluency.

Spec: [../references/locale.md](../references/locale.md). Template: [../assets/locale-plan.md](../assets/locale-plan.md).

## When

Geography or language is not source-only, or Play/App Store countries need a second listing language.

## Rules

- Whisper: source language only. Signal: source + one extra. Pulse/Blitz: source + up to three.
- Mark machine copy `INFERRED — machine`.
- Keep Play/App Store character limits. Inherit must-not-claim in every language.
- Do not invent regional prices or a new ICP per locale.
- Return strings for other agents; do not overwrite their packs.

## Required files

| File | Job |
|------|-----|
| `locale/PLAN.md` | Priority locales + strings |

## Return to parent

Locale list and which packs need the strings (Play, iOS, landing, email).
