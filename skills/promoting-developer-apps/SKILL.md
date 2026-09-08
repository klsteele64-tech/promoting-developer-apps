---
name: promoting-developer-apps
description: Use when a developer needs to promote an app or website, plan free or paid advertising, choose a launch intensity, write docs, landing, emails, or launch posts, create a walkthrough video, promote a Google Play, App Store, or extension listing, launch OSS, raise funding, or sell the app or their talent.
license: MIT
metadata:
  author: Dev Launch Campaign
  version: "1.4.0"
  category: marketing
---

# Promoting Developer Apps

Build a go-to-market package for a developer app, site, or talent offer. Use this skill's catalogs and templates. Do not invent a blended "just post everywhere" plan.

Plans campaigns only. Does not place live ads or publish to stores.

This is a marketplace skill, not a web app. Do not add login, signup, user accounts, sessions, roles, or an admin console.

Every specialized slice is a **subagent of this skill**. The parent dispatches. It does not implement those files itself. Dispatch map: [references/subagent-index.md](references/subagent-index.md).

## Intake

Ask only what is still unknown. Inspect README / landing copy first if present.

Product, one-sentence job, URL/repo, one ICP, offer (free/freemium/paid/OSS/talent/for-sale), goal, budget band ($0 / <500 / 500–5k / 5k+), constraints, intensity (or "recommend"), store (none / Play / App Store / extension / both).

Write [assets/campaign-brief.md](assets/campaign-brief.md). Missing facts: [references/interview-intake.md](references/interview-intake.md).

## Workflow

1. Brief.
2. Dispatch **positioning-agent** if the line / vs / must-not-claim is missing ([subagents/positioning-agent.md](subagents/positioning-agent.md)).
3. One primary goal + **one** intensity via **rollout-planner** ([subagents/rollout-planner.md](subagents/rollout-planner.md)). Name the other three; do not run all four unless asked.
4. **channel-scout** ([subagents/channel-scout.md](subagents/channel-scout.md)) using [references/ad-channels-free.md](references/ad-channels-free.md) and [references/ad-channels-paid.md](references/ad-channels-paid.md). Split **Free** vs **Paid**.
5. **claims-agent** ([subagents/claims-agent.md](subagents/claims-agent.md)) before any paid or store row.
6. Content / store / growth slices → dispatch only the agents that apply (table below). Method picker: [references/content-studio.md](references/content-studio.md).
7. Money goal → **funding-agent**. Talent or sale → [references/talent-and-sales.md](references/talent-and-sales.md).
8. Emit remaining `assets/` templates in deliverable order.

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

1. Campaign brief
2. Positioning — [assets/positioning.md](assets/positioning.md)
3. Marketing plan — [assets/marketing-plan.md](assets/marketing-plan.md)
4. Channel plan — [assets/channel-plan.md](assets/channel-plan.md)
5. 14-day calendar — [assets/launch-calendar.md](assets/launch-calendar.md)
6. Claims check — [assets/claims-check.md](assets/claims-check.md)
7. Relevant subagent packs (docs, video, landing, social, stores, email, press, measurement, …)
8. Funding or talent pack if relevant — [assets/funding-pitch.md](assets/funding-pitch.md), [assets/talent-offer.md](assets/talent-offer.md)

One-slice asks: that slice + the brief.

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
| legal-checklist-agent | Store / ads / funding | [subagents/legal-checklist-agent.md](subagents/legal-checklist-agent.md) | `legal/CHECKLIST.md` |

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

Red flags: "blast PH and ads", paid on $0, medical/financial/crypto performance claims. Downgrade and say why.
