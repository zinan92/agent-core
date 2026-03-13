# Architecture

## Durable Core

- `Capability layer` = skill system, SOP system, onboarding logic
- `Curated memory layer` = knowledge graph

## Operating Companies

- `Data Co` = source intake and first-pass intelligence refinement
- `Trading Co` = consumes Data Co output for judgment and action
- `Content Co` = consumes Data Co output for framing and production

## Management Model

The system assumes one manager role owns the canonical definitions for:

- skills
- SOPs
- agent profiles
- runtime specs

In the internal system, this role is `Wendy`, the Chief of Staff.

## Runtime Model

Each agent is split into two layers:

- `agent-runtime-spec` = canonical operating definition
- `agent-runtime-state` = live execution surface

The runtime surface should contain queues and local state, not the durable role definition.

## Skill Access Model

Agents do not need completely different installed skill sets.

The preferred model is:

- `skill library` = the full shared capability inventory
- `skill package` = a grouped subset for a domain or workflow
- `activation` = the package currently turned on for the role or task

This means the system should prefer:

- universal availability of the library
- selective activation of packages

instead of activating every skill all the time.

## Knowledge Graph Boundary

The knowledge graph is a curated memory layer.

It should not be the source of truth for:

- skills
- SOP definitions
- agent profiles
- runtime specs
