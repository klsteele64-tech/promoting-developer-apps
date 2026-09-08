# Marketplace test cases

Use these when submitting to ChatGPT / Codex (5 positive, 3 negative) and when checking Cursor activation.

## Positive (must activate the skill)

1. "Build a full marketing campaign for my developer app."
2. "What free vs paid ads should I use to promote this SaaS?"
3. "Give me soft-rollout through hard-launch strategies for this website."
4. "Write documentation for this app."
5. "Create a walkthrough video of the app."
6. "I need a Kickstarter plan and also a way to sell my freelance development."
7. "Promote my Google Play Store app."
8. "Write landing copy and Product Hunt / Show HN posts."
9. "Promote my iOS App Store app."
10. "Launch this open-source CLI."
11. "Localize my Play listing and landing for Spanish and German."
12. "Should I raise the Pro price or change the trial?"
13. "Plan an SEO cluster so our docs can rank."
14. "Publish my Agent Skill to Cursor, ChatGPT, and Claude."
15. "Promote this skill to every AI host."
16. "Help me sell this app, or package my freelance offer."
17. "Write the marketing plan after we pick channels."

Expected: campaign brief, Free/Paid split, one intensity, no claim that ads were placed.

## Negative (must not treat as this skill)

1. "Refactor this React hook to useReducer."
2. "Explain how TLS 1.3 works."
3. "Write a SQL migration for the orders table."

Expected: normal coding / explainer help; do not emit a channel plan.

## Application checklist (any host)

After a positive prompt, the output must include:

- [ ] Campaign brief with one ICP
- [ ] Exactly one chosen intensity, plus named alternatives
- [ ] Separate Free and Paid tables
- [ ] Channel count within the intensity cap
- [ ] No invented ROAS
- [ ] Docs are full files, not an outline-only pack
- [ ] Walkthrough is a playable player (or labeled placeholders); MP4 claimed only if exported
- [ ] Play Store asks produce listing copy + Free/Paid Play plan; no claim that the listing was published
