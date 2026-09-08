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
need "$SKILL/assets/talent-offer.md"
need "$SKILL/assets/marketing-plan.md"
need "$SKILL/assets/docs/README.md"
need "$SKILL/assets/docs/getting-started.md"
need "$SKILL/assets/docs/FACT-SHEET.md"
need "$SKILL/assets/docs/features.md"
need "$SKILL/assets/docs/faq.md"
need "$SKILL/assets/docs/changelog.md"
need "$SKILL/assets/docs/support.md"
need "$ROOT/scripts/submit-skill-marketplaces.sh"
need "$ROOT/.claude-plugin/marketplace.json"

while IFS= read -r f; do
  need "$f"
done < <(find "$ROOT/commands" -type f -name '*.md' | sort)

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
    "skill-distribution-agent", "talent-agent", "marketing-plan-agent",
    "changelog-agent", "creative-agent", "press-kit-agent", "reviews-agent",
    "retention-agent", "partner-agent", "community-agent",
}
have = {p.stem for p in (root / "skills/promoting-developer-apps/subagents").glob("*.md")}
missing = sorted(required - have)
if missing:
    print(f"missing subagents: {missing}")
    sys.exit(1)
extra = sorted(have - required)
if extra:
    print(f"undeclared subagents: {extra}")
    sys.exit(1)
agents = {p.stem for p in (root / "agents").glob("*.md")}
if agents != have:
    print(f"agents/ must match subagents/ 1:1, only-agents={sorted(agents-have)} only-sub={sorted(have-agents)}")
    sys.exit(1)
required_commands = {
    "launch-campaign", "launch-content", "ad-channels", "rollout-plan",
    "write-positioning", "claims-check", "create-app-docs", "create-walkthrough-video",
    "write-landing", "write-launch-posts", "write-ship-notes", "email-sequence",
    "press-kit", "creative-matrix", "promote-play-store-app", "promote-app-store",
    "promote-extension", "oss-launch", "campaign-metrics", "review-replies",
    "retention-plan", "partner-pack", "community-ops", "funding-plan",
    "legal-checklist", "localize-listings", "pricing-plan", "seo-cluster",
    "promote-skill", "sell-app-or-talent", "marketing-plan", "promote-website",
}
cmds = {p.stem for p in (root / "commands").glob("*.md")}
missing_cmds = sorted(required_commands - cmds)
if missing_cmds:
    print(f"missing commands: {missing_cmds}")
    sys.exit(1)
for agent in sorted(have):
    text = (root / "agents" / f"{agent}.md").read_text()
    needle = f"subagents/{agent}.md"
    if needle not in text:
        print(f"agents/{agent}.md must load {needle}")
        sys.exit(1)
legal_cmds = {
    "promote-play-store-app", "promote-app-store", "promote-extension",
    "funding-plan", "sell-app-or-talent", "ad-channels", "promote-website",
    "launch-campaign", "promote-skill", "partner-pack",
}
for name in sorted(legal_cmds):
    text = (root / "commands" / f"{name}.md").read_text()
    if "legal-checklist" not in text:
        print(f"commands/{name}.md must dispatch or mention legal-checklist on store/paid/funding/sale/submit")
        sys.exit(1)
claims_cmds = {
    "promote-play-store-app", "promote-app-store", "promote-extension",
    "ad-channels", "promote-website", "launch-campaign", "promote-skill",
    "funding-plan", "sell-app-or-talent",
}
inherit_agents = {
    "docs-agent", "video-agent", "landing-agent", "social-agent", "changelog-agent",
    "email-agent", "press-kit-agent", "creative-agent", "play-store-agent",
    "app-store-agent", "extension-store-agent", "oss-launch-agent", "reviews-agent",
    "retention-agent", "partner-agent", "community-agent", "funding-agent",
    "talent-agent", "skill-distribution-agent", "locale-agent", "seo-cluster-agent",
    "marketing-plan-agent", "channel-scout", "pricing-agent",
}
for name in sorted(inherit_agents):
    text = (root / "skills/promoting-developer-apps/subagents" / f"{name}.md").read_text()
    if "must-not-claim" not in text:
        print(f"subagents/{name}.md must inherit must-not-claim from positioning")
        sys.exit(1)
for name in sorted(claims_cmds):
    text = (root / "commands" / f"{name}.md").read_text()
    if "claims-agent" not in text and "claims-check" not in text:
        print(f"commands/{name}.md must run claims-agent before paid or store copy")
        sys.exit(1)
skill_md = (root / rel).read_text()
for needle in ("campaign/CHANNEL-PLAN.md", "positioning/POSITIONING.md", "campaign/CALENDAR.md", "claims/CHECK.md"):
    if needle not in skill_md:
        print(f"{rel} deliverables must name runtime file {needle}")
        sys.exit(1)
cursor = json.loads((root / ".cursor-plugin/plugin.json").read_text())
if cursor.get("agents") != "./agents/":
    print(".cursor-plugin/plugin.json must set agents to ./agents/")
    sys.exit(1)
vers = set()
for rel_json in ["plugin.json", ".cursor-plugin/plugin.json", ".codex-plugin/plugin.json", ".claude-plugin/plugin.json"]:
    data = json.loads((root / rel_json).read_text())
    vers.add(data.get("version"))
market = json.loads((root / ".claude-plugin/marketplace.json").read_text())
vers.add(market.get("metadata", {}).get("version"))
for plug in market.get("plugins", []):
    vers.add(plug.get("version"))
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
