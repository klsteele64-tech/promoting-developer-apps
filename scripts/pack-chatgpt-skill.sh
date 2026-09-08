#!/usr/bin/env bash
# Zip the skill folder for ChatGPT / Codex skill upload.
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
OUT="${1:-$ROOT/promoting-developer-apps-skill.zip}"
cd "$ROOT"
rm -f "$OUT"
zip -r "$OUT" skills \
  plugin.json .cursor-plugin .codex-plugin .claude-plugin \
  commands agents assets README.md MARKETPLACE.md LICENSE CHANGELOG.md \
  -x "*.DS_Store"
echo "Wrote $OUT"
