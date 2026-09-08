---
name: creating-app-walkthroughs
description: Use when a developer needs a walkthrough video, demo video, product tour, or step-by-step screen walkthrough of an app or website.
license: MIT
metadata:
  author: Dev Launch Campaign
  version: "1.1.0"
  category: video
---

# Creating App Walkthroughs

Produce a **playable walkthrough** of the app: an HTML video-style player plus script, scenes, and captions. Do not stop at a one-page brief.

If the host can write files, save under `walkthrough/` (or the path the user names).

No login or admin for this skill. Do not invent UI you have not seen.

## When to use

- "Create a walkthrough video of the app"
- Demo, product tour, or first-success screen recording is needed
- Launch or ads need a 15s cutdown or 60–90s demo

When NOT: cinematic brand films, or claiming an MP4 exists when only the player was written.

## Intake

Ask only what is still unknown. Inspect repo, running app, or recording first.

Product, audience, start URL or screen, end state (first success), length (15s / 60–90s / tutorial), any capture notes or screenshots.

No recording and no UI → write the shot list they must capture next. Still ship the player with labeled placeholder scenes, marked `PLACEHOLDER`.

## Workflow

1. Map the happy path. Cut setup and dead air.
2. Write scenes (hook → problem → 3–5 actions → CTA). On-screen copy ≤7 words.
3. Fill [assets/player.html](assets/player.html) with those scenes. Save as `walkthrough/index.html`.
4. Write `walkthrough/scenes.json`, `walkthrough/captions.srt`, `walkthrough/SCRIPT.md`.
5. Tell the user: open `walkthrough/index.html` in a browser to play the walkthrough.
6. Say **player** vs **MP4**. Only say "video file rendered" if the host exported media.

## Required files

| File | Purpose |
|------|---------|
| `index.html` | Playable walkthrough (auto-advancing scenes) |
| `scenes.json` | Same scenes, machine-readable |
| `captions.srt` | Timed captions |
| `SCRIPT.md` | Voiceover + shot list |

## Scene rules

- Hook in 0–5s. First success only. No feature dump.
- Every scene: `id`, `seconds`, `title`, `visual`, `onScreen`, `voice`, `placeholder` (true if UI unseen).
- Total time matches the chosen shape (15 / 60–90 / tutorial chapters).

## Honesty

- Placeholder scenes stay labeled.
- Do not paste another product's UI copy.
- HTML player counts as a walkthrough. It is not an `.mp4` unless one was exported.
