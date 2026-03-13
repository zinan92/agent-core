# Tutorial

This tutorial walks through the smallest useful path for using this repo.

Goal: create one clean demo agent setup and one curated knowledge note.

## Step 1: Read The System Model

Read these first:

- [ARCHITECTURE.md](ARCHITECTURE.md)
- [PRINCIPLES.md](PRINCIPLES.md)

You only need two ideas before continuing:

- durable definitions should have a single source of truth
- runtime state should not be confused with role definition

## Step 2: Inspect The Demo Agent

Open:

- [examples/demo-agent/AGENTS.md](examples/demo-agent/AGENTS.md)
- [examples/demo-agent/SOUL.md](examples/demo-agent/SOUL.md)
- [examples/demo-runtime-spec.md](examples/demo-runtime-spec.md)
- [examples/demo-sop.md](examples/demo-sop.md)

This shows the relationship between:

- profile
- runtime spec
- SOP

## Step 3: Copy The Templates

Start from:

- [templates/agent-profile/](templates/agent-profile)
- [templates/runtime-spec/default-runtime-spec.md](templates/runtime-spec/default-runtime-spec.md)
- [templates/sop/canonical-sop-template.md](templates/sop/canonical-sop-template.md)

Create a new role by duplicating these templates into your own working area.

## Step 4: Use The Onboarding Skill

Open:

- [skills/agent-onboarding/SKILL.md](skills/agent-onboarding/SKILL.md)

Then fill:

- [skills/agent-onboarding/spec-template.md](skills/agent-onboarding/spec-template.md)

The onboarding flow should produce:

- a canonical profile
- a canonical runtime spec
- a canonical SOP location
- a target workspace that only holds runtime state

## Step 5: Install Baseline Skills

Review:

- [skills/default/README.md](skills/default/README.md)

The baseline set is intentionally small:

- brainstorming
- canvas-communication
- connect-the-dots
- writing-plans
- verification-before-completion

Do not add company-specific or agent-specific skills until the baseline layer is stable.

## Step 6: Start The Knowledge Graph

Use:

- [knowledge-graph-template/README.md](knowledge-graph-template/README.md)

Put raw material into:

- [knowledge-graph-template/inbox/](knowledge-graph-template/inbox)

Promote durable material into:

- [knowledge-graph-template/curated/](knowledge-graph-template/curated)

Review the example notes:

- [knowledge-graph-template/curated/examples/2026-03-12-skill-driven-organization.md](knowledge-graph-template/curated/examples/2026-03-12-skill-driven-organization.md)
- [knowledge-graph-template/curated/examples/2026-03-12-runtime-spec-vs-runtime-state.md](knowledge-graph-template/curated/examples/2026-03-12-runtime-spec-vs-runtime-state.md)

## Step 7: Build Your First Real Role

Once the demo makes sense:

1. define one clear role
2. write one runtime spec
3. write one SOP
4. onboard one agent
5. create one curated note

Do not scale before this small loop feels clean.

## Want The Command-Level Version?

Read:

- [DEMO-WALKTHROUGH.md](DEMO-WALKTHROUGH.md)
