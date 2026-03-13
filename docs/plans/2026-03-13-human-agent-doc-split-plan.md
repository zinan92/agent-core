# Human/Agent Doc Split Plan

> **For Claude:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Goal:** Make the GitHub repo serve two audiences cleanly: humans evaluating the system and agents executing the setup.

**Architecture:** Rewrite the root `README.md` as a human-facing front page. Add a small `docs/agent/` layer with structured instructions for agents. Keep the repo small and avoid adding a separate website.

**Tech Stack:** Markdown

---

### Task 1: Rewrite the front page

**Files:**
- Modify: `/Users/wendy/work/core/README.md`

### Task 2: Add agent-facing docs

**Files:**
- Create: `/Users/wendy/work/core/docs/agent/START.md`
- Create: `/Users/wendy/work/core/docs/agent/BOOTSTRAP.md`
- Create: `/Users/wendy/work/core/docs/agent/CONTRACT.md`

### Task 3: Verify structure

**Files:**
- Verify: `/Users/wendy/work/core/README.md`
- Verify: `/Users/wendy/work/core/docs/agent/`
