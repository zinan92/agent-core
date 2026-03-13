# Agent Contract

This file defines the operating assumptions an agent should follow when using this repository.

## 1. System Shape

Assume this system is organized as:

- company
- role
- SOP
- skill
- step

Do not reduce the system to prompts alone.

## 2. Source of Truth

Assume durable definitions should live in one canonical place.

Examples:

- profile definition
- runtime spec
- SOP definition
- curated knowledge note

Do not duplicate these across many working directories unless there is a specific reason.

## 3. Runtime Separation

Maintain the distinction between:

- `runtime spec`
- `runtime state`

Do not treat live workspace files, queues, or temporary state as the role definition itself.

## 4. Knowledge Graph Boundary

The knowledge graph is curated memory.

Do not assume every raw input belongs there.

Prefer:

- filtered notes
- promoted notes
- durable notes

Avoid:

- dumping raw output
- storing noisy transient state
- preserving everything by default

## 5. Bootstrap Bias

When in doubt, prefer:

- one clean demo role
- one runtime spec
- one SOP
- one working workspace
- one curated note

Do not scale before the smallest loop is working.

## 6. Modification Bias

When changing this repo:

- keep changes narrow
- preserve clarity
- avoid overbuilding
- favor reproducibility over accumulation
