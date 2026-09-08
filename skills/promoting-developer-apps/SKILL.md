---
name: promoting-developer-apps
description: Use when a developer needs to promote an app or website, plan free or paid advertising, choose a launch intensity, write docs, landing, emails, or launch posts, localize store listings, plan pricing tests or an SEO article cluster, create a walkthrough video, promote a Google Play, App Store, or extension listing, launch OSS, raise funding, sell the app or their talent, or submit an Agent Skill to Cursor, ChatGPT, Claude, or other AI marketplaces.
license: MIT
metadata:
  author: Dev Launch Campaign
  version: "1.8.1"
  category: marketing
---

# Promoting Developer Apps

Build a go-to-market package for a developer app, site, or talent offer. Use this skill's catalogs and templates. Do not invent a blended "just post everywhere" plan.

Plans campaigns only. Does not place live ads or publish to app stores. **Exception:** skill-distribution-agent submits skill-marketplace forms for chosen AI hosts.

This is a marketplace skill, not a web app. Do not add login, signup, user accounts, sessions, roles, or an admin console.

Every specialized slice is a **subagent of this skill**. The parent dispatches. It does not implement those files itself. Dispatch map: [references/subagent-index.md](references/subagent-index.md).

## Intake

Ask only what is still unknown. Inspect README / landing copy first if present.

Product, one-sentence job, URL/repo, one ICP, offer (free/freemium/paid/OSS/talent/for-sale), surface (app / website / skill / oss / talent), goal, budget band ($0 / <500 / 500–5k / 5k+), constraints, intensity (or "recommend"), store (none / Play / App Store / extension / both), listing already live, privacy/terms URLs or UNKNOWN.

Write [assets/campaign-brief.md](assets/campaign-brief.md). Missing facts: [references/interview-intake.md](references/interview-intake.md).

## Workflow

1. Brief.
2. Dispatch **positioning-agent** if the line / vs / must-not-claim is missing ([subagents/positioning-agent.md](subagents/positioning-agent.md)).
3. One primary goal + **one** intensity via **rollout-planner** ([subagents/rollout-planner.md](subagents/rollout-planner.md)). Name the other three; do not run all four unless asked.
4. **channel-scout** ([subagents/channel-scout.md](subagents/channel-scout.md)) using [references/ad-channels-free.md](references/ad-channels-free.md) and [references/ad-channels-paid.md](references/ad-channels-paid.md). Split **Free** vs **Paid**.
5. **claims-agent** ([subagents/claims-agent.md](subagents/claims-agent.md)) before any paid or store row.
6. Paid/freemium or revenue goal → **pricing-agent** ([subagents/pricing-agent.md](subagents/pricing-agent.md)). Extra languages or store countries → **locale-agent** ([subagents/locale-agent.md](subagents/locale-agent.md)).
7. **marketing-plan-agent** ([subagents/marketing-plan-agent.md](subagents/marketing-plan-agent.md)) synthesizes positioning + intensity + channels + claims. Do not emit an empty `assets/marketing-plan.md`.
8. Content / store / growth slices → dispatch only the agents that apply (table below). SEO / “docs that rank” → **seo-cluster-agent**. Pulse/Blitz → **measurement-agent**, **press-kit-agent**, **retention-agent**. Method picker: [references/content-studio.md](references/content-studio.md).
9. Product is a skill/plugin, or “publish / submit to AI hosts” → **skill-distribution-agent** ([subagents/skill-distribution-agent.md](subagents/skill-distribution-agent.md)). Ask all vs named hosts, then **submit** each chosen form or CLI. “All AI systems” = the catalog table, not every host on earth.
10. Money goal → **funding-agent**. Talent or sale → **talent-agent** ([subagents/talent-agent.md](subagents/talent-agent.md)).
11. Store, paid row, funding, or a public sale listing → **legal-checklist-agent** ([subagents/legal-checklist-agent.md](subagents/legal-checklist-agent.md)). One-slice slash commands (`/promote-play-store-app`, `/ad-channels`, `/funding-plan`, `/promote-website`, …) still run this step. Do not skip because the user asked for one slice.
12. Website-only (store = none, or surface = website): **landing-agent** + **channel-scout**. SEO / “docs that rank” → **seo-cluster-agent**. Launch posts → **social-agent**. Do not dispatch play/app/extension store agents. Command: `/promote-website`.
13. Live listing → **reviews-agent**.
14. Filled runtime files (`marketing/PLAN.md`, `positioning/POSITIONING.md`, `campaign/CHANNEL-PLAN.md`, …) win over empty `assets/` templates. Do not re-emit a blank template on top of a filled pack. Emit any remaining unused templates only if that slice never ran.

