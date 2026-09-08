---
name: promoting-developer-apps
description: Use when a developer needs to promote an app or website, plan free or paid advertising, choose a launch from soft rollout to hard blitz, generate documentation or video content, raise crowdfunding or other funding, or sell the app or their development talent.
license: MIT
metadata:
  author: Dev Launch Campaign
  version: "1.0.1"
  category: marketing
---

# Promoting Developer Apps

Build a go-to-market package for a developer app, site, or talent offer. Use this skill's catalogs and templates. Do not invent a blended "just post everywhere" plan.

Plans campaigns only. Does not place live ads.

This is a marketplace skill, not a web app. Do not add, propose, or scaffold login, signup, user accounts, sessions, roles, or an admin console. The host already identifies the person running the chat.

## Intake

Ask only what is still unknown. Inspect README / landing copy first if present.

Product, one-sentence job, URL/repo, one ICP, offer (free/freemium/paid/OSS/talent/for-sale), goal, budget band ($0 / <500 / 500–5k / 5k+), constraints, intensity (or "recommend").

Write [assets/campaign-brief.md](assets/campaign-brief.md). Missing product facts: [references/interview-intake.md](references/interview-intake.md).

## Workflow

1. Brief.
2. One primary goal + **one** intensity. Name the other three as alternatives; do not run all four unless asked.
3. Load [references/ad-channels-free.md](references/ad-channels-free.md) and [references/ad-channels-paid.md](references/ad-channels-paid.md). Split **Free** vs **Paid**.
4. Load [references/rollout-playbooks.md](references/rollout-playbooks.md) for the chosen mode.
5. Docs/video requested or missing → [references/content-studio.md](references/content-studio.md), one method.
6. Money goal → [references/funding-sources.md](references/funding-sources.md) and/or [references/talent-and-sales.md](references/talent-and-sales.md).
7. Emit templates from `assets/` in the order below.

## Intensities

| Mode | Name | When | Paid | Cap |
|------|------|------|------|-----|
| 1 | Whisper | Unproven, learning | None | 3 free |
| 2 | Signal | Public proof, one stage | $0–500 optional | 6 free |
| 3 | Pulse | Known ICP, 2–6 weeks | $500–5k typical | 10 total, ≤4 paid |
| 4 | Blitz | Proven + launch window | $5k+ | 14 total |

Recommend softer when proof is thin. Rules: the playbooks file.

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
| D | Parallel studio | Docs + video + social at once |

Video = script + shot list unless the host actually rendered media.

## Deliverables (this order)

1. Campaign brief
2. Marketing plan — [assets/marketing-plan.md](assets/marketing-plan.md)
3. Channel plan (Free, then Paid) — [assets/channel-plan.md](assets/channel-plan.md)
4. 14-day calendar — [assets/launch-calendar.md](assets/launch-calendar.md)
5. Content pack if relevant — [assets/docs-outline.md](assets/docs-outline.md), [assets/video-brief.md](assets/video-brief.md)
6. Funding or sales pack if relevant — [assets/funding-pitch.md](assets/funding-pitch.md), [assets/talent-offer.md](assets/talent-offer.md)

One-slice asks: that slice + the brief.

## Subagents

If the host can spawn them: channel-scout, rollout-planner, docs-agent, video-agent, funding-agent. Parent synthesizes. Children do not invent channels or metrics.

## Mistakes

| Mistake | Fix |
|---------|-----|
| Blended promo list | Split Free / Paid |
| Over cap | Use the table |
| No ICP | One segment, one sentence |
| Fake ROAS | Ranges + kill criteria |
| "Video done" | Script unless rendered |
| Ads on $0 | Empty Paid table |
| Blitz, no proof | Downgrade |
| Login / admin / accounts | Out of scope — this is a skill |

Red flags: "blast PH and ads", paid on $0, medical/financial/crypto performance claims. Downgrade and say why.
