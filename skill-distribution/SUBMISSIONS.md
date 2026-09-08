# Skill marketplace submissions — promoting-developer-apps

Public repo: https://github.com/klsteele64-tech/promoting-developer-apps
Zip: /workspace/promoting-developer-apps-skill.zip
Hosts requested: cursor-official,cursor.directory
Generated: 2026-09-08T19:44:43Z

## CLI attempts

| Host | Status | Note |
|------|--------|------|
| Claude Code (`claude plugin marketplace add`) | blocked-on-auth | See claude.out / claude.err |
| Codex (`codex plugin marketplace add`) | blocked-on-auth | See codex.out / codex.err |
| npx skills | blocked-on-auth | See npx.out / npx.err. Installer clones the default branch. |

## Web forms — fill and click Submit (publisher must be signed in)

### Cursor official

- URL: https://cursor.com/marketplace/publish
- Repository: https://github.com/klsteele64-tech/promoting-developer-apps
- Plugin name: promoting-developer-apps
- Description: Launch, advertise, fund, and sell developer apps or talent. Use across ChatGPT, Cursor, Claude, Codex, and other Agent Skills hosts.
- Status if no Cursor session: blocked-on-auth

### cursor.directory

- URL: https://cursor.directory/plugins/new
- GitHub repo URL: https://github.com/klsteele64-tech/promoting-developer-apps
- Sign in: GitHub or Google
- Then Submit
- Status if no session: blocked-on-auth

### ChatGPT / Codex public directory (skills only)

- Docs: https://developers.openai.com/plugins/deploy/submission
- Type: Skills only (no MCP URL)
- Upload: /workspace/promoting-developer-apps-skill.zip
- Plugin name: Promoting Developer Apps
- Short description: Launch, advertise, fund, and sell developer apps or talent. Use across ChatGPT, Cursor, Claude, Codex, and other Agent Skills hosts.
- Website: https://github.com/klsteele64-tech/promoting-developer-apps
- Support: https://github.com/klsteele64-tech/promoting-developer-apps/issues
- Privacy / terms: UNKNOWN — do not invent URLs
- Starter prompts: from .codex-plugin/plugin.json interface.defaultPrompt
- Tests: tests/marketplace-cases.md (use 5 positive + 3 negative)
- Status if no OpenAI Apps Management session: blocked-on-auth
- Status if privacy/terms required and missing: blocked-on-missing-field

### Copilot / VS Code / Kiro

- Installable via root plugin.json at https://github.com/klsteele64-tech/promoting-developer-apps
- Public store form: UNKNOWN unless the host documents one

## Honesty

submitted ≠ listed. Do not claim a catalog listing until that host shows it.
