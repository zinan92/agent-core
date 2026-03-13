<div align="center">

<sub><strong>ARCHITECTURE-FIRST STARTER PACKAGE</strong></sub>

# Wendy System Core

### Build an AI-native operating system, not just a pile of prompts.

<p>
  <img alt="public" src="https://img.shields.io/badge/license-MIT-black">
  <img alt="starter package" src="https://img.shields.io/badge/type-starter_package-1f6feb">
  <img alt="focus" src="https://img.shields.io/badge/focus-onboarding%20%7C%20runtime%20specs%20%7C%20curated%20knowledge-0969da">
</p>

<p>
  <strong>Onboarding</strong> · <strong>Skills</strong> · <strong>SOPs</strong> · <strong>Runtime Specs</strong> · <strong>Curated Knowledge</strong>
</p>

<p>
  For humans evaluating the system.<br/>
  For agents actually bootstrapping it.
</p>

<p>
  <a href="./QUICKSTART.md"><img alt="Start Here" src="https://img.shields.io/badge/Start%20Here-human%20path-2da44e"></a>
  <a href="./DEMO-WALKTHROUGH.md"><img alt="Run the Demo" src="https://img.shields.io/badge/Run%20the%20Demo-smallest%20loop-1f6feb"></a>
  <a href="./docs/agent/START.md"><img alt="Agent Entry" src="https://img.shields.io/badge/Agent%20Entry-execution%20docs-111827"></a>
</p>

</div>

<div align="center">

**Not another prompt bundle.**  
`core` gives you one owner for durable definitions, one path for humans, and one path for agents.

</div>

## At A Glance

```mermaid
flowchart LR
    subgraph H[For Humans]
        H1[Evaluate]
        H2[Adopt]
        H1 --> H2
    end

    subgraph C[core]
        C1[Onboard]
        C2[Define]
        C3[Run]
        C4[Remember]
        C1 --> C2 --> C3 --> C4
    end

    subgraph A[For Agents]
        A1[Bootstrap]
        A2[Validate]
        A3[Operate]
        A1 --> A2 --> A3
    end

    H1 --> C2
    A1 --> C1
    C4 --> H2
    C3 --> A3

    classDef human fill:#dff3e4,stroke:#2da44e,color:#0f5132
    classDef core fill:#e7f0ff,stroke:#1f6feb,color:#0b3d91
    classDef agent fill:#f3f4f6,stroke:#111827,color:#111827

    class H1,H2 human
    class C1,C2,C3,C4 core
    class A1,A2,A3 agent
```

<table>
  <tr>
    <td valign="top" width="50%">
      <strong>Before</strong><br/>
      <sub><strong>Most agent repos</strong></sub><br/><br/>
      <code>prompt bundle</code><br/>
      <code>thin wrapper around a model</code><br/>
      <code>runtime state mixed with definitions</code><br/>
      <code>unclear onboarding</code><br/>
      <code>knowledge base becomes a dumping ground</code>
    </td>
    <td valign="top" width="50%">
      <strong>After</strong><br/>
      <sub><strong>`core`</strong></sub><br/><br/>
      <code>operating model</code><br/>
      <code>explicit runtime boundaries</code><br/>
      <code>repeatable onboarding</code><br/>
      <code>curated knowledge graph</code><br/>
      <code>separate human path and agent path</code>
    </td>
  </tr>
</table>

---

<table>
  <tr>
    <td align="center" valign="top" width="33%">
      <strong>1 owner</strong><br/><br/>
      <strong>Source of Truth</strong><br/><br/>
      Durable definitions should have one owner.
    </td>
    <td align="center" valign="top" width="33%">
      <strong>2 paths</strong><br/><br/>
      <strong>Entry Paths</strong><br/><br/>
      Humans evaluate. Agents execute.
    </td>
    <td align="center" valign="top" width="33%">
      <strong>5 primitives</strong><br/><br/>
      <strong>Core Primitives</strong><br/><br/>
      Onboarding, skills, SOPs, runtime, knowledge.
    </td>
  </tr>
