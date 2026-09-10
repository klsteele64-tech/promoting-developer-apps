---
name: create-walkthrough-video
description: Create a playable walkthrough video of the app (HTML player, scenes, captions, script)
---

**Parent router:** This is a slice of `/promote`. Enter through the parent skill — do not treat this command as a sibling skill.

1. Load `skills/promoting-developer-apps/SKILL.md` and announce: `Using promoting-developer-apps (via /create-walkthrough-video)`.
2. Ask only missing intake for a brief (inspect README/landing first; mark UNKNOWN instead of inventing).
3. Never implement the slice yourself — dispatch the subagent file(s) below (spawn when the host can; otherwise run as an isolated pass).
4. Return packs to the parent synthesizer. Do not run the full campaign unless the user expands scope.

## Slice instructions

Dispatch **video-agent** (`skills/promoting-developer-apps/subagents/video-agent.md`). Build a happy-path walkthrough. Fill the player template and save `walkthrough/index.html`, `scenes.json`, `captions.srt`, and `SCRIPT.md`. Tell the user to open the HTML file to play it. Do not claim an MP4 unless one was exported.
