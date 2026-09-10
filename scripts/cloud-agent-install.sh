#!/usr/bin/env bash
# Idempotent Cloud Agent bootstrap for this skill plugin repo.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"

mkdir -p "${HOME}/.cursor/plugins/local" "${HOME}/.cursor/skills"
ln -sfn "${ROOT}" "${HOME}/.cursor/plugins/local/promoting-developer-apps"
ln -sfn "${ROOT}/skills/promoting-developer-apps" "${HOME}/.cursor/skills/promoting-developer-apps"

bash "${ROOT}/skills/promoting-developer-apps/scripts/validate.sh"

test -f "${HOME}/.cursor/plugins/local/promoting-developer-apps/.cursor-plugin/plugin.json"
test -f "${HOME}/.cursor/skills/promoting-developer-apps/SKILL.md"

echo "cloud-agent-install: OK"
