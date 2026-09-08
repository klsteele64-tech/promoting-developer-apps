# Google Play Store promotion

Use when the product is an Android app on (or heading to) Google Play. The parent dispatches **play-store-agent**. Plans only. Do not open Play Console, publish a release, or buy App campaigns.

Play listing work still obeys the intensity caps and Free / Paid split in SKILL.md.

## Play-specific intake

Ask only what is still unknown:

- Package name and Play URL (or `UNRELEASED`)
- Track now: internal | closed | open | production
- Countries / languages
- Free / IAP / paid download / ads in the app
- Content rating bucket if known (everyone, teens, kids, finance, health)
- Proof: installs, ratings count, rating average, pre-registration — or UNKNOWN
- Promo video / screenshots already in Console?

## Free Play catalog

These are organic. Do not put App campaigns here.

| Channel | Best for | Asset | Default metric |
|---------|----------|-------|----------------|
| Google Play listing (ASO) | Every Android app | Title, short + full desc, graphics | Impressions → store conversion |
| Play custom store listing | Country or audience split | Alternate listing | Conversion vs default |
| Play listing experiment | Live production listing | One variable (short desc or graphic) | Install rate lift |
| Play pre-registration | Unreleased app | Pre-reg page + notify | Pre-reg count |
| Play open / closed testing | Unproven build | Track link, feedback prompt | Crash-free + happy paths |
| F-Droid listing | OSS Android | Metadata + source | Sideload installs |
| Amazon Appstore listing | Extra Android store | Ported listing | Store installs |
| AlternativeTo (Android) | Displacement of a known app | "Alternative to X" | Profile visits |
| Reddit r/androidapps (value-first) | Indie Android | Show-and-tell after a success | Referral installs; watch bans |
| X / YouTube organic demo | Demo-able mobile UI | 15–45s capture | Link-in-bio installs |

Android news tips, XDA, and Discord are `UNLISTED` unless the user already has a relationship there. Same Reddit/SO rules as the main free catalog.

## Paid Play catalog

Media buy only. $0 budget → Paid table `NONE — budget $0`.

| Channel | Objective | Notes |
|---------|-----------|-------|
| Google App campaigns (Android) | Installs / in-app actions | Listing must be on production or open testing. Start one campaign, one country set. |
| YouTube ads (app install) | Installs | 15–30s; hook in 5s; deep link to Play |
| Google Search (brand + category) | High-intent installs | Exact/phrase; landing may be the Play URL |
| Meta / TikTok app ads | Consumer installs | Native UGC; MMP later if they have one |
| Influencer install codes | Demo-able consumer apps | FTC disclosure; unique Play link |

Do not recommend Apple Search Ads for a Play-only app. Do not invent CPI or ROAS.

**Under $500:** one App campaign, $10–20/day, one geo, kill if 40–80 clicks and 0 installs (or 2× a stated CPI ceiling).

**$500–5k:** App campaign + one social or YouTube test. Weekly creative refresh.

## Intensity on Play

| Mode | Play move | Cap reminder |
|------|-----------|--------------|
| Whisper | Internal or closed testing only. No public listing blast, no App campaigns. | 3 free, 0 paid |
| Signal | Production or open testing. Ship ASO listing + **one** community stage. | 6 free |
| Pulse | Listing live + experiments + up to 4 paid (App campaign first). | 10 total, ≤4 paid |
| Blitz | Proven installs or ratings + launch window. App campaigns expected. | 14 total |

Pre-registration counts as proof for Signal, not Blitz. Blitz needs installs, ratings, or revenue.

## Listing rules (ASO)

Play has **no hidden keyword field**. Keywords live in name, short description, and full description.

| Field | Limit | Rule |
|-------|-------|------|
| App name | 30 characters | Brand + one job word. No keyword stuffing. |
| Short description | 80 characters | Job-to-be-done + differentiator. This is the search snippet. |
| Full description | 4000 characters | First 3 lines do the selling (shown before "Read more"). Then features, who it's for, what's free vs paid, support. |
| Icon | 512×512 | One recognizable mark. |
| Feature graphic | 1024×500 | Hero + 3–5 words. No Play badge on the image. |
| Phone screenshots | 2–8 | First two must show the first success, not settings. Captions ≤7 words. |
| 7" / 10" tablet | If the app is usable on tablet | Same story, not stretched phone shots if avoidable. |
| Promo video | YouTube URL | Optional. Dispatch **video-agent** for a hook cutdown. |

Do not promise ranking for a keyword. Mark guessed keywords `INFERRED`.

## Release tracks

1. Internal → 2. Closed (email / Google Group) → 3. Open → 4. Production with staged rollout (5–20% first).
5. Kill or pause rollout on crash or policy strike.

Whisper stops at internal/closed. Signal may go open or production. Do not skip to 100% production on a first upload unless the user already has a stable build.

## Reviews and policy

- No paid, incentivized, or fake reviews. No "rate us to continue" gates.
- Ask for a Play in-app review **after** a first success, once.
- Reply to 1-star and 2-star reviews with a fix path; do not argue.
- Data safety, permissions, and Families/ads/health/finance claims must match the app. UNKNOWN stays UNKNOWN.
- Kids, health, finance, and crypto need extra policy review before any paid Play row.

## Deliverables

Fill [../assets/play-store-plan.md](../assets/play-store-plan.md) and write the files in the play-store-agent instructions. The HTML walkthrough is still video-agent's job if a promo video is requested.
