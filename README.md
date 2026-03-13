# Wendy System Core

`core` is a public starter package for building an AI-native operating system.

It is designed for people who want a clean way to organize:

- agent onboarding
- skills
- SOPs
- runtime definitions
- a curated knowledge graph

This repo is not a dump of an internal workspace. It is a trimmed public package meant to help you start from a clear core.

## Who This Is For

This repo is for you if you want to:

- build your own agent system instead of running isolated one-off agents
- manage agents with explicit roles, boundaries, and handoff rules
- separate durable system definitions from messy runtime state
- keep a knowledge graph as curated memory rather than as a raw storage pile

## What You Get

- a compact architecture for an AI operating system
- a new-agent onboarding mechanism
- a small baseline set of default skills
- reusable templates for profiles, runtime specs, and SOPs
- a starter knowledge graph structure
- one demo agent and example notes

## Quickstart

### 1. Understand the model

Read:

- [ARCHITECTURE.md](ARCHITECTURE.md)
- [PRINCIPLES.md](PRINCIPLES.md)

### 2. See a concrete example

Open:

- [examples/demo-agent/](examples/demo-agent)
- [examples/demo-runtime-spec.md](examples/demo-runtime-spec.md)
- [examples/demo-sop.md](examples/demo-sop.md)

### 3. Start from the templates

Use:

- [templates/agent-profile/](templates/agent-profile)
- [templates/runtime-spec/default-runtime-spec.md](templates/runtime-spec/default-runtime-spec.md)
- [templates/sop/canonical-sop-template.md](templates/sop/canonical-sop-template.md)

### 4. Use the onboarding mechanism

The core bootstrap lives here:

- [skills/agent-onboarding/](skills/agent-onboarding)

This is the mechanism for creating a clean new agent environment.

### 5. Start your knowledge graph

Use:

- [knowledge-graph-template/](knowledge-graph-template)

Start by capturing material in `inbox/`, then promote only durable notes into `curated/`.

If you want a fuller walkthrough, read:

- [TUTORIAL.md](TUTORIAL.md)
- [DEMO-WALKTHROUGH.md](DEMO-WALKTHROUGH.md)

## Core Concepts

### 1. Skill-Driven Organization

Treat the system as:

- company
- role
- SOP
- skill
- step

Instead of treating work as vague job titles, break roles into finite, reusable operating units.

### 2. Single Source of Truth

Durable definitions should have one owner.

In the original internal system, the manager layer owned:

- skills
- SOPs
- agent profiles
- runtime specs

This package preserves that pattern.

### 3. Runtime Spec vs Runtime State

Keep these separate:

- `runtime spec` = the canonical operating definition
- `runtime state` = the live working surface

This separation is one of the most important patterns in the repo.

### 4. Curated Knowledge Graph

The knowledge graph should be:

- filtered
- compressed
- durable
- useful across time

It should not be a dumping ground for every raw output.

## Repository Structure

```text
core/
  README.md
  PRINCIPLES.md
  ARCHITECTURE.md
  QUICKSTART.md

  skills/
    agent-onboarding/
    default/

  templates/
    agent-profile/
    runtime-spec/
    sop/

  knowledge-graph-template/
    _system/
    inbox/
    curated/

  examples/
    demo-agent/
    demo-runtime-spec.md
    demo-sop.md
```

## What This Repo Is Not

This repo is not:

- a full private operating system
- a complete internal knowledge vault
- a dump of every agent profile ever used
- a collection of runtime logs, conversations, or local machine state

It is the smallest public package that still shows how the core works.

## Suggested First Build

If you want to use this repo immediately, do this:

1. Duplicate the demo agent into your own role.
2. Fill out a runtime spec for that role.
3. Use the onboarding skill to scaffold the workspace.
4. Create your first curated note in the knowledge graph template.
5. Add company-specific skills only after the baseline layer is stable.

## Next Files To Read

- [skills/README.md](skills/README.md)
- [skills/default/README.md](skills/default/README.md)
- [QUICKSTART.md](QUICKSTART.md)
- [TUTORIAL.md](TUTORIAL.md)
- [DEMO-WALKTHROUGH.md](DEMO-WALKTHROUGH.md)
- [CONTRIBUTING.md](CONTRIBUTING.md)
