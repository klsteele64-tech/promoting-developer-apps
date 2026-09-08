# Publish and install

This repo is an **Agent Plugin** (root `plugin.json`) plus vendor overlays so marketplaces can pull the same skill.

Skills-only: no login, user accounts, admin, or OAuth. Hosts identify the person in the chat.

Public repo: `https://github.com/klsteele64-tech/promoting-developer-apps`

`npx skills add` clones the **default** GitHub branch. That branch must contain `skills/promoting-developer-apps/SKILL.md`. Publishing only to `main` while the default is another branch makes the installer report “No valid skills found.”

## 1. Cursor

**Local test**

```bash
mkdir -p ~/.cursor/plugins/local
ln -sfn /absolute/path/to/this-repo ~/.cursor/plugins/local/promoting-developer-apps
```

Reload Cursor. The skill and slash commands should appear.

**Personal skill (no plugin)**

```bash
cp -R skills/promoting-developer-apps ~/.cursor/skills/promoting-developer-apps
```

**Official marketplace**

1. Submit [this repo](https://github.com/klsteele64-tech/promoting-developer-apps) at [cursor.com/marketplace/publish](https://cursor.com/marketplace/publish)
2. Optional community listing: [cursor.directory](https://cursor.directory)

Manifest: [`.cursor-plugin/plugin.json`](.cursor-plugin/plugin.json)

## 2. ChatGPT and Codex

**Upload a skill (fastest)**

```bash
bash scripts/pack-chatgpt-skill.sh
```

In ChatGPT: create or edit a skill / plugin and upload `promoting-developer-apps-skill.zip` (or the `skills/promoting-developer-apps` folder). Codex accepts the same `SKILL.md` bundle.

**Local marketplace (desktop ChatGPT / Codex)**

1. Copy this repo to a stable path
2. Keep [`.agents/plugins/marketplace.json`](.agents/plugins/marketplace.json)
3. Add the marketplace:

```bash
codex plugin marketplace add /absolute/path/to/this-repo
```

Or add `$REPO_ROOT/.agents/plugins/marketplace.json` as a repo-scoped source. Restart ChatGPT desktop and install **Promoting Developer Apps** from that source.

**Public ChatGPT / Codex directory**

1. Package with `.codex-plugin/plugin.json`
2. Submit at the OpenAI plugin submission portal as a **skills-only** plugin
3. Include starter prompts from the Codex manifest `interface.defaultPrompt`
4. Provide 5 positive and 3 negative test cases (see `tests/marketplace-cases.md`)

Manifest: [`.codex-plugin/plugin.json`](.codex-plugin/plugin.json)

## 3. Claude Code / Claude.ai

**User skill**

```bash
cp -R skills/promoting-developer-apps ~/.claude/skills/promoting-developer-apps
```

**Plugin marketplace**

```bash
claude plugin marketplace add klsteele64-tech/promoting-developer-apps
claude plugin install promoting-developer-apps
```

Manifest: [`.claude-plugin/plugin.json`](.claude-plugin/plugin.json)

## 4. Generic Agent Skills hosts

Any client that implements [agentskills.io](https://agentskills.io/specification) can load:

```
skills/promoting-developer-apps/SKILL.md
```

Docs, video, stores, locale, pricing, SEO cluster, skill distribution, talent, marketing plan, landing, social, email, funding, and the other slices are **subagents** of that skill (`subagents/`), not extra `skills/*` packages. See `references/subagent-index.md`. To **submit** a skill to catalog AI marketplaces, dispatch **skill-distribution-agent** (`/promote-skill`) and run `scripts/submit-skill-marketplaces.sh`. “All hosts” means the catalog table, not every AI product.

Root [`plugin.json`](plugin.json) follows [Agent Plugins 1.0](https://github.com/agentplugins/agent-plugins-spec) so Copilot, VS Code, Kiro, and other conforming hosts can discover `skills/` without a vendor folder.

## 5. `npx skills` / skills.sh style installers

Point the installer at this GitHub repo. The skill directory name is `promoting-developer-apps`.

```bash
npx skills add klsteele64-tech/promoting-developer-apps
```

```bash
codex plugin marketplace add klsteele64-tech/promoting-developer-apps
```

Marketplace updates: bump semver in `plugin.json`, `.cursor-plugin/plugin.json`, `.codex-plugin/plugin.json`, and `CHANGELOG.md`.
