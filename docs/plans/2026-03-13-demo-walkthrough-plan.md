# Demo Walkthrough Implementation Plan

> **For Claude:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Goal:** Fix the public onboarding scripts so they work inside the standalone `core` repo, then add a stronger end-to-end demo walkthrough for new users.

**Architecture:** Add a minimal shell regression test that proves the repo root is resolved correctly, fix both onboarding scripts to compute the repo root from the script location, and add a concrete walkthrough document plus entry links.

**Tech Stack:** Markdown, bash, repo-local shell verification

---

### Task 1: Add regression test for repo-root resolution

**Files:**
- Create: `/Users/wendy/work/core/tests/agent_onboarding_root_resolution.sh`

### Task 2: Fix onboarding scripts

**Files:**
- Modify: `/Users/wendy/work/core/skills/agent-onboarding/scaffold_agent_workspace.sh`
- Modify: `/Users/wendy/work/core/skills/agent-onboarding/validate_agent_workspace.sh`

### Task 3: Add end-to-end walkthrough

**Files:**
- Create: `/Users/wendy/work/core/DEMO-WALKTHROUGH.md`
- Modify: `/Users/wendy/work/core/README.md`
- Modify: `/Users/wendy/work/core/QUICKSTART.md`
- Modify: `/Users/wendy/work/core/TUTORIAL.md`

### Task 4: Verify and publish

**Files:**
- Verify: `/Users/wendy/work/core`
