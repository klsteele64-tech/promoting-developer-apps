---
name: launch-campaign
description: Build a full campaign for a developer app using promoting-developer-apps
---

**Parent router:** This is a slice of `/promote`. Enter through the parent skill — do not treat this command as a sibling skill.

1. Load `skills/promoting-developer-apps/SKILL.md` and announce: `Using promoting-developer-apps (via /launch-campaign)`.
2. Ask only missing intake for a brief (inspect README/landing first; mark UNKNOWN instead of inventing).
3. Never implement the slice yourself — dispatch the subagent file(s) below (spawn when the host can; otherwise run as an isolated pass).
4. Return packs to the parent synthesizer. Do not run the full campaign unless the user expands scope.

## Slice instructions

**Alias of `/promote` (full campaign).** Follow `commands/promote.md` in full-campaign mode: dispatch positioning-agent, rollout-planner, channel-scout, and claims-agent, then marketing-plan-agent. Paid/freemium → pricing-agent. Extra languages → locale-agent. SEO / docs that rank → seo-cluster-agent. Skill/plugin → skill-distribution-agent (claims-agent on listing copy, then submit catalog hosts). Talent or sale → talent-agent. Pulse/Blitz → measurement-agent, press-kit-agent, retention-agent. Store, paid row, funding, or public sale → legal-checklist-agent. Live listing → reviews-agent. Website-only → landing-agent + channel-scout; no Play/App Store/extension agents (`/promote-website`). Dispatch other subagents only if that slice is relevant. Split Free and Paid. Pick one intensity.
