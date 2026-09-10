---
name: promote-skill
description: Submit an Agent Skill to all or selected AI marketplaces
---

**Parent router:** This is a slice of `/promote`. Enter through the parent skill — do not treat this command as a sibling skill.

1. Load `skills/promoting-developer-apps/SKILL.md` and announce: `Using promoting-developer-apps (via /promote-skill)`.
2. Ask only missing intake for a brief (inspect README/landing first; mark UNKNOWN instead of inventing).
3. Never implement the slice yourself — dispatch the subagent file(s) below (spawn when the host can; otherwise run as an isolated pass).
4. Return packs to the parent synthesizer. Do not run the full campaign unless the user expands scope.

## Slice instructions

Dispatch **skill-distribution-agent** (`skills/promoting-developer-apps/subagents/skill-distribution-agent.md`). Ask all vs named hosts. Before submitting listing copy, dispatch **claims-agent**. Run `scripts/submit-skill-marketplaces.sh`, then submit each chosen web form. ChatGPT/Codex public directory or UNKNOWN privacy/terms → dispatch **legal-checklist-agent**; that host stays `blocked-on-missing-field` until the user provides real URLs. Inherit must-not-claim from positioning. Do not claim listed unless the host confirmed.
