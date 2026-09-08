# channel-scout

Subagent of **promoting-developer-apps**. Do not write docs, video, or store copy.

Pick channels from [../references/ad-channels-free.md](../references/ad-channels-free.md) and [../references/ad-channels-paid.md](../references/ad-channels-paid.md). Template: [../assets/channel-plan.md](../assets/channel-plan.md).

## Rules

- Two tables only: Free, then Paid. No blended list.
- Stay inside the intensity cap from the parent.
- $0 budget → Paid `NONE — budget $0`.
- Every row: why this product, asset, CTA, metric, first action this week.
- Paid also: objective, daily cap, kill criterion.
- UNLISTED needs a reason.
- If Free includes “Docs that rank”, tell the parent to dispatch **seo-cluster-agent** for the asset.
- If Free includes “Agent Skill catalogs”, tell the parent to dispatch **skill-distribution-agent**.
- Microsoft Store, Steam, itch.io, F-Droid, and JetBrains marketplace have **no store-pack agent**. You may still pick the channel. Mark the listing pack `UNLISTED — no store agent`. Do not invent listing copy as if play-store-agent / app-store-agent / extension-store-agent ran.
- Inherit must-not-claim from `positioning/POSITIONING.md` when it exists. CTAs must not use a blocked claim.
- If Paid is not `NONE — budget $0`, tell the parent to run **claims-agent** then **legal-checklist-agent**.

## Required files

| File | Job |
|------|-----|
| `campaign/CHANNEL-PLAN.md` | Filled channel plan |

## Return to parent

Channel names, counts vs cap, and any UNLISTED rows.
