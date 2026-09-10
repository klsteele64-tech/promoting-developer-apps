---
name: promote-play-store-app
description: Promote a Google Play Store Android app (listing, ASO, screenshots, release track, free and paid Play channels)
---

**Parent router:** This is a slice of `/promote`. Enter through the parent skill — do not treat this command as a sibling skill.

1. Load `skills/promoting-developer-apps/SKILL.md` and announce: `Using promoting-developer-apps (via /promote-play-store-app)`.
2. Ask only missing intake for a brief (inspect README/landing first; mark UNKNOWN instead of inventing).
3. Never implement the slice yourself — dispatch the subagent file(s) below (spawn when the host can; otherwise run as an isolated pass).
4. Return packs to the parent synthesizer. Do not run the full campaign unless the user expands scope.

## Slice instructions

Dispatch **play-store-agent** (`skills/promoting-developer-apps/subagents/play-store-agent.md`). Ask only missing Play intake (package, track, countries, budget, intensity). Write `play-store/PLAN.md`, `LISTING.md`, and `ASSETS.md`. Split Free and Paid. Before public listing or any Paid row, dispatch **claims-agent** then **legal-checklist-agent**. Do not publish to Play Console. Do not place ads. $0 budget → Paid table `NONE — budget $0`.
