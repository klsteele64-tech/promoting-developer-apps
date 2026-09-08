---
name: promote-skill
description: Submit an Agent Skill to all or selected AI marketplaces
---

Load `skills/promoting-developer-apps/SKILL.md` and dispatch **skill-distribution-agent** (`skills/promoting-developer-apps/subagents/skill-distribution-agent.md`). Ask all vs named hosts. Before submitting listing copy, dispatch **claims-agent**. Run `scripts/submit-skill-marketplaces.sh`, then submit each chosen web form. ChatGPT/Codex public directory or UNKNOWN privacy/terms → dispatch **legal-checklist-agent**; that host stays `blocked-on-missing-field` until the user provides real URLs. Inherit must-not-claim from positioning. Do not claim listed unless the host confirmed.
