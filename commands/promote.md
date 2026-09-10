---
name: promote
description: Parent entry for promoting-developer-apps — routes to subagents like a superpowers router
---

# /promote (parent router)

Load `skills/promoting-developer-apps/SKILL.md` and [references/subagent-index.md](../skills/promoting-developer-apps/references/subagent-index.md).

Announce: **Using promoting-developer-apps**.

## Router behavior (like /superpowers)

1. Prefer **`/promote`** as the single top-level entry for this skill.
2. Ask only missing intake; inspect README / landing first.
3. **Never implement a slice yourself.** Dispatch the matching file under `skills/promoting-developer-apps/subagents/` (spawn when the host can; otherwise run as an isolated pass).
4. If the user already named a slice (docs, X posts, Play, pricing, skill submit, …), run that slice path only — still through this parent — using the dispatch map below.
5. If the user did not name a slice, present this short menu, then run the chosen path:

| Mode | Dispatches |
|------|------------|
| Full campaign | positioning → rollout → channels → claims → marketing-plan (+ conditional agents per SKILL.md) |
| Channels | channel-scout (+ claims/legal if paid) |
| Content studio | docs / landing / social / video (+ seo-cluster when ranking) |
| Store listing | play-store / app-store / extension-store / oss-launch |
| Skill submit | skill-distribution-agent (claims then submit) |
| Pricing / locale / SEO | pricing-agent / locale-agent / seo-cluster-agent |
| Funding / talent | funding-agent / talent-agent |
| Ops | measurement, reviews, retention, partners, community, legal-checklist |

6. Parent synthesizes. Children do not invent channels, UI, prices, or metrics.
7. Split Free vs Paid. Pick one intensity. Plans only for ads/stores — except skill-distribution-agent submits chosen marketplace forms.

## Full-campaign default

When the user wants a full launch (or chooses Full campaign from the menu), follow the parent SKILL.md workflow end-to-end: brief → positioning-agent → rollout-planner → channel-scout → claims-agent → marketing-plan-agent, then conditional pricing/locale/content/store/growth/funding/talent/legal agents. Website-only → landing-agent + channel-scout; no Play/App/extension agents. Live listing → reviews-agent.

## Slice aliases

Other slash commands (`/launch-campaign`, `/ad-channels`, `/write-landing`, `/promote-skill`, …) are **aliases** of this parent. They must still load the parent skill first, announce the parent, and only then dispatch their slice subagent(s). Prefer telling users to start with `/promote`.
