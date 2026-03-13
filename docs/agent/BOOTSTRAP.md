# Agent Bootstrap

This file is the execution path for agents setting up the demo loop.

## Goal

Produce one minimal working system loop:

- one new agent
- one runtime workspace
- one runtime spec
- one SOP
- one curated note

## Inputs

You need:

- a local checkout of this repo
- a writable demo workspace path outside the repo

## Recommended Demo Path

Example workspace root:

```bash
mkdir -p /tmp/core-demo
```

Example agent workspace:

```bash
/tmp/core-demo/demo-intel-analyst
```

## Bootstrap Steps

### 1. Scaffold the workspace

Run:

```bash
bash /path/to/core/skills/agent-onboarding/scaffold_agent_workspace.sh demo-intel-analyst /tmp/core-demo/demo-intel-analyst
```

### 2. Fill canonical files

Edit:

```bash
/path/to/core/agent-profiles/demo-intel-analyst/AGENTS.md
/path/to/core/agent-profiles/demo-intel-analyst/SOUL.md
/path/to/core/agent-runtime-specs/demo-intel-analyst.md
/path/to/core/sops/demo-intel-analyst/README.md
```

Use these as the starting point:

```bash
/path/to/core/examples/demo-agent/
/path/to/core/examples/demo-runtime-spec.md
/path/to/core/examples/demo-sop.md
```

### 3. Validate the setup

Run:

```bash
bash /path/to/core/skills/agent-onboarding/validate_agent_workspace.sh demo-intel-analyst /tmp/core-demo/demo-intel-analyst
```

Expected output:

```text
Validated /tmp/core-demo/demo-intel-analyst
```

### 4. Create one curated note

Use:

```bash
/path/to/core/knowledge-graph-template/curated/
```

You may start from:

```bash
/path/to/core/knowledge-graph-template/curated/examples/2026-03-12-runtime-spec-vs-runtime-state.md
```

## Success Condition

Bootstrap is successful if:

- the workspace validates
- canonical files exist
- one SOP exists
- one curated note exists

If any of these are missing, the bootstrap is incomplete.
