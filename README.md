# Promoting Developer Apps

A portable **Agent Skill** (and Agent Plugin) that turns any AI host — Cursor, ChatGPT, Claude, Codex, Copilot, and others — into a launch, advertising, funding, and talent-sales studio for developer products.

This is not a website and it has **no login, signup, user accounts, or admin**. Install the skill; the host already knows who is chatting. The agent follows the skill.

## What it does

When you ask to promote an app or website, the agent:

1. Fills a **campaign brief**
2. Picks one of **four intensities**: Whisper → Signal → Pulse → Blitz
3. Builds a **channel plan** with **Free** and **Paid** catalogs kept separate
4. Can generate **docs and video briefs** four ways (repo walk, interview, capture replay, parallel studio)
5. Can open a **funding / crowdfunding** track or a **sell the app / sell talent** track

It **plans** campaigns. It does not open Google Ads or Meta and spend money. It does not manage users of this skill.

Public repo: [github.com/klsteele64-tech/promoting-developer-apps](https://github.com/klsteele64-tech/promoting-developer-apps)

## Install (any host that reads Agent Skills)

```bash
git clone https://github.com/klsteele64-tech/promoting-developer-apps.git
```

Copy `skills/promoting-developer-apps/` into that product's skills directory.

| Host | Path or action |
|------|----------------|
| Cursor | Plugin install, or `~/.cursor/skills/promoting-developer-apps/` |
| ChatGPT / Codex | Upload the skill zip, or `codex plugin marketplace add klsteele64-tech/promoting-developer-apps` |
| Claude Code | `claude plugin marketplace add klsteele64-tech/promoting-developer-apps` |
| Generic Agent Skills | Any client that loads `SKILL.md` folders |

Full store-by-store steps: [MARKETPLACE.md](MARKETPLACE.md).

## Use

```
Build a marketing campaign for my app.
Compare free vs paid ads for this product.
Give me all four rollout strategies and recommend one.
Generate docs and a video brief from this repo.
Draft a Kickstarter / angel funding plan.
Help me sell this app or package my freelance offer.
```

In Cursor, slash commands: `/launch-campaign`, `/ad-channels`, `/rollout-plan`, `/launch-content`, `/funding-plan`, `/sell-app-or-talent`.

## Package layout

```
plugin.json                         Agent Plugins 1.0 (Cursor, ChatGPT, Copilot, …)
.cursor-plugin/plugin.json          Cursor marketplace manifest
.codex-plugin/plugin.json           ChatGPT / Codex plugin manifest
.claude-plugin/plugin.json          Claude Code plugin manifest
.agents/plugins/marketplace.json    Local ChatGPT / Codex catalog entry
skills/promoting-developer-apps/    The skill (SKILL.md + catalogs + templates)
commands/                           Cursor slash commands
```

## Validate

```bash
bash skills/promoting-developer-apps/scripts/validate.sh
```

## License

MIT