## Intensities

| Mode | Name | When | Paid | Cap |
|------|------|------|------|-----|
| 1 | Whisper | Unproven, learning | None | 3 free |
| 2 | Signal | Public proof, one stage | $0–500 optional | 6 free |
| 3 | Pulse | Known ICP, 2–6 weeks | $500–5k typical | 10 total, ≤4 paid |
| 4 | Blitz | Proven + launch window | $5k+ | 14 total |

Recommend softer when proof is thin. Rules: [references/rollout-playbooks.md](references/rollout-playbooks.md).

## Channel rules

- Every channel must be in a catalog or labeled `UNLISTED` with a reason.
- Never mix free and paid in one list.
- Each pick: why this product, asset, CTA, metric, first action this week.
- Paid also: objective, daily cap, kill criterion.
- $0 budget → Paid table is `NONE — budget $0`.

## Content methods (pick one)

| | Name | When |
|---|------|------|
| A | Repo walk | Code or site in workspace |
| B | Founder interview | Thin repo |
| C | Capture replay | User can record a happy path |
| D | Parallel studio | Docs + video + landing + social at once |

Docs = **docs-agent**. Video = **video-agent** (`walkthrough/index.html`). Landing/posts = **landing-agent** / **social-agent**. Play = **play-store-agent**. iOS = **app-store-agent**. Say MP4 only if exported. Say a listing is live only if the user already published it.

## Deliverables (this order)

1. Campaign brief — fill [assets/campaign-brief.md](assets/campaign-brief.md)
2. Positioning — `positioning/POSITIONING.md` (template [assets/positioning.md](assets/positioning.md))
3. Marketing plan — `marketing/PLAN.md` (template [assets/marketing-plan.md](assets/marketing-plan.md))
4. Channel plan — `campaign/CHANNEL-PLAN.md` (template [assets/channel-plan.md](assets/channel-plan.md))
5. Intensity + 14-day calendar — `campaign/INTENSITY.md`, `campaign/CALENDAR.md` (template [assets/launch-calendar.md](assets/launch-calendar.md))
6. Claims check — `claims/CHECK.md` (template [assets/claims-check.md](assets/claims-check.md))
7. Relevant subagent packs (docs, video, landing, social, stores, locale, pricing, SEO cluster, skill distribution, email, press, measurement, …)
8. Funding or talent pack if relevant — `funding/PITCH.md`, `talent/OFFER.md`

One-slice asks: that slice + the brief. Store, paid, funding, sale, or skill-submit slices still run claims and/or legal-checklist as in the workflow.

## Subagents

