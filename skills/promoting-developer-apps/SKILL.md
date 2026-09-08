---
name: promoting-developer-apps
description: Use when a developer needs to promote an app or website, plan free or paid advertising, choose a launch from soft rollout to hard blitz, write app documentation, create a walkthrough or demo video, raise crowdfunding or other funding, or sell the app or their development talent.
license: MIT
metadata:
  author: Dev Launch Campaign
  version: "1.2.0"
  category: marketing
---

# Promoting Developer Apps

Build a go-to-market package for a developer app, site, or talent offer. Use this skill's catalogs and templates. Do not invent a blended "just post everywhere" plan.

Plans campaigns only. Does not place live ads.

This is a marketplace skill, not a web app. Do not add, propose, or scaffold login, signup, user accounts, sessions, roles, or an admin console. The host already identifies the person running the chat.

Docs and walkthroughs are **subagents of this skill**, not sibling marketplace skills. The parent dispatches them. It does not implement those files itself.

## Intake

Ask only what is still unknown. Inspect README / landing copy first if present.

Product, one-sentence job, URL/repo, one ICP, offer (free/freemium/paid/OSS/talent/for-sale), goal, budget band ($0 / <500 / 500–5k / 5k+), constraints, intensity (or "recommend").

Write [assets/campaign-brief.md](assets/campaign-brief.md). Missing product facts: [references/interview-intake.md](references/interview-intake.md).

## Workflow

1. Brief.
2. One primary goal + **one** intensity. Name the other three as alternatives; do not run all four unless asked.
3. Load [references/ad-channels-free.md](references/ad-channels-free.md) and [references/ad-channels-paid.md](references/ad-channels-paid.md). Split **Free** vs **Paid**.
4. Load [references/rollout-playbooks.md](references/rollout-playbooks.md) for the chosen mode.
5. Docs requested or missing → dispatch **docs-agent** ([subagents/docs-agent.md](subagents/docs-agent.md)). Walkthrough/video requested → dispatch **video-agent** ([subagents/video-agent.md](subagents/video-agent.md)). Method picker: [references/content-studio.md](references/content-studio.md).
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

Docs = the seven-file set from **docs-agent**. Video = playable `walkthrough/index.html` from **video-agent**. Say MP4 only if one was exported.

## Deliverables (this order)

1. Campaign brief
2. Marketing plan — [assets/marketing-plan.md](assets/marketing-plan.md)
3. Channel plan (Free, then Paid) — [assets/channel-plan.md](assets/channel-plan.md)
4. 14-day calendar — [assets/launch-calendar.md](assets/launch-calendar.md)
5. Documents and/or walkthrough if relevant — dispatch docs-agent / video-agent
6. Funding or sales pack if relevant — [assets/funding-pitch.md](assets/funding-pitch.md), [assets/talent-offer.md](assets/talent-offer.md)

One-slice asks: that slice + the brief.

## Subagents

Required content agents (this skill owns them):

| Agent | When | Instructions | Output |
|-------|------|--------------|--------|
| docs-agent | Docs requested or missing | [subagents/docs-agent.md](subagents/docs-agent.md), [references/doc-set.md](references/doc-set.md) | Seven files under `docs/app/` |
| video-agent | Walkthrough or video requested | [subagents/video-agent.md](subagents/video-agent.md), [references/walkthrough-production.md](references/walkthrough-production.md), [assets/player.html](assets/player.html) | `walkthrough/index.html` + scenes + SRT + script |

If the host can spawn subagents, spawn those two with the instruction files above. Cursor also discovers `agents/docs-agent.md` and `agents/video-agent.md` at the plugin root.

If the host cannot spawn, the parent still runs each instruction file as an **isolated pass** (separate from channel planning). Do not inline docs or video into the campaign write-up.

Optional named roles (no extra files): channel-scout, rollout-planner, funding-agent.

Parent synthesizes. Children do not invent channels, UI, or metrics.

## Mistakes

| Mistake | Fix |
|---------|-----|
| Blended promo list | Split Free / Paid |
| Over cap | Use the table |
| No ICP | One segment, one sentence |
| Fake ROAS | Ranges + kill criteria |
| "Video done" | HTML player is a walkthrough; MP4 only if exported |
| Outline-only docs | Dispatch docs-agent; write the seven files |
| Ads on $0 | Empty Paid table |
| Blitz, no proof | Downgrade |
| Sibling docs/video skills | Those are subagents of this skill |
| Login / admin / accounts | Out of scope — this is a skill |

Red flags: "blast PH and ads", paid on $0, medical/financial/crypto performance claims. Downgrade and say why.
