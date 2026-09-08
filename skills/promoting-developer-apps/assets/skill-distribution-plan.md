# Skill distribution — {product}

Public repo:  
Hosts: all | {named list}  
Intensity:  
Listed anywhere today: no | UNKNOWN | {host}

## Chosen hosts

| Host | Manifest | First action this week | Listed? |
|------|----------|------------------------|---------|
| | | | UNKNOWN |

## Package check

- [ ] One `skills/<name>/SKILL.md` (no sibling skills)
- [ ] Root `plugin.json`
- [ ] Vendor overlays needed for chosen hosts
- [ ] README install rows match the table
- [ ] `name` kebab-case matches the folder

## Install commands (user runs)

```
# Cursor local
ln -sfn /absolute/path/to/repo ~/.cursor/plugins/local/{name}

# Claude
claude plugin marketplace add {owner}/{repo}
claude plugin install {name}

# Codex / npx
codex plugin marketplace add {owner}/{repo}
npx skills add {owner}/{repo}
```

## Submits (do not claim done)

| Host | URL or portal | Status |
|------|---------------|--------|
| Cursor official | https://cursor.com/marketplace/publish | not submitted \| submitted \| UNKNOWN |
| Other | | |

Cursor accept does **not** list ChatGPT, Claude, or `npx skills`.
