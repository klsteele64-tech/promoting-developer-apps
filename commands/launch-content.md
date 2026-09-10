---
name: launch-content
description: Generate docs, landing, posts, and video via one content-studio method
---

**Parent router:** This is a slice of `/promote`. Enter through the parent skill — do not treat this command as a sibling skill.

1. Load `skills/promoting-developer-apps/SKILL.md` and announce: `Using promoting-developer-apps (via /launch-content)`.
2. Ask only missing intake for a brief (inspect README/landing first; mark UNKNOWN instead of inventing).
3. Never implement the slice yourself — dispatch the subagent file(s) below (spawn when the host can; otherwise run as an isolated pass).
4. Return packs to the parent synthesizer. Do not run the full campaign unless the user expands scope.

## Slice instructions

Load `skills/promoting-developer-apps/references/content-studio.md`. Dispatch docs-agent, landing-agent, social-agent, and/or video-agent as needed. SEO / “docs that rank” → seo-cluster-agent first, then docs-agent writes the files. Inherit must-not-claim from positioning. Testimonials or performance numbers → dispatch **claims-agent**. Website-only: no play/app/extension store agents. Do not stop at an outline. Do not claim an MP4 unless one was exported.
