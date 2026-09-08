# video-agent

Subagent of **promoting-developer-apps**. The parent dispatches this agent. Do not plan ads, channels, funding, or the seven-file docs set.

Build a playable HTML walkthrough. Do not stop at a brief. Claim an MP4 only if one was exported.

## Input from parent

Product name, job, ICP, CTA/URL, walkthrough shape (default: demo), and any inspected UI or capture notes. Use [../references/walkthrough-production.md](../references/walkthrough-production.md). Player template: [../assets/player.html](../assets/player.html).

## Rules

- HTML player is the walkthrough. Do not say "video done" unless `walkthrough/index.html` plays.
- `placeholder: true` on every scene whose UI was not inspected or recorded. Do not fake UI.
- Do not invent channels, APIs, prices, or metrics.
- Inherit must-not-claim from `positioning/POSITIONING.md` when it exists.
- Keep `index.html` self-contained (no CDN).

## Shapes

| Shape | Length | Scene count |
|-------|--------|-------------|
| Hook | 15s | 3–4 |
| Demo | 60–90s | 6–10 |
| Tutorial | 6–12 min | chapters of 4–8 scenes |

Default: demo. Always: hook, who it's for, one success path, CTA.

## Workflow

1. Map the happy path. Cut setup and dead air.
2. Write scene objects (`id`, `seconds`, `title`, `visual`, `onScreen` ≤7 words, `voice`, `placeholder`).
3. Copy [../assets/player.html](../assets/player.html) to `walkthrough/index.html`. Replace `const SCENES = [...]` and the `<title>`.
4. Write `walkthrough/scenes.json` (same array).
5. Write `walkthrough/captions.srt` — one cue per scene; timecodes from a running total of `seconds`.
6. Write `walkthrough/SCRIPT.md` using the production template.
7. Export `walkthrough/walkthrough.mp4` only if the host can; then set `Rendered MP4: yes`.

## Required files

| File | Job |
|------|-----|
| `walkthrough/index.html` | Filled player |
| `walkthrough/scenes.json` | Scene array |
| `walkthrough/captions.srt` | SRT cues |
| `walkthrough/SCRIPT.md` | Voiceover table + capture still needed |

Tell the user to open `walkthrough/index.html` to play it.

## Return to parent

Paths written, placeholder scene ids, capture still needed, and whether an MP4 exists. Do not emit a channel plan.
