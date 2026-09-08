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
need "$SKILL/references/ad-channels-free.md"
need "$SKILL/references/ad-channels-paid.md"
need "$SKILL/references/rollout-playbooks.md"
need "$SKILL/references/content-studio.md"
need "$SKILL/references/funding-sources.md"
need "$SKILL/references/talent-and-sales.md"
need "$SKILL/references/interview-intake.md"
need "$SKILL/references/doc-set.md"
need "$SKILL/references/walkthrough-production.md"
need "$SKILL/subagents/docs-agent.md"
need "$SKILL/subagents/video-agent.md"
need "$SKILL/assets/campaign-brief.md"
need "$SKILL/assets/marketing-plan.md"
need "$SKILL/assets/channel-plan.md"
need "$SKILL/assets/launch-calendar.md"
need "$SKILL/assets/docs-outline.md"
need "$SKILL/assets/video-brief.md"
need "$SKILL/assets/funding-pitch.md"
need "$SKILL/assets/talent-offer.md"
need "$SKILL/assets/player.html"
need "$SKILL/assets/docs/FACT-SHEET.md"
need "$SKILL/assets/docs/README.md"
need "$SKILL/assets/docs/getting-started.md"
need "$ROOT/agents/docs-agent.md"
need "$ROOT/agents/video-agent.md"
need "$ROOT/commands/launch-campaign.md"
need "$ROOT/commands/create-app-docs.md"
need "$ROOT/commands/create-walkthrough-video.md"
need "$ROOT/MARKETPLACE.md"
need "$ROOT/README.md"

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
cursor = json.loads((root / ".cursor-plugin/plugin.json").read_text())
if cursor.get("agents") != "./agents/":
    print(".cursor-plugin/plugin.json must set agents to ./agents/")
    sys.exit(1)
for rel in ["plugin.json", ".cursor-plugin/plugin.json", ".codex-plugin/plugin.json", ".claude-plugin/plugin.json"]:
    json.loads((root / rel).read_text())
print("frontmatter and JSON OK")
print(f"description chars: {len(description)}")
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
