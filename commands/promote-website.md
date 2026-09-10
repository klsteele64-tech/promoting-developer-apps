---
name: promote-website
description: Promote a developer website (no app store). Landing, channels, optional SEO.
---

**Parent router:** This is a slice of `/promote`. Enter through the parent skill — do not treat this command as a sibling skill.

1. Load `skills/promoting-developer-apps/SKILL.md` and announce: `Using promoting-developer-apps (via /promote-website)`.
2. Ask only missing intake for a brief (inspect README/landing first; mark UNKNOWN instead of inventing).
3. Never implement the slice yourself — dispatch the subagent file(s) below (spawn when the host can; otherwise run as an isolated pass).
4. Return packs to the parent synthesizer. Do not run the full campaign unless the user expands scope.

## Slice instructions

Dispatch **landing-agent** plus **channel-scout**. Website-only: store = none. Do not dispatch play-store-agent, app-store-agent, or extension-store-agent. SEO / “docs that rank” → **seo-cluster-agent**. Launch posts → **social-agent**. Paid row → **claims-agent** then **legal-checklist-agent**. Split Free and Paid. $0 budget → Paid `NONE — budget $0`.
