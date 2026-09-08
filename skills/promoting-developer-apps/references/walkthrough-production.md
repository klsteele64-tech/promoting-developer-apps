# Walkthrough production

## Shapes

| Shape | Length | Scene count |
|-------|--------|-------------|
| Hook | 15s | 3–4 |
| Demo | 60–90s | 6–10 |
| Tutorial | 6–12 min | chapters of 4–8 scenes |

Default: demo.

## Scene object

```json
{
  "id": "hook",
  "seconds": 5,
  "title": "The problem",
  "visual": "What the viewer sees",
  "onScreen": "Max seven words",
  "voice": "Spoken line",
  "placeholder": false
}
```

`placeholder: true` when the UI was not inspected or recorded.

## Player

Copy [../assets/player.html](../assets/player.html). Replace the JSON in `const SCENES = [...]` and the title strings. Keep the file self-contained (no CDN required).

## SCRIPT.md

```
# Walkthrough script — {product}

Shape: hook | demo | tutorial
Rendered MP4: no (HTML player only) | yes (path)

## Voiceover

| Time | Voice | On-screen |
|------|-------|-----------|
| 0:00 | | |

## Capture still needed
-
```

## captions.srt

Standard SRT. One cue per scene. Timecodes from a running total of `seconds`.

## Optional MP4

If the host can export video, do it **after** the player exists. Name the file `walkthrough/walkthrough.mp4` and set `Rendered MP4: yes` in SCRIPT.md. Do not promise ffmpeg or a studio tool the host does not have.

## Save

Default directory: `walkthrough/`.
