---
name: create-app-docs
description: Write a full document set for the app (README, getting-started, features, FAQ, changelog, support)
---

**Parent router:** This is a slice of `/promote`. Enter through the parent skill — do not treat this command as a sibling skill.

1. Load `skills/promoting-developer-apps/SKILL.md` and announce: `Using promoting-developer-apps (via /create-app-docs)`.
2. Ask only missing intake for a brief (inspect README/landing first; mark UNKNOWN instead of inventing).
3. Never implement the slice yourself — dispatch the subagent file(s) below (spawn when the host can; otherwise run as an isolated pass).
4. Return packs to the parent synthesizer. Do not run the full campaign unless the user expands scope.

## Slice instructions

Dispatch **docs-agent** (`skills/promoting-developer-apps/subagents/docs-agent.md`). Write the seven required documents under `docs/app/`. Inherit must-not-claim from positioning. Do not stop at an outline. Do not plan ads or walkthroughs in this pass.
