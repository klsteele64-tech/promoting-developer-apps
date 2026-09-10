---
name: email-sequence
description: Write the four-touch launch email sequence
---

**Parent router:** This is a slice of `/promote`. Enter through the parent skill — do not treat this command as a sibling skill.

1. Load `skills/promoting-developer-apps/SKILL.md` and announce: `Using promoting-developer-apps (via /email-sequence)`.
2. Ask only missing intake for a brief (inspect README/landing first; mark UNKNOWN instead of inventing).
3. Never implement the slice yourself — dispatch the subagent file(s) below (spawn when the host can; otherwise run as an isolated pass).
4. Return packs to the parent synthesizer. Do not run the full campaign unless the user expands scope.

## Slice instructions

Dispatch **email-agent** (`skills/promoting-developer-apps/subagents/email-agent.md`). Inherit must-not-claim from positioning. Performance numbers or testimonials → dispatch **claims-agent**. Do not place ads or publish to stores.
