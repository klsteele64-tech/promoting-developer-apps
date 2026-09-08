# Promoting Developer Apps

A portable **Agent Skill** (and Agent Plugin) that turns any AI host — Cursor, ChatGPT, Claude, Codex, Copilot, and others — into a launch, advertising, funding, and talent-sales studio for developer products.

This is not a website and it has **no login, signup, user accounts, or admin**. Install the skill; the host already knows who is chatting. The agent follows the skill.

## What it does

When you ask to promote an app or website, the parent skill:

1. Fills a **campaign brief** and **positioning** line
2. Picks one of **four intensities**: Whisper → Signal → Pulse → Blitz
3. Builds a **channel plan** (Free then Paid) via **channel-scout**
4. Runs a **claims check** before paid or store copy
5. Dispatches **subagents** for the slices you need:
   - Docs, landing, launch posts, emails, press kit, creative matrix
   - Locale strings, pricing tests, SEO article cluster
   - Playable walkthrough video
   - Google Play, Apple App Store, Chrome/Firefox/Edge, OSS launch
   - Measurement, reviews, retention, partners, community
   - Funding / crowdfunding, or sell the app / talent
   - Legal **checklist** only (not contracts)

It **plans** campaigns. It does not buy ads or publish to stores.

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
Write landing copy and launch posts.
Promote my Google Play / App Store / Chrome extension.
Launch this OSS library.
Draft a Kickstarter plan.
Help me sell this app or package my freelance offer.
```

In Cursor, slash commands include `/launch-campaign`, `/ad-channels`, `/rollout-plan`, `/write-landing`, `/write-launch-posts`, `/localize-listings`, `/pricing-plan`, `/seo-cluster`, `/promote-play-store-app`, `/promote-app-store`, `/promote-extension`, `/oss-launch`, `/email-sequence`, `/press-kit`, `/funding-plan`, `/sell-app-or-talent`, and the other slice commands under `commands/`.

## Package layout

```
skills/promoting-developer-apps/    Parent skill
  subagents/                        All specialized agents
  references/                       Catalogs and specs
  assets/                           Templates
agents/                             Cursor plugin agents
commands/                           Cursor slash commands
```

## Validate

```bash
bash skills/promoting-developer-apps/scripts/validate.sh
```

## License

MIT
