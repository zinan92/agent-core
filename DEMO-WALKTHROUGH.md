# Demo Walkthrough

This walkthrough takes you from zero to one complete loop:

1. create one new agent definition
2. scaffold one runtime workspace
3. validate the workspace
4. add one curated note to the knowledge graph

The goal is not scale. The goal is to make the core loop real.

## Prerequisites

You have this repo locally as:

```bash
/path/to/core
```

In the examples below, replace `/path/to/core` with your actual local path.

## Step 1: Read The Smallest Relevant Files

Read:

- `ARCHITECTURE.md`
- `PRINCIPLES.md`
- `skills/agent-onboarding/SKILL.md`

You only need to understand three rules:

- durable definitions live in one canonical place
- runtime state lives in the target workspace
- the knowledge graph should be curated, not exhaustive

## Step 2: Create A Workspace Path

Pick a new demo workspace outside the repo.

Example:

```bash
mkdir -p /tmp/core-demo
```

We will create a new agent workspace at:

```bash
/tmp/core-demo/demo-intel-analyst
```

## Step 3: Scaffold The Agent

Run:

```bash
bash /path/to/core/skills/agent-onboarding/scaffold_agent_workspace.sh demo-intel-analyst /tmp/core-demo/demo-intel-analyst
```

This creates:

- `agent-profiles/demo-intel-analyst/`
- `agent-runtime-specs/demo-intel-analyst.md`
- `sops/demo-intel-analyst/`
- `/tmp/core-demo/demo-intel-analyst/`

The workspace should contain:

- symlinked profile files
- `.openclaw/workspace-state.json`
- `inbox/`
- `active/`
- `handoff/`
- `archive/`

## Step 4: Fill The Canonical Files

Edit these files:

```bash
/path/to/core/agent-profiles/demo-intel-analyst/AGENTS.md
/path/to/core/agent-profiles/demo-intel-analyst/SOUL.md
/path/to/core/agent-runtime-specs/demo-intel-analyst.md
/path/to/core/sops/demo-intel-analyst/README.md
```

If you want a shortcut, start from:

```bash
/path/to/core/examples/demo-agent/
/path/to/core/examples/demo-runtime-spec.md
/path/to/core/examples/demo-sop.md
```

## Step 5: Validate The Workspace

Run:

```bash
bash /path/to/core/skills/agent-onboarding/validate_agent_workspace.sh demo-intel-analyst /tmp/core-demo/demo-intel-analyst
```

Expected output:

```text
Validated /tmp/core-demo/demo-intel-analyst
```

If validation fails, fix the canonical files or workspace links before continuing.

## Step 6: Add Your First Curated Note

Create a note in:

```bash
/path/to/core/knowledge-graph-template/curated/
```

Example:

```bash
cp /path/to/core/knowledge-graph-template/curated/examples/2026-03-12-runtime-spec-vs-runtime-state.md \
  /path/to/core/knowledge-graph-template/curated/demo-note.md
```

Then edit it to reflect your own system.

## Step 7: Check The Core Loop

If all of this works, you now have:

- one role definition
- one runtime spec
- one runtime workspace
- one SOP
- one curated knowledge note

That is the smallest complete loop in this repo.

## What To Do Next

Only after this feels clean should you:

- add company-specific skills
- add more roles
- expand the knowledge graph
- create a second operating company
