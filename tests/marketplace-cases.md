# Marketplace test cases

Use these when submitting to ChatGPT / Codex (5 positive, 3 negative) and when checking Cursor activation.

## Positive (must activate the skill)

1. "Build a full marketing campaign for my developer app."
2. "What free vs paid ads should I use to promote this SaaS?"
3. "Give me soft-rollout through hard-launch strategies for this website."
4. "Generate documentation and a video script from this repo."
5. "I need a Kickstarter plan and also a way to sell my freelance development."

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
- [ ] Video described as script/brief unless a file was rendered
