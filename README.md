# Wendy System Core

> A public starter package for building an AI-native operating system.

`core` is designed around one simple claim:

Most agent systems are still too loose. They have prompts, wrappers, and scattered notes, but not a clear operating model.

This repo is a small, reproducible core for organizing:

- agent onboarding
- skills
- SOPs
- runtime definitions
- a curated knowledge graph

It is intentionally not a dump of an internal workspace. It is a trimmed public package.

---

## Why This Exists

Most current agent setups break in one of these ways:

- no clear source of truth
- no clean separation between role definition and runtime mess
- no consistent onboarding model
- no durable knowledge layer

This repo exists to give you a cleaner starting point.

Instead of treating agents as ad hoc personalities, this system treats them as:

`company -> role -> SOP -> skill -> step`

That makes the system easier to:

- understand
- reproduce
- extend
- hand off to other humans or agents

---

## What Makes This Different

| Common Agent Repo | `core` |
|---|---|
| loose prompts and wrappers | explicit operating model |
| runtime state mixed with definitions | runtime spec and runtime state are separated |
| every workspace becomes its own truth | one canonical owner for durable definitions |
| knowledge base becomes a dumping ground | knowledge graph is curated memory |
| hard for another agent to use | agent-facing docs are explicit and structured |

---

## What You Get

- a compact system architecture
- a clean onboarding mechanism
- a baseline set of default skills
- reusable templates
- a starter knowledge graph skeleton
- one demo agent
- one end-to-end walkthrough

---

## Start Here

### If you are a human evaluating the system

Read these first:

1. [ARCHITECTURE.md](ARCHITECTURE.md)
2. [PRINCIPLES.md](PRINCIPLES.md)
3. [QUICKSTART.md](QUICKSTART.md)

Then look at:

- [examples/demo-agent/](examples/demo-agent)
- [DEMO-WALKTHROUGH.md](DEMO-WALKTHROUGH.md)

### If you are giving this repo to an agent

Start here:

1. [docs/agent/START.md](docs/agent/START.md)
2. [docs/agent/CONTRACT.md](docs/agent/CONTRACT.md)
3. [docs/agent/BOOTSTRAP.md](docs/agent/BOOTSTRAP.md)

This is the execution path for agents that need to deploy, test, or bootstrap the system.

---

## Repository Structure

```text
core/
  README.md
  PRINCIPLES.md
  ARCHITECTURE.md
  QUICKSTART.md
  TUTORIAL.md
  DEMO-WALKTHROUGH.md

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

  docs/agent/
    START.md
    CONTRACT.md
    BOOTSTRAP.md
```

---

## The Smallest Useful Loop

If you only do one thing with this repo, do this:

1. copy the demo agent model
2. scaffold one new workspace
3. write one runtime spec
4. write one SOP
5. create one curated note

That is enough to test whether the system is actually usable.

For the full command-level version, read:

- [DEMO-WALKTHROUGH.md](DEMO-WALKTHROUGH.md)

---

## Core Concepts

### Skill-Driven Organization

Roles are built from finite SOP bundles, not vague job titles.

### Single Source of Truth

Durable definitions should have one owner.

### Runtime Spec vs Runtime State

Definitions and live working state should not be mixed.

### Curated Knowledge Graph

Knowledge should be promoted, filtered, and compressed, not merely accumulated.

---

## What This Repo Is Not

This repo is not:

- a full private operating system
- a complete internal knowledge vault
- a dump of every agent profile ever used
- a collection of runtime logs, conversations, or local machine state

It is a small public core meant to be understandable and reusable.

---

## Next Files To Read

- [skills/README.md](skills/README.md)
- [skills/default/README.md](skills/default/README.md)
- [QUICKSTART.md](QUICKSTART.md)
- [TUTORIAL.md](TUTORIAL.md)
- [DEMO-WALKTHROUGH.md](DEMO-WALKTHROUGH.md)
- [docs/agent/START.md](docs/agent/START.md)
- [CONTRIBUTING.md](CONTRIBUTING.md)
