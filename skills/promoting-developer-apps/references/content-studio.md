# Content studio

Pick a source method, then dispatch a subagent of **promoting-developer-apps**:

- Documents → **docs-agent** ([../subagents/docs-agent.md](../subagents/docs-agent.md))
- Walkthrough → **video-agent** ([../subagents/video-agent.md](../subagents/video-agent.md))
- Landing / OG / vs → **landing-agent** ([../subagents/landing-agent.md](../subagents/landing-agent.md))
- Launch posts → **social-agent** ([../subagents/social-agent.md](../subagents/social-agent.md))
- Google Play → **play-store-agent**; Apple → **app-store-agent**; extension → **extension-store-agent**
- Docs that rank / SEO cluster → **seo-cluster-agent** ([../subagents/seo-cluster-agent.md](../subagents/seo-cluster-agent.md)); docs-agent writes the files
- Promo video hook → video-agent

Do not stop at the old outline/brief templates when the user asked to create docs or a video. The parent does not implement those files; it dispatches.

If the host cannot spawn subagents, run each instruction file as an isolated pass. Parent merges; children do not invent product facts.

## Method A — Repo walk

Use when a repo, docs folder, or live site is available.

1. Read README, package manifest, routes/screens, env examples, tests named after features.
2. List capabilities as user jobs, not file names.
3. Hand facts to docs-agent and/or video-agent.
4. Flag unknowns as `UNKNOWN` — do not guess APIs or pricing.

## Method B — Founder interview

Use when the repo is thin or the offer is talent/for-sale.

1. Run [interview-intake.md](interview-intake.md).
2. Turn answers into a positioning line: `{ICP} uses {product} to {job} instead of {substitute}`.
3. Hand answers to docs-agent and/or video-agent. Talent or sale → **talent-agent**. No feature dump.

## Method C — Capture replay

Use when the user can record a happy path (screen, clicks, or timestamp notes).

1. Ask for: goal of the clip, start URL, end state, duration, raw notes or transcript.
2. Map steps. Cut dead air and setup.
3. Script: hook (0–5s), problem (5–15s), 3–5 actions, CTA.
4. Shot list with on-screen copy (max 7 words per card).
5. If no recording exists, still dispatch video-agent with `placeholder: true` scenes and a capture list. Do not fake UI you have not seen.

## Method D — Parallel studio

Use when the user needs a full launch content pack in one pass.

Spawn (or simulate) four workstreams at once:

| Stream | Output |
|--------|--------|
| docs-agent | Seven-file document set |
| video-agent | Playable walkthrough + SRT + script |
| landing-agent | Landing + OG + vs |
| social-agent | PH first comment, Show HN, X thread, LinkedIn |
| changelog-agent | Last 3 ship notes |

Rules:

- One shared fact sheet. No stream invents pricing, logos, or metrics.
- Social posts reuse the same CTA and UTM pattern (`utm_source`, `utm_medium`, `utm_campaign`).
- Walkthrough remains the HTML player unless an MP4 was exported.

## Four video shapes (any method)

| Shape | Length | Use |
|-------|--------|-----|
| Hook cutdown | 15s | Ads, Shorts, PH |
| Demo | 60–90s | Landing, launch posts |
| Tutorial | 6–12 min | YouTube, docs embed |
| Founder | 2–3 min | Funding, talent, sale |

Always include: hook, who it's for, one success path, CTA, on-screen text, b-roll/screens, legal line if testimonials.

## Documentation minimum

A document set is incomplete without the seven files from docs-agent (`docs/app/`). Spec: [doc-set.md](doc-set.md).

A walkthrough is incomplete without `index.html`, `scenes.json`, `captions.srt`, and `SCRIPT.md`. Spec: [walkthrough-production.md](walkthrough-production.md).

## Honesty

- Do not claim an MP4 was produced if only the HTML player exists.
- Do not paste copyrighted docs from other products.
- Mark inferred facts `INFERRED` and ask to confirm before publish.
