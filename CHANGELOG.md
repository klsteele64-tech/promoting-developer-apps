# Changelog

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
