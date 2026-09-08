# Agent notes

This repository is the **promoting-developer-apps** skill plugin.

When the user wants to promote an app or website, plan ads, pick a launch intensity, write app docs, create a walkthrough video, raise funds, or sell an app or talent:

1. Read `skills/promoting-developer-apps/SKILL.md`
2. Docs → dispatch **docs-agent** (`skills/promoting-developer-apps/subagents/docs-agent.md`)
3. Walkthrough video → dispatch **video-agent** (`skills/promoting-developer-apps/subagents/video-agent.md`)
4. Load only the other reference files that slice needs

Cursor also loads plugin agents from `agents/docs-agent.md` and `agents/video-agent.md`. Those wrap the same subagent files.

Do not treat docs or walkthrough as sibling marketplace skills. They are subagents of promoting-developer-apps.

Do not build a website, login, signup, user-account system, or admin console. The product is the marketplace skill. The host already identifies the person in the chat.
