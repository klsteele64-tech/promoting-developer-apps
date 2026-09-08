#!/usr/bin/env bash
# Pack the skill and attempt every CLI marketplace add. Writes filled form packets.
# Web portals still need the publisher's signed-in session; this script does not invent logins.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
OUT_DIR="${SUBMIT_OUT:-$ROOT/skill-distribution}"
ZIP="${SKILL_ZIP:-$ROOT/promoting-developer-apps-skill.zip}"
OWNER="${SKILL_OWNER:-klsteele64-tech}"
REPO="${SKILL_REPO:-promoting-developer-apps}"
NAME="${SKILL_NAME:-promoting-developer-apps}"
GIT_URL="https://github.com/${OWNER}/${REPO}"
HOSTS="${SKILL_HOSTS:-all}"

mkdir -p "$OUT_DIR"

bash "$ROOT/skills/promoting-developer-apps/scripts/validate.sh"
bash "$ROOT/scripts/pack-chatgpt-skill.sh" "$ZIP"

CLAUDE_ST="blocked-on-auth"
CODEX_ST="blocked-on-auth"
NPX_ST="blocked-on-auth"
RUN_CLI="${SUBMIT_CLI:-1}"
run_limited() {
  if command -v timeout >/dev/null 2>&1; then
    timeout 40 "$@"
  else
    "$@"
  fi
}

if [[ "$RUN_CLI" != "1" ]]; then
  echo "SUBMIT_CLI=0 — skipped CLI marketplace adds" | tee "$OUT_DIR/claude.err" "$OUT_DIR/codex.err" "$OUT_DIR/npx.err"
else
  if command -v claude >/dev/null 2>&1; then
    if run_limited claude plugin marketplace add "${OWNER}/${REPO}" >"$OUT_DIR/claude.out" 2>"$OUT_DIR/claude.err"; then
      CLAUDE_ST="submitted"
    else
      CLAUDE_ST="failed"
    fi
  else
    echo "claude CLI not found" | tee "$OUT_DIR/claude.err"
  fi

  if command -v codex >/dev/null 2>&1; then
    if run_limited codex plugin marketplace add "${OWNER}/${REPO}" >"$OUT_DIR/codex.out" 2>"$OUT_DIR/codex.err"; then
      CODEX_ST="submitted"
    else
      CODEX_ST="failed"
    fi
  else
    echo "codex CLI not found" | tee "$OUT_DIR/codex.err"
  fi

  if command -v npx >/dev/null 2>&1; then
    if run_limited npx --yes skills add "${OWNER}/${REPO}" >"$OUT_DIR/npx.out" 2>"$OUT_DIR/npx.err"; then
      NPX_ST="submitted"
    else
      NPX_ST="failed"
    fi
  else
    echo "npx not found" | tee "$OUT_DIR/npx.err"
  fi
fi

DESC="$(python3 - <<PY
import json
from pathlib import Path
print(json.loads(Path("$ROOT/plugin.json").read_text())["description"])
PY
)"

cat > "$OUT_DIR/SUBMISSIONS.md" <<EOF
# Skill marketplace submissions — ${NAME}

Public repo: ${GIT_URL}
Zip: ${ZIP}
Hosts requested: ${HOSTS}
Generated: $(date -u +%Y-%m-%dT%H:%M:%SZ)

## CLI attempts

| Host | Status | Note |
|------|--------|------|
| Claude Code (\`claude plugin marketplace add\`) | ${CLAUDE_ST} | See claude.out / claude.err |
| Codex (\`codex plugin marketplace add\`) | ${CODEX_ST} | See codex.out / codex.err |
| npx skills | ${NPX_ST} | See npx.out / npx.err |

## Web forms — fill and click Submit (publisher must be signed in)

### Cursor official

- URL: https://cursor.com/marketplace/publish
- Repository: ${GIT_URL}
- Plugin name: ${NAME}
- Description: ${DESC}
- Status if no Cursor session: blocked-on-auth

### cursor.directory

- URL: https://cursor.directory/plugins/new
- GitHub repo URL: ${GIT_URL}
- Sign in: GitHub or Google
- Then Submit
- Status if no session: blocked-on-auth

### ChatGPT / Codex public directory (skills only)

- Docs: https://developers.openai.com/plugins/deploy/submission
- Type: Skills only (no MCP URL)
- Upload: ${ZIP}
- Plugin name: Promoting Developer Apps
- Short description: ${DESC}
- Website: ${GIT_URL}
- Support: ${GIT_URL}/issues
- Privacy / terms: UNKNOWN — do not invent URLs
- Starter prompts: from .codex-plugin/plugin.json interface.defaultPrompt
- Tests: tests/marketplace-cases.md (use 5 positive + 3 negative)
- Status if no OpenAI Apps Management session: blocked-on-auth
- Status if privacy/terms required and missing: blocked-on-missing-field

### Copilot / VS Code / Kiro

- Installable via root plugin.json at ${GIT_URL}
- Public store form: UNKNOWN unless the host documents one

## Honesty

submitted ≠ listed. Do not claim a catalog listing until that host shows it.
EOF

echo "Wrote $OUT_DIR/SUBMISSIONS.md"
echo "Zip $ZIP"
echo "CLI Claude=${CLAUDE_ST} Codex=${CODEX_ST} npx=${NPX_ST}"