| Agent | When | Instructions | Output |
|-------|------|--------------|--------|
| positioning-agent | Line missing | [subagents/positioning-agent.md](subagents/positioning-agent.md) | `positioning/POSITIONING.md` |
| rollout-planner | Intensity | [subagents/rollout-planner.md](subagents/rollout-planner.md) | `campaign/INTENSITY.md`, calendar |
| channel-scout | Channels | [subagents/channel-scout.md](subagents/channel-scout.md) | `campaign/CHANNEL-PLAN.md` |
| claims-agent | Before paid/store | [subagents/claims-agent.md](subagents/claims-agent.md) | `claims/CHECK.md` |
| docs-agent | Docs | [subagents/docs-agent.md](subagents/docs-agent.md) | `docs/app/` ×7 |
| video-agent | Walkthrough | [subagents/video-agent.md](subagents/video-agent.md) | `walkthrough/` |
| landing-agent | Landing / OG / vs | [subagents/landing-agent.md](subagents/landing-agent.md) | `landing/` |
| social-agent | Launch posts | [subagents/social-agent.md](subagents/social-agent.md) | `social/PACK.md` |
| changelog-agent | Ship notes | [subagents/changelog-agent.md](subagents/changelog-agent.md) | `changelog/SHIP-NOTES.md` |
| email-agent | Mail sequence | [subagents/email-agent.md](subagents/email-agent.md) | `email/SEQUENCE.md` |
| press-kit-agent | Press / Pulse+ | [subagents/press-kit-agent.md](subagents/press-kit-agent.md) | `press/KIT.md` |
| creative-agent | Creatives | [subagents/creative-agent.md](subagents/creative-agent.md) | `creative/MATRIX.md` |
| play-store-agent | Google Play | [subagents/play-store-agent.md](subagents/play-store-agent.md) | `play-store/` |
| app-store-agent | Apple App Store | [subagents/app-store-agent.md](subagents/app-store-agent.md) | `app-store/` |
| extension-store-agent | Chrome / Firefox / Edge | [subagents/extension-store-agent.md](subagents/extension-store-agent.md) | `extension-store/` |
| oss-launch-agent | OSS / CLI | [subagents/oss-launch-agent.md](subagents/oss-launch-agent.md) | `oss/PLAN.md` |
| measurement-agent | Tracking / Pulse+ | [subagents/measurement-agent.md](subagents/measurement-agent.md) | `measurement/PLAN.md` |
| reviews-agent | Live listing | [subagents/reviews-agent.md](subagents/reviews-agent.md) | `reviews/PLAYBOOK.md` |
| retention-agent | Users / Pulse+ | [subagents/retention-agent.md](subagents/retention-agent.md) | `retention/PLAN.md` |
| partner-agent | Affiliates | [subagents/partner-agent.md](subagents/partner-agent.md) | `partners/PACK.md` |
| community-agent | Discord / Slack | [subagents/community-agent.md](subagents/community-agent.md) | `community/OPS.md` |
| funding-agent | Money goal | [subagents/funding-agent.md](subagents/funding-agent.md) | `funding/PITCH.md` |
| legal-checklist-agent | Store / ads / funding / sale | [subagents/legal-checklist-agent.md](subagents/legal-checklist-agent.md) | `legal/CHECKLIST.md` |
| locale-agent | Extra languages / countries | [subagents/locale-agent.md](subagents/locale-agent.md) | `locale/PLAN.md` |
| pricing-agent | Paid / freemium / revenue | [subagents/pricing-agent.md](subagents/pricing-agent.md) | `pricing/PLAN.md` |
| seo-cluster-agent | SEO / docs that rank | [subagents/seo-cluster-agent.md](subagents/seo-cluster-agent.md) | `seo/CLUSTER.md` |
| marketing-plan-agent | After core campaign | [subagents/marketing-plan-agent.md](subagents/marketing-plan-agent.md) | `marketing/PLAN.md` |
| skill-distribution-agent | Skill / plugin to AI hosts | [subagents/skill-distribution-agent.md](subagents/skill-distribution-agent.md) | `skill-distribution/PLAN.md`, `SUBMISSIONS.md` |
| talent-agent | Sell app or talent | [subagents/talent-agent.md](subagents/talent-agent.md) | `talent/OFFER.md` |

If the host can spawn, spawn those agents. Cursor also loads `agents/*.md`. If it cannot spawn, run each instruction file as an **isolated pass**.

Parent synthesizes. Children do not invent channels, UI, or metrics.

## Mistakes

| Mistake | Fix |
|---------|-----|
| Blended promo list | Split Free / Paid |
| Over cap | Use the table |
| No ICP | Positioning-agent |
| Fake ROAS / CPI / rank | Ranges + claims-agent |
| "Video done" | HTML player; MP4 only if exported |
| Outline-only docs | Dispatch docs-agent |
| Ads on $0 | Empty Paid table |
| Blitz, no proof | Downgrade |
| Sibling extra skills | Subagents of this skill |
| Fake reviews | reviews-agent rules |
| Drafted legal contracts | Checklist only |
| Login / admin / accounts | Out of scope |
| Invented WTP / regional prices | pricing-agent / locale-agent |
| Invented volume / rank | seo-cluster-agent |
| Cursor accept = all AI catalogs | skill-distribution-agent |
| Plan-only when user said submit | Run submit script + each host form |
| Talent / sale inlined in parent | talent-agent |
| Empty marketing-plan template | marketing-plan-agent after core |
| Paid / store / sale without legal | legal-checklist-agent |
| One-slice store/paid/website without claims or legal | Still run claims-agent and legal-checklist-agent |
| Website ask dispatched Play/App/extension agents | store = none; `/promote-website` |
| Steam / Microsoft Store as if a store agent exists | UNLISTED listing pack |
| Every AI host on earth | Catalog table only |

Red flags: "blast PH and ads", paid on $0, medical/financial/crypto performance claims. Downgrade and say why.
