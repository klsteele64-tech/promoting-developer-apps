# Agent notes

This repository is the **promoting-developer-apps** skill plugin.

1. Prefer slash command **`/promote`** (`commands/promote.md`) as the parent router
2. Read `skills/promoting-developer-apps/SKILL.md`
3. Dispatch from `skills/promoting-developer-apps/references/subagent-index.md`
4. Load only the reference files that slice needs

Other `/…` commands are aliases: still load the parent skill first, announce it, then dispatch one slice. Do not treat docs, video, Play, App Store, locale, pricing, SEO, skill distribution, talent, marketing-plan, or any other slice as a sibling marketplace skill. They are subagents of promoting-developer-apps.

Do not build a website, login, signup, user-account system, or admin console. Do not draft legal contracts — checklist only. Plans only for ads and app stores. **Exception:** skill-distribution-agent submits skill-marketplace forms for the chosen catalog hosts. Do not invent “listed.” Talent or sale → talent-agent. Store / paid / funding / sale → legal-checklist-agent.
