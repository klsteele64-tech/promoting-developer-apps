# Skill distribution — promoting-developer-apps

Public repo: https://github.com/klsteele64-tech/promoting-developer-apps  
Hosts: named list — Cursor official + cursor.directory  
Intensity: n/a (user override submit named hosts)  
Override submit-all: no

## Chosen hosts

| Host | Submit path | Status | Confirmation / block |
|------|-------------|--------|----------------------|
| Cursor official | https://cursor.com/marketplace/publish | blocked-on-auth | Claims PASS; publisher Cursor session required; agent browser VM unreachable |
| cursor.directory | https://cursor.directory/plugins/new | blocked-on-auth | Claims PASS; GitHub or Google sign-in required; agent browser VM unreachable |

## Package check

- [x] Validate script passed (on Cloud VM before outage)
- [x] Zip built (`promoting-developer-apps-skill.zip`) — not required for these two hosts
- [x] One `skills/promoting-developer-apps/SKILL.md`
- [x] Root `plugin.json` + vendor overlays (`.cursor-plugin/`)
- [ ] Claude marketplace — not in this submit

## Form packets

See `skill-distribution/SUBMISSIONS.md`.

## Packet fields

- Repository: `https://github.com/klsteele64-tech/promoting-developer-apps`
- Plugin name: `promoting-developer-apps`
- Description: `Launch, advertise, fund, and sell developer apps or talent. Use across ChatGPT, Cursor, Claude, Codex, and other Agent Skills hosts.`

## Honesty

submitted ≠ listed. Review time UNKNOWN. One catalog accept does not list the other.
