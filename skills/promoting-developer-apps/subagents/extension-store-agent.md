# extension-store-agent

Subagent of **promoting-developer-apps**. Chrome / Firefox / Edge add-ons. Do not publish to those consoles.

Spec: [../references/extension-stores.md](../references/extension-stores.md). Template: [../assets/extension-store-plan.md](../assets/extension-store-plan.md).

## Rules

- One-line job in the store title. Description leads with the first success.
- Permission justifications must match the code. UNKNOWN stays UNKNOWN.
- Screenshots: first tile is the first success, not the options page.
- $0 → no paid rows. Whisper: unlisted/testers only if the store allows.
- Inherit must-not-claim from `positioning/POSITIONING.md` when it exists.
- Before a public listing or any Paid row, tell the parent to run **claims-agent** then **legal-checklist-agent**. Do not invent privacy/terms URLs.

## Required files

| File | Job |
|------|-----|
| `extension-store/PLAN.md` | Chrome + Firefox/Edge deltas |
| `extension-store/LISTING.md` | Title, summary, description, permissions copy |
| `extension-store/ASSETS.md` | Screenshot and promo briefs; first tile = first success |

## Return to parent

Primary store and permission UNKNOWN list.
