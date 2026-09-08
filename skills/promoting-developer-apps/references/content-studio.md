# Content studio

Generate documentation and video **briefs** from the product. Pick one method.

If the host can spawn subagents, use the agent table in SKILL.md. Parent merges; children do not invent product facts.

## Method A — Repo walk

Use when a repo, docs folder, or live site is available.

1. Read README, package manifest, routes/screens, env examples, tests named after features.
2. List capabilities as user jobs, not file names.
3. Write: README hero (5–8 lines), getting-started (10 minutes), feature outline, FAQ from likely failures, changelog skeleton.
4. Write a 60–90s video script that shows the first success path only.
5. Flag unknowns as `UNKNOWN` — do not guess APIs or pricing.

Output templates: [../assets/docs-outline.md](../assets/docs-outline.md), [../assets/video-brief.md](../assets/video-brief.md).

## Method B — Founder interview

Use when the repo is thin or the offer is talent/for-sale.

1. Run [interview-intake.md](interview-intake.md).
2. Turn answers into a positioning line: `{ICP} uses {product} to {job} instead of {substitute}`.
3. Write docs as if a new user landed from ads: problem, first win, pricing, objections.
4. Video: talking-head + 3 screen inserts. No feature dump.

## Method C — Capture replay

Use when the user can record a happy path (screen, clicks, or timestamp notes).

1. Ask for: goal of the clip, start URL, end state, duration, raw notes or transcript.
2. Map steps. Cut dead air and setup.
3. Script: hook (0–5s), problem (5–15s), 3–5 actions, CTA.
4. Shot list with on-screen copy (max 7 words per card).
5. If no recording exists, produce the shot list they should capture next — do not fake a walkthrough of UI you have not seen.

## Method D — Parallel studio

Use when the user needs a full launch content pack in one pass.

Spawn (or simulate) four workstreams at once:

| Stream | Output |
|--------|--------|
| docs-agent | README + getting-started + FAQ |
| video-agent | 60–90s script + 15s cutdown + shot list |
| social-agent | PH first comment, Show HN draft, X thread (8–12), LinkedIn post |
| changelog-agent | Last 3 ship notes in customer language |

Rules:

- One shared fact sheet. No stream invents pricing, logos, or metrics.
- Social posts reuse the same CTA and UTM pattern (`utm_source`, `utm_medium`, `utm_campaign`).
- Video remains a script/storyboard unless the host rendered media.

## Four video shapes (any method)

| Shape | Length | Use |
|-------|--------|-----|
| Hook cutdown | 15s | Ads, Shorts, PH |
| Demo | 60–90s | Landing, launch posts |
| Tutorial | 6–12 min | YouTube, docs embed |
| Founder | 2–3 min | Funding, talent, sale |

Always include: hook, who it's for, one success path, CTA, on-screen text, b-roll/screens, legal line if testimonials.

## Documentation minimum

A content pack is incomplete without all five:

1. One-sentence job-to-be-done
2. Install or open path (≤10 minutes)
3. First success (screenshot or step list)
4. Pricing or license
5. Support path

## Honesty

- Do not claim a video file was produced if only a script exists.
- Do not paste copyrighted docs from other products.
- Mark inferred facts `INFERRED` and ask to confirm before publish.
