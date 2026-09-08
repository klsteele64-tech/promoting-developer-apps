# Skill distribution across AI hosts

Use when the product is an Agent Skill or Agent Plugin, or the user asked to put it on AI systems. The parent dispatches **skill-distribution-agent**.

Plans distribution. Does not submit Cursor / OpenAI / Claude forms. Does not claim a catalog listing is live.

## All vs selected

Ask once: **all catalog hosts** or a **named list**. Write only those rows.

Default if they said “everywhere”: Pulse/Blitz = full table. Whisper/Signal = do not dump every host — apply the intensity cap.

## How many hosts

| Intensity | Hosts |
|-----------|-------|
| Whisper | Public GitHub (required) + **one** host (local install or one submit) |
| Signal | Public GitHub + **two** hosts |
| Pulse | Named first-party catalogs (default: Cursor + ChatGPT/Codex + Claude) |
| Blitz | Full catalog: first-party + community (`cursor.directory`) + `npx skills` |

No public repo → stop at “make the repo public” + local install. Do not invent a marketplace URL.

## Host catalog

| Host | What users see | How to list | Cursor accept lists it? |
|------|----------------|-------------|-------------------------|
| Cursor official | Customize → Browse Marketplace | [cursor.com/marketplace/publish](https://cursor.com/marketplace/publish) | Yes, after review |
| cursor.directory | Community directory only | Submit at [cursor.directory](https://cursor.directory) | No |
| ChatGPT / Codex | Upload skill, Codex plugin catalog | Zip (`scripts/pack-chatgpt-skill.sh`) or `codex plugin marketplace add owner/repo`; public directory = OpenAI portal | No |
| Claude Code | `/plugin` marketplace | `claude plugin marketplace add owner/repo` then `claude plugin install <name>` | No |
| Generic Agent Skills | That host’s skills folder | Copy `skills/<name>/` (needs `SKILL.md`) | No |
| `npx skills` / skills.sh | Installer CLI | `npx skills add owner/repo` | No |
| Copilot / VS Code / Kiro | Host plugin UI | Root `plugin.json` (Agent Plugins 1.0). Host-specific store if they have one | No |
| Team marketplace | One org only | Cursor Dashboard → Plugins (Teams/Enterprise) | No |

Each chosen row: why this host, manifest file, first action this week, proof of listed (`UNKNOWN` until the user confirms).

## Package checklist (any host)

- One skill folder: `skills/<kebab-name>/SKILL.md`
- `description` starts with `Use when`, ≤1024 chars
- Root `plugin.json` for Agent Plugins hosts
- Cursor overlay: `.cursor-plugin/plugin.json` (`skills`, `commands`, `agents` if used)
- Codex overlay: `.codex-plugin/plugin.json` + starter prompts
- Claude overlay: `.claude-plugin/plugin.json` (+ marketplace.json if they ship a catalog)
- `README.md` with clone + per-host install
- Logo relative path if claimed
- No login, signup, accounts, or admin in the skill

## Honesty

- Acceptance on one catalog does not update the others. Say that in the plan.
- Review time stays `UNKNOWN`. No invented SLA.
- Local symlink (`~/.cursor/plugins/local/…`) is not a marketplace listing.
- Do not paste another vendor’s marketplace legal terms. Point at their publish URL.
- Must-not-claim: “listed on ChatGPT because Cursor accepted it.”
