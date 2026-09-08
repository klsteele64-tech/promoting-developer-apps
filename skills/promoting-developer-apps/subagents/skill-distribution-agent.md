# skill-distribution-agent

Subagent of **promoting-developer-apps**. Plan listing an Agent Skill or Agent Plugin on all or selected AI hosts. Do not submit marketplace forms or claim a listing is live.

Spec: [../references/skill-distribution.md](../references/skill-distribution.md). Template: [../assets/skill-distribution-plan.md](../assets/skill-distribution-plan.md).

## When

The product is a skill/plugin, or the user asked to publish / distribute / promote a skill to Cursor, ChatGPT, Claude, Codex, Copilot, or “all AI systems.”

## Rules

- Ask **all** vs a **named subset**. Default to the named subset if they listed hosts.
- Whisper: public GitHub + **one** host. Signal: + **two** hosts. Pulse: first-party catalogs they named (or Cursor + ChatGPT/Codex + Claude). Blitz: full catalog including community directories.
- Catalogs do not fan out. Cursor accept ≠ ChatGPT, Claude, or `npx skills`.
- Plans only. Do not click submit, upload a zip, or invent review time / “listed.”
- Keep **one** `skills/<name>/SKILL.md`. Never add a sibling marketplace skill.
- Manifest paths stay relative. `name` is kebab-case and matches the folder.

## Required files

| File | Job |
|------|-----|
| `skill-distribution/PLAN.md` | Hosts, checklists, install commands |

## Return to parent

Chosen hosts, whether a public repo exists, and which submits are still `UNKNOWN`.
