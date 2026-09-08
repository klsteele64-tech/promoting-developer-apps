# Skill distribution across AI hosts

Use when the product is an Agent Skill or Agent Plugin, or the user asked to put it on AI systems. The parent dispatches **skill-distribution-agent**.

**Submit** each chosen catalog. Do not stop at a plan. Do not claim a listing is live unless that host confirmed it.

## All vs selected

Ask once: **all catalog hosts** or a **named list**. Submit only those rows.

“Submit all” / “every marketplace” / “all AI systems” → full table, even on Whisper/Signal.

Default if they said “everywhere” without “submit”: Pulse/Blitz = full table; Whisper/Signal = intensity cap unless they later say submit all.

## How many hosts (unless they said submit all)

| Intensity | Hosts |
|-----------|-------|
| Whisper | Public GitHub (required) + **one** host |
| Signal | Public GitHub + **two** hosts |
| Pulse | Named first-party catalogs (default: Cursor official + cursor.directory + ChatGPT/Codex + Claude) |
| Blitz | Full catalog |

No public repo → make it public first. Do not invent a marketplace URL.

## Before any submit

1. Run `bash skills/promoting-developer-apps/scripts/validate.sh`.
2. Run `bash scripts/submit-skill-marketplaces.sh` (packs the zip, writes packets, attempts CLI adds).
3. Then submit each chosen **web** form with the packet fields.

## Host catalog — submit path

| Host | Form or CLI | What to send | Auth |
|------|-------------|--------------|------|
| Cursor official | Open [cursor.com/marketplace/publish](https://cursor.com/marketplace/publish) while signed into the publisher’s Cursor account. Fill repo URL + name + description. Click **Submit**. | Repo `https://github.com/{owner}/{repo}`, `name`, short description from `plugin.json` | Cursor session |
| cursor.directory | Open [cursor.directory/plugins/new](https://cursor.directory/plugins/new). Sign in with GitHub or Google. Paste the GitHub repo URL. Click **Submit**. | Same repo URL. Directory auto-detects `skills/*/SKILL.md`, `agents/`, `commands/` | GitHub or Google |
| ChatGPT / Codex public directory | Open the [OpenAI plugin submission portal](https://developers.openai.com/plugins/deploy/submission). Create plugin → **Skills only**. Upload `promoting-developer-apps-skill.zip` (or `{name}-skill.zip`). Fill listing + 5 positive / 3 negative cases from `tests/marketplace-cases.md`. Submit for review. | Zip from `scripts/pack-chatgpt-skill.sh`. Starter prompts from `.codex-plugin/plugin.json` `defaultPrompt`. Type: skills-only. No MCP URL. | OpenAI org + Apps Management write + verified identity |
| ChatGPT / Codex local | `codex plugin marketplace add {owner}/{repo}` or upload the zip in ChatGPT skill settings | GitHub URL or zip | Codex/ChatGPT CLI or chat upload |
| Claude Code | Ensure `.claude-plugin/marketplace.json` exists. Run `claude plugin marketplace add {owner}/{repo}` then `claude plugin install {name}` | GitHub `owner/repo` | Claude CLI logged in as the publisher if the host requires it |
| Generic Agent Skills | Copy `skills/<name>/` into that host’s skills directory (user-local). Not a public catalog. | Folder with `SKILL.md` | Local filesystem |
| `npx skills` | `npx skills add {owner}/{repo}` — no form. Public GitHub is the listing. | `owner/repo` | Network |
| Copilot / VS Code / Kiro | Root `plugin.json` already makes the repo installable. Submit that host’s plugin store **only if they have a public form**; otherwise status `blocked-on-missing-field` (no portal). | Repo + Agent Plugins `plugin.json` | Host account |
| Team marketplace | Cursor Dashboard → Plugins → Add marketplace / import repo (Teams/Enterprise). Fill repo URL. Save. | Same GitHub URL | Cursor team admin |

Each row after the attempt: status, timestamp, confirmation text or error, URL opened.

## Fill rules for web forms

- Use facts from the repo. Do not invent privacy-policy, terms, or company legal URLs. If the portal requires them and they are missing → `blocked-on-missing-field` (tell the user the exact field).
- Logo: relative path `assets/logo.svg` or the raw GitHub URL for that file.
- Support URL: `{repo}/issues` if public Issues exist; else `UNKNOWN`.
- Website: `homepage` from `plugin.json`.
- Do not create publisher accounts. If the form requires login and no session exists → `blocked-on-auth`. Leave the packet filled so the user can sign in and the agent retries **Submit**.
- Do not paste another vendor’s legal terms into the form.

## Package checklist (any host)

- One skill folder: `skills/<kebab-name>/SKILL.md`
- `description` starts with `Use when`, ≤1024 chars
- Root `plugin.json` for Agent Plugins hosts
- Cursor overlay: `.cursor-plugin/plugin.json`
- Codex overlay: `.codex-plugin/plugin.json` + starter prompts
- Claude overlay: `.claude-plugin/plugin.json` and `.claude-plugin/marketplace.json`
- `README.md` with clone + per-host install
- Zip exists after the submit script
- No login, signup, accounts, or admin **inside the skill product**

## Honesty

- `submitted` ≠ `listed`. Review is `UNKNOWN` until the host emails or shows the listing.
- Cursor official ≠ cursor.directory ≠ ChatGPT directory. Submit each.
- Local symlink or `claude plugin marketplace add` on one machine is not a global catalog listing.
- Must-not-claim: “listed on ChatGPT because Cursor accepted it.”
