#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
if ! command -v codex >/dev/null 2>&1; then
  echo "Codex CLI was not found. See README.md for setup." >&2
  exit 1
fi
exec codex "Act as my AI Engineering mentor. Read AGENTS.md, context/STUDENT_PROFILE.md, context/LEARNING_STATE.md, context/CURRICULUM.md, and the most recent dated sessions/ note. Continue from the saved next step in a cohesive conceptual lesson. No new onboarding questions."
