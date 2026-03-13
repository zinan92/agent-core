#!/usr/bin/env bash
set -euo pipefail

REPO_ROOT="/Users/wendy/work/core"
TEST_ROOT="$(mktemp -d)"
WORKSPACE_PATH="${TEST_ROOT}/demo-agent"
AGENT_SLUG="demo-agent"

cleanup() {
  rm -rf "${TEST_ROOT}"
}
trap cleanup EXIT

bash "${REPO_ROOT}/skills/agent-onboarding/scaffold_agent_workspace.sh" "${AGENT_SLUG}" "${WORKSPACE_PATH}" >/dev/null

required_paths=(
  "${REPO_ROOT}/agent-profiles/${AGENT_SLUG}/AGENTS.md"
  "${REPO_ROOT}/agent-runtime-specs/${AGENT_SLUG}.md"
  "${REPO_ROOT}/sops/${AGENT_SLUG}/README.md"
)

for path in "${required_paths[@]}"; do
  if [ ! -e "${path}" ]; then
    echo "Missing expected repo-local path: ${path}" >&2
    exit 1
  fi
done

bash "${REPO_ROOT}/skills/agent-onboarding/validate_agent_workspace.sh" "${AGENT_SLUG}" "${WORKSPACE_PATH}" >/dev/null

echo "agent_onboarding_root_resolution: ok"
