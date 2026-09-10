---
name: ad-channels
description: List free vs paid advertising channels for this developer product
---

**Parent router:** This is a slice of `/promote`. Enter through the parent skill — do not treat this command as a sibling skill.

1. Load `skills/promoting-developer-apps/SKILL.md` and announce: `Using promoting-developer-apps (via /ad-channels)`.
2. Ask only missing intake for a brief (inspect README/landing first; mark UNKNOWN instead of inventing).
3. Never implement the slice yourself — dispatch the subagent file(s) below (spawn when the host can; otherwise run as an isolated pass).
4. Return packs to the parent synthesizer. Do not run the full campaign unless the user expands scope.

## Slice instructions

Dispatch **channel-scout** (`skills/promoting-developer-apps/subagents/channel-scout.md`). Two tables only: Free, then Paid. Stay inside the intensity cap. $0 budget → Paid `NONE — budget $0`. If Paid is not empty, dispatch **claims-agent** then **legal-checklist-agent**.