</table>

<table>
  <tr>
    <td valign="top" width="50%">
      <strong>For Humans</strong><br/><br/>
      Evaluate the system and decide whether it is coherent enough to adopt.
      <br/><br/>
      Start with:
      <br/>
      <a href="./ARCHITECTURE.md">ARCHITECTURE.md</a><br/>
      <a href="./PRINCIPLES.md">PRINCIPLES.md</a><br/>
      <a href="./QUICKSTART.md">QUICKSTART.md</a>
    </td>
    <td valign="top" width="50%">
      <strong>For Agents</strong><br/><br/>
      Bootstrap the smallest loop, validate it, and do not invent extra behavior.
      <br/><br/>
      Start with:
      <br/>
      <a href="./docs/agent/START.md">docs/agent/START.md</a><br/>
      <a href="./docs/agent/CONTRACT.md">docs/agent/CONTRACT.md</a><br/>
      <a href="./docs/agent/BOOTSTRAP.md">docs/agent/BOOTSTRAP.md</a>
    </td>
  </tr>
</table>

---

## What This Gives You

- onboarding into a prepared environment
- durable skill and SOP definitions
- runtime spec separated from runtime state
- a curated knowledge graph
- a human path and an agent path

It is intentionally small. It is not a full private operating system. It is the reusable layer underneath one.

---

## Why This Feels More Like A System

Most agent repos optimize for isolated prompts and short-lived wrappers.

`core` optimizes for:

- repeatable onboarding
- reusable operating definitions
- clear runtime boundaries
- a knowledge layer that stays useful over time

This is the difference between:

- "an agent that can do something once"
- and "a system other humans and agents can keep using"

---

## Why This Exists

Most current agent setups break in one of these ways:

- no clear source of truth
- no clean separation between durable definitions and live working mess
- no consistent onboarding model
- no durable knowledge layer

This repo exists to fix that with a smaller, stricter core.

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

| Included | Why it matters |
|---|---|
| onboarding mechanism | gives the system a repeatable bootstrap path |
| default skills | establishes a baseline capability layer, including visual communication |
| reusable templates | keeps role definition and setup consistent |
| knowledge graph skeleton | gives curated memory a clean starting shape |
| demo agent | makes the model concrete |
| command-level walkthrough | turns the repo into something runnable |

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

Human question:

`Is this coherent enough to adopt?`

### Agent Path

If you are handing this repository to an agent:

1. [docs/agent/START.md](docs/agent/START.md)
2. [docs/agent/CONTRACT.md](docs/agent/CONTRACT.md)
3. [docs/agent/BOOTSTRAP.md](docs/agent/BOOTSTRAP.md)

This is the execution path for agents that need to bootstrap, test, or evaluate the system.

Agent question:

`What is the smallest loop I can execute successfully?`

---

## Human Path vs Agent Path

```mermaid
flowchart TD
    subgraph Human["Human-facing path"]
        H1[README]
        H2[ARCHITECTURE]
        H3[PRINCIPLES]
        H4[QUICKSTART]
        H1 --> H2
        H1 --> H3
        H1 --> H4
    end

    subgraph Agent["Agent-facing path"]
        A1[docs/agent/START]
        A2[docs/agent/CONTRACT]
        A3[docs/agent/BOOTSTRAP]
        A4[skills/agent-onboarding]
        A1 --> A2
        A1 --> A3
        A3 --> A4
    end
```

The front page is optimized for humans making a decision.

The execution docs are optimized for agents doing the work.

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

```mermaid
flowchart LR
    SPEC[Runtime Spec<br/>durable definition] --> WORK[Workspace]
    WORK --> STATE[Runtime State<br/>inbox / active / handoff / archive]

    SPEC --> DEF[role, tools, scope, schedule]
    STATE --> LIVE[current tasks, queues, local traces]
```

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
