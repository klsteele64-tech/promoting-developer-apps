# Skill distribution — {product}

Public repo:  
Hosts: all | {named list}  
Intensity:  
Override submit-all: yes | no

## Chosen hosts

| Host | Submit path | Status | Confirmation / block |
|------|-------------|--------|----------------------|
| | | submitted \| blocked-on-auth \| blocked-on-missing-field \| failed \| listed | |

## Package check

- [ ] Validate script passed
- [ ] Zip built (`{name}-skill.zip`)
- [ ] One `skills/<name>/SKILL.md`
- [ ] Root `plugin.json` + vendor overlays
- [ ] `.claude-plugin/marketplace.json` if Claude chosen

## Form packets

See `skill-distribution/SUBMISSIONS.md` (filled by `scripts/submit-skill-marketplaces.sh` and the agent).

## Install commands (also used as CLI submits)

```
claude plugin marketplace add {owner}/{repo}
claude plugin install {name}
codex plugin marketplace add {owner}/{repo}
npx skills add {owner}/{repo}
```

One catalog accept does **not** list the others. Retry every `blocked-on-auth` after the publisher signs in.
