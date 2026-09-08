# Changelog

## 1.8.2 — 2026-09-08

- Remaining public-copy agents inherit must-not-claim: docs, video, changelog, reviews, community, retention, partner, funding, talent, skill-distribution, marketing-plan, channel-scout, pricing, creative
- `/promote-skill`, `/funding-plan`, and `/sell-app-or-talent` run **claims-agent** before listing/pitch copy; `/partner-pack` runs legal-checklist on public affiliate pages
- Landing, social, email, press, OSS, and creative tell the parent to run claims-agent when testimonials or performance numbers appear
- `validate.sh` requires all seven docs templates, must-not-claim on public-copy subagents, and claims/legal on skill-submit, funding, sale, and partner commands

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

## 1.7.0 — 2026-09-08

- **skill-distribution-agent now submits** each chosen AI marketplace (Cursor official, cursor.directory, ChatGPT/Codex, Claude CLI, `npx skills`)
- Script: `scripts/submit-skill-marketplaces.sh` packs the zip, writes filled form packets, attempts CLI adds
- Claude marketplace manifest: `.claude-plugin/marketplace.json`
- Statuses: `submitted` | `blocked-on-auth` | `blocked-on-missing-field` | `failed` | `listed` (listed only if the host confirmed)
- Web portals still need the publisher signed in; the agent fills the form and clicks Submit when a session exists

## 1.6.0 — 2026-09-08

- Add **skill-distribution-agent**: plan listing an Agent Skill / plugin on **all** or **named** AI hosts (Cursor official, cursor.directory, ChatGPT/Codex, Claude, generic Agent Skills, `npx skills`, Copilot/VS Code/Kiro, team marketplace)
- Catalogs do not fan out — Cursor accept ≠ other hosts
- Command: `/promote-skill`
- Plans only: no form submit, no invented “listed”

## 1.5.0 — 2026-09-08

- Add **locale-agent** (store/landing/email strings; intensity locale caps; machine copy marked `INFERRED — machine`)
- Add **pricing-agent** (live SKU first; Whisper no A/B; Signal one alternative; Pulse one 14-day test; Blitz freeze)
- Add **seo-cluster-agent** (pillar + supports; “Docs that rank” points at this cluster; no invented volume or rank)
- Commands: `/localize-listings`, `/pricing-plan`, `/seo-cluster`

## 1.4.0 — 2026-09-08

- Add the remaining campaign subagents: positioning, channel-scout, rollout-planner, claims, social, changelog, landing, email, press-kit, creative, measurement, Apple App Store, extension stores, OSS launch, reviews, retention, partners, community, funding-agent, legal checklist
- Dispatch map: `references/subagent-index.md`
- New slash commands for each slice; existing `/ad-channels`, `/rollout-plan`, and `/funding-plan` now dispatch those agents

## 1.3.0 — 2026-09-08

- Subagent **play-store-agent** promotes a Google Play Store Android app (listing copy, ASO, graphics brief, release tracks, Free/Paid Play plan)
- Command: `/promote-play-store-app`
- Free catalog adds Play pre-registration, testing tracks, and F-Droid; paid catalog adds Google App campaigns (Android)

## 1.2.0 — 2026-09-08

- Fold **creating-app-documents** and **creating-app-walkthroughs** into the main skill as **docs-agent** and **video-agent**
- Parent skill dispatches those subagents; they are no longer sibling marketplace skills
- Cursor plugin agents: `agents/docs-agent.md`, `agents/video-agent.md`
- Commands `/create-app-docs`, `/create-walkthrough-video`, and `/launch-content` go through the main skill

## 1.1.0 — 2026-09-08

- Feature: **creating-app-documents** writes a seven-file document set (`docs/app/`)
- Feature: **creating-app-walkthroughs** writes a playable HTML walkthrough, scenes, SRT, and script (`walkthrough/`)
- Commands: `/create-app-docs`, `/create-walkthrough-video`
- Campaign skill now hands docs and video work to those two skills

## 1.0.1 — 2026-09-08

- Scope lock: marketplace skill only — no login, signup, user accounts, or admin
- Drop install-time authentication from the local ChatGPT/Codex catalog entry
- Point install docs and manifests at the public GitHub repo

## 1.0.0 — 2026-09-08

- Initial Agent Skills + Agent Plugins package
- Free and paid advertising catalogs
- Four rollout intensities (whisper, signal, pulse, blitz)
- Four content-studio methods (repo walk, interview, capture replay, parallel studio)
- Funding / crowdfunding and app-or-talent sales tracks
- Manifests for Cursor, ChatGPT/Codex, Claude, and generic Agent Plugins hosts
