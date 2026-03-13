# Wendy System Core

> A public starter package for building an AI-native operating system.

Most agent repos still feel like prompt bundles with loose wrappers around a model.

`core` is built around a different assumption:

**an agent system should have an operating model, not just a collection of prompts.**

This repository gives you a small, reusable core for:

- onboarding agents
- managing skills
- defining SOPs
- separating runtime definition from runtime state
- keeping a knowledge graph as curated memory

It is intentionally small. The point is not to expose a full private operating system. The point is to give you a clean starting point that can actually be reused.

---

## At A Glance

| This repo gives you | This repo does not try to be |
|---|---|
| an onboarding mechanism | a full internal company system |
| baseline default skills | a giant knowledge vault |
| reusable templates | a dump of runtime logs |
| a starter knowledge graph | a collection of random prompts |
| a demo agent and walkthrough | every agent profile ever used |

---

## Why This Exists

Most current agent setups break in one of these ways:

- no clear source of truth
- no clean separation between durable definitions and live working mess
- no consistent onboarding model
- no durable knowledge layer

This repo exists to fix that with a smaller, stricter core.

Instead of treating agents as ad hoc personalities, this system treats them as:

```text
company -> role -> SOP -> skill -> step
```

That makes the system easier to:

- understand
- reproduce
- hand off
- extend without rewriting the core

---

## What Makes This Different

| Common agent repo | `core` |
|---|---|
| loose prompts and wrappers | explicit operating model |
| runtime state mixed with definitions | runtime spec and runtime state are separated |
| every workspace becomes its own truth | durable definitions should have one owner |
| knowledge base becomes a dumping ground | knowledge graph is curated memory |
| unclear how another agent should use it | agent-facing docs are explicit |

---

## What You Get

- a compact system architecture
- a clean onboarding mechanism
- a baseline set of default skills
- reusable templates for profiles, runtime specs, and SOPs
- a starter knowledge graph skeleton
- one demo agent
- one command-level walkthrough

---

## Start Here

### Human Path

If you are a founder, operator, or builder evaluating the system:

1. [ARCHITECTURE.md](ARCHITECTURE.md)
2. [PRINCIPLES.md](PRINCIPLES.md)
3. [QUICKSTART.md](QUICKSTART.md)

Then inspect:

- [examples/demo-agent/](examples/demo-agent)
- [DEMO-WALKTHROUGH.md](DEMO-WALKTHROUGH.md)

### Agent Path

If you are handing this repository to an agent:

1. [docs/agent/START.md](docs/agent/START.md)
2. [docs/agent/CONTRACT.md](docs/agent/CONTRACT.md)
3. [docs/agent/BOOTSTRAP.md](docs/agent/BOOTSTRAP.md)

This is the execution path for agents that need to bootstrap, test, or evaluate the system.

---

## The Smallest Useful Loop

If you only do one thing with this repo, do this:

1. duplicate the demo agent model
2. scaffold one new workspace
3. write one runtime spec
4. write one SOP
5. create one curated note

That is enough to tell whether the system is actually usable.

For the full command-level version, read:

- [DEMO-WALKTHROUGH.md](DEMO-WALKTHROUGH.md)

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

## Core Concepts

### Skill-Driven Organization

Roles are built from finite SOP bundles, not vague job titles.

### Single Source of Truth

Durable definitions should have one canonical owner.

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

It is a small public core meant to be understandable, reusable, and easy to hand off.

---

## Continue Reading

- [skills/README.md](skills/README.md)
- [skills/default/README.md](skills/default/README.md)
- [QUICKSTART.md](QUICKSTART.md)
- [TUTORIAL.md](TUTORIAL.md)
- [DEMO-WALKTHROUGH.md](DEMO-WALKTHROUGH.md)
- [docs/agent/START.md](docs/agent/START.md)
- [CONTRIBUTING.md](CONTRIBUTING.md)
