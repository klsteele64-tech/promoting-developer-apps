#!/usr/bin/env bash
# Validate skill packaging for Agent Skills + marketplace manifests.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/../../.." && pwd)"
SKILL="$ROOT/skills/promoting-developer-apps"
FAIL=0

need() {
  if [[ ! -f "$1" ]]; then
    echo "MISSING $1"
    FAIL=1
  fi
}

need "$ROOT/plugin.json"
need "$ROOT/.cursor-plugin/plugin.json"
need "$ROOT/.codex-plugin/plugin.json"
need "$ROOT/.claude-plugin/plugin.json"
need "$SKILL/SKILL.md"
need "$SKILL/references/subagent-index.md"
need "$ROOT/MARKETPLACE.md"
need "$ROOT/README.md"

while IFS= read -r f; do
  need "$f"
done < <(find "$SKILL/subagents" "$SKILL/references" "$ROOT/agents" -type f -name '*.md' | sort)

need "$SKILL/assets/player.html"
need "$SKILL/assets/play-store-plan.md"
need "$SKILL/assets/app-store-plan.md"
need "$SKILL/assets/positioning.md"
need "$SKILL/assets/social-pack.md"
need "$SKILL/assets/landing.md"
need "$SKILL/assets/claims-check.md"
need "$SKILL/assets/legal-checklist.md"
need "$SKILL/assets/locale-plan.md"
need "$SKILL/assets/pricing-plan.md"
need "$SKILL/assets/seo-cluster.md"
need "$SKILL/assets/skill-distribution-plan.md"
need "$ROOT/commands/launch-campaign.md"
need "$ROOT/commands/localize-listings.md"
need "$ROOT/commands/pricing-plan.md"
need "$ROOT/commands/seo-cluster.md"
need "$ROOT/commands/promote-skill.md"
need "$ROOT/commands/promote-play-store-app.md"
need "$ROOT/commands/promote-app-store.md"
need "$ROOT/commands/write-landing.md"
need "$ROOT/commands/write-launch-posts.md"

if [[ -d "$ROOT/skills/creating-app-documents" ]] || [[ -d "$ROOT/skills/creating-app-walkthroughs" ]]; then
  echo "SIBLING SKILLS must be subagents, not skills/*"
  FAIL=1
fi

python3 - "$ROOT" <<'PY'
import json, re, sys
from pathlib import Path
root = Path(sys.argv[1])
rel = "skills/promoting-developer-apps/SKILL.md"
expected = "promoting-developer-apps"
skill_md = (root / rel).read_text()
fm = re.match(r"^---\n(.*?)\n---", skill_md, re.S)
if not fm:
    print(f"{rel} missing YAML frontmatter")
    sys.exit(1)
name = re.search(r"^name:\s*(.+)$", fm.group(1), re.M)
desc = re.search(r"^description:\s*(.+)$", fm.group(1), re.M)
if not name or name.group(1).strip() != expected:
    print(f"{rel} name must be {expected}")
    sys.exit(1)
description = desc.group(1).strip()
if not description.startswith("Use when"):
    print(f"{rel} description must start with 'Use when'")
    sys.exit(1)
if len(description) > 1024:
    print(f"{rel} description exceeds 1024 chars")
    sys.exit(1)
if not re.fullmatch(r"[a-z0-9]+(-[a-z0-9]+)*", name.group(1).strip()):
    print(f"{rel} invalid name")
    sys.exit(1)
skill_dirs = [p for p in (root / "skills").iterdir() if p.is_dir() and (p / "SKILL.md").exists()]
if [p.name for p in skill_dirs] != [expected]:
    print(f"skills/ must contain only {expected}, found {[p.name for p in skill_dirs]}")
    sys.exit(1)
required = {
    "docs-agent", "video-agent", "play-store-agent", "app-store-agent",
    "extension-store-agent", "oss-launch-agent", "social-agent", "landing-agent",
    "email-agent", "positioning-agent", "channel-scout", "rollout-planner",
    "claims-agent", "funding-agent", "measurement-agent", "legal-checklist-agent",
    "locale-agent", "pricing-agent", "seo-cluster-agent",
    "skill-distribution-agent",
}
have = {p.stem for p in (root / "skills/promoting-developer-apps/subagents").glob("*.md")}
missing = sorted(required - have)
if missing:
    print(f"missing subagents: {missing}")
    sys.exit(1)
cursor = json.loads((root / ".cursor-plugin/plugin.json").read_text())
if cursor.get("agents") != "./agents/":
    print(".cursor-plugin/plugin.json must set agents to ./agents/")
    sys.exit(1)
vers = set()
for rel in ["plugin.json", ".cursor-plugin/plugin.json", ".codex-plugin/plugin.json", ".claude-plugin/plugin.json"]:
    data = json.loads((root / rel).read_text())
    vers.add(data.get("version"))
skill_ver = re.search(r'^  version:\s*"([^"]+)"', fm.group(1), re.M)
if skill_ver:
    vers.add(skill_ver.group(1))
if len(vers) != 1:
    print(f"plugin/SKILL versions must match, found {sorted(vers)}")
    sys.exit(1)
print("frontmatter and JSON OK")
print(f"description chars: {len(description)}")
print(f"subagents: {len(have)}")
PY

while IFS= read -r rel; do
  if [[ ! -e "$SKILL/$rel" ]]; then
    echo "BROKEN REF $rel"
    FAIL=1
  fi
done < <(grep -oE '\[[^]]+\]\(([^)]+)\)' "$SKILL/SKILL.md" | sed -E 's/.*\((.*)\)/\1/' | grep -vE '^https?://' || true)

if [[ "$FAIL" -ne 0 ]]; then
  echo "VALIDATE FAIL"
  exit 1
fi
echo "VALIDATE OK"
