---
name: localize-listings
description: Localize store, landing, and email strings for extra languages
---

**Parent router:** This is a slice of `/promote`. Enter through the parent skill — do not treat this command as a sibling skill.

1. Load `skills/promoting-developer-apps/SKILL.md` and announce: `Using promoting-developer-apps (via /localize-listings)`.
2. Ask only missing intake for a brief (inspect README/landing first; mark UNKNOWN instead of inventing).
3. Never implement the slice yourself — dispatch the subagent file(s) below (spawn when the host can; otherwise run as an isolated pass).
4. Return packs to the parent synthesizer. Do not run the full campaign unless the user expands scope.

## Slice instructions

Dispatch **locale-agent** (`skills/promoting-developer-apps/subagents/locale-agent.md`). Ask only missing locales. Respect intensity caps. Mark machine copy INFERRED. Do not publish listings.
