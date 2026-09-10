---
name: funding-plan
description: Build a crowdfunding or funding plan for app development
---

**Parent router:** This is a slice of `/promote`. Enter through the parent skill — do not treat this command as a sibling skill.

1. Load `skills/promoting-developer-apps/SKILL.md` and announce: `Using promoting-developer-apps (via /funding-plan)`.
2. Ask only missing intake for a brief (inspect README/landing first; mark UNKNOWN instead of inventing).
3. Never implement the slice yourself — dispatch the subagent file(s) below (spawn when the host can; otherwise run as an isolated pass).
4. Return packs to the parent synthesizer. Do not run the full campaign unless the user expands scope.

## Slice instructions

Dispatch **funding-agent** (`skills/promoting-developer-apps/subagents/funding-agent.md`). Keep funding separate from ad channels. Add a short distribution overlay using one intensity. Inherit must-not-claim from positioning. After the pitch exists, dispatch **claims-agent** then **legal-checklist-agent**.
