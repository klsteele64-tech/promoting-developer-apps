# Changelog

## 1.8.1 — 2026-09-08

- Close dispatch holes: one-slice store, paid, website, funding, and skill-submit paths now run **claims-agent** and/or **legal-checklist-agent**
- Add `/promote-website` (landing + channels; no Play/App/extension agents)
- Deliverables name runtime files (`positioning/POSITIONING.md`, `campaign/CHANNEL-PLAN.md`, `claims/CHECK.md`) instead of empty templates
- Fix Cursor `agents/positioning-agent.md` so it loads `subagents/positioning-agent.md`
- Store, channel-scout, skill-distribution, and partner agents return legal/claims handoffs
- Landing, social, email, press, OSS, and store agents inherit must-not-claim
- Docs templates now include features, FAQ, changelog, and support
- `validate.sh` checks agent load paths, legal/claims command wiring, runtime deliverable names, and marketplace.json versions

## 1.8.0 — 2026-09-08

- Add **talent-agent** (sell-app / sell-talent / two SKUs). `/sell-app-or-talent` now loads the parent skill and dispatches it
- Add **marketing-plan-agent** to own `marketing/PLAN.md` after positioning, intensity, channels, and claims
- Parent workflow now dispatches **legal-checklist-agent** on store, paid row, funding, or public sale
- Pulse/Blitz full campaigns also dispatch measurement, press-kit, and retention
- Catalog honesty: Microsoft Store / Steam / itch / F-Droid / JetBrains listing packs are `UNLISTED` (no store agent). “All AI systems” = the skill-distribution table, not every host
- Intake asks budget, intensity, live listing, and privacy/terms URLs
- `validate.sh` requires every subagent, matching `agents/*.md`, and every slash command
- Submit script runs `npx skills add` in a temp dir so it does not install into the skill repo
- Website-only campaigns skip store agents; live listing dispatches reviews-agent
- Legal checklist feeds UNKNOWN privacy/terms into ChatGPT public-directory `blocked-on-missing-field`
