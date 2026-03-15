<div align="center">

# Agent Core

### 给 AI agent 一个可复现的操作系统内核，而不是一堆散落的 prompt。

<p>
  <img alt="license" src="https://img.shields.io/badge/license-MIT-black">
  <img alt="type" src="https://img.shields.io/badge/type-starter_package-1f6feb">
  <img alt="lang" src="https://img.shields.io/badge/lang-bash%20%7C%20markdown-0969da">
</p>

</div>

---

## 痛点

大多数 agent 项目最终变成了一堆松散的 prompt 和临时 wrapper。角色定义、运行状态、知识库全部混在一起，没有清晰的 onboarding 路径，也没有可复用的操作模型。当你想把一个 agent 的经验迁移到下一个 agent 时，几乎只能从零开始。

## 解决方案

Agent Core 是一个 architecture-first 的 starter package，提供 5 个核心原语：**Onboarding**、**Skills**、**SOPs**、**Runtime Specs**、**Curated Knowledge**。它将持久定义与运行时状态严格分离，为人类和 agent 各自提供专属入口路径，让整个系统可理解、可复现、可交接。

---

## 架构

```
┌─────────────────────────────────────────────────┐
│                  agent-core                     │
│                                                 │
│  ┌───────────┐  ┌───────────┐  ┌─────────────┐  │
│  │  Skills   │  │ Templates │  │  Knowledge  │  │
│  │  Library  │  │           │  │  Graph      │  │
│  │           │  │ - profile │  │  Template   │  │
│  │ - default │  │ - runtime │  │             │  │
│  │ - onboard │  │ - sop     │  │ inbox →     │  │
│  └─────┬─────┘  └─────┬─────┘  │   curated  │  │
│        │              │        └──────┬──────┘  │
│        └──────┬───────┘               │         │
│               ▼                       ▼         │
│  ┌─────────────────────────────────────────┐    │
│  │        Agent Workspace (外部)           │    │
│  │  profile symlinks │ runtime state      │    │
│  │  inbox │ active │ handoff │ archive    │    │
│  └─────────────────────────────────────────┘    │
└─────────────────────────────────────────────────┘

Human 路径: README → ARCHITECTURE → PRINCIPLES → QUICKSTART
Agent 路径: docs/agent/START → CONTRACT → BOOTSTRAP
```

---

## 快速开始

**1. 克隆仓库**

```bash
git clone https://github.com/zinan92/agent-core.git
cd agent-core
```

**2. 阅读核心文档**

```bash
# 人类路径
cat ARCHITECTURE.md
cat PRINCIPLES.md

# Agent 路径
cat docs/agent/START.md
```

**3. 创建工作区目录**

```bash
mkdir -p /tmp/core-demo
```

**4. 用 onboarding 脚本 scaffold 一个新 agent**

```bash
bash skills/agent-onboarding/scaffold_agent_workspace.sh \
  demo-intel-analyst /tmp/core-demo/demo-intel-analyst
```

**5. 验证工作区**

```bash
bash skills/agent-onboarding/validate_agent_workspace.sh \
  demo-intel-analyst /tmp/core-demo/demo-intel-analyst
```

**6. 填充角色定义并添加第一条 curated knowledge**

```bash
# 参考 examples/ 中的示例填写 profile 和 runtime spec
# 然后添加一条 curated note
cp knowledge-graph-template/curated/examples/2026-03-12-skill-driven-organization.md \
  knowledge-graph-template/curated/my-first-note.md
```

详细的端到端 walkthrough 见 [DEMO-WALKTHROUGH.md](DEMO-WALKTHROUGH.md)。

---

## 功能一览

| 功能 | 说明 |
|------|------|
| Agent Onboarding | scaffold + validate 脚本，一键创建标准化工作区 |
| 默认 Skill 库 | brainstorming、canvas-communication、connect-the-dots、writing-plans、verification-before-completion |
| 角色模板 | AGENTS / SOUL / IDENTITY / TOOLS / USER / HEARTBEAT 六件套 |
| Runtime Spec 模板 | 将持久角色定义与运行时状态分离 |
| SOP 模板 | 标准化操作流程定义 |
| Knowledge Graph 模板 | inbox → curated 的知识晋升流程 |
| Demo Agent | 完整示例，包含 profile + runtime spec + SOP |
| 双路径文档 | 人类评估路径 + Agent 执行路径 |

## 技术栈

| 组件 | 技术 |
|------|------|
| 核心语言 | Bash + Markdown |
| Scaffold 工具 | Shell 脚本 (`scaffold_agent_workspace.sh`) |
| 验证工具 | Shell 脚本 (`validate_agent_workspace.sh`) |
| 知识管理 | Markdown 文件 + 目录结构约定 |
| 许可证 | MIT |

---

## 项目结构

```
agent-core/
├── ARCHITECTURE.md              # 系统架构说明
├── PRINCIPLES.md                # 6 条核心原则
├── QUICKSTART.md                # 快速开始指南
├── TUTORIAL.md                  # 分步教程
├── DEMO-WALKTHROUGH.md          # 命令级端到端演示
├── CONTRIBUTING.md              # 贡献指南
├── skills/
│   ├── agent-onboarding/        # onboarding skill（含 scaffold/validate 脚本）
│   └── default/                 # 5 个默认 skill
│       ├── brainstorming/
│       ├── canvas-communication/
│       ├── connect-the-dots/
│       ├── writing-plans/
│       └── verification-before-completion/
├── templates/
│   ├── agent-profile/           # 角色定义六件套模板
│   ├── runtime-spec/            # runtime spec 模板
│   └── sop/                     # SOP 模板
├── knowledge-graph-template/
│   ├── _system/                 # 知识图谱系统原则
│   ├── inbox/                   # 原始素材入口
│   └── curated/                 # 经过筛选的持久知识
├── examples/
│   ├── demo-agent/              # 完整的示例 agent profile
│   ├── demo-runtime-spec.md
│   └── demo-sop.md
├── docs/
│   └── agent/                   # Agent 专用执行文档
│       ├── START.md
│       ├── CONTRACT.md
│       └── BOOTSTRAP.md
└── tests/
    └── agent_onboarding_root_resolution.sh
```

---

## For AI Agents

```yaml
name: agent-core
description: Architecture-first starter package for building reproducible AI agent operating systems
type: starter-package
capabilities:
  - agent onboarding and workspace scaffolding
  - role definition via profile templates
  - runtime spec and runtime state separation
  - SOP-driven skill organization
  - curated knowledge graph management
install_command: git clone https://github.com/zinan92/agent-core.git
cli_commands:
  scaffold: bash skills/agent-onboarding/scaffold_agent_workspace.sh <agent-name> <workspace-path>
  validate: bash skills/agent-onboarding/validate_agent_workspace.sh <agent-name> <workspace-path>
entry_point: docs/agent/START.md
contract: docs/agent/CONTRACT.md
bootstrap: docs/agent/BOOTSTRAP.md
default_skills:
  - brainstorming
  - canvas-communication
  - connect-the-dots
  - writing-plans
  - verification-before-completion
templates:
  - templates/agent-profile/
  - templates/runtime-spec/
  - templates/sop/
knowledge_graph: knowledge-graph-template/
```

### Agent 工作流示例

```bash
# 1. 克隆 core 仓库
git clone https://github.com/zinan92/agent-core.git /tmp/agent-core

# 2. 阅读 agent 执行文档
cat /tmp/agent-core/docs/agent/START.md
cat /tmp/agent-core/docs/agent/CONTRACT.md

# 3. Scaffold 工作区
bash /tmp/agent-core/skills/agent-onboarding/scaffold_agent_workspace.sh \
  my-agent /path/to/workspace

# 4. 验证工作区
bash /tmp/agent-core/skills/agent-onboarding/validate_agent_workspace.sh \
  my-agent /path/to/workspace

# 5. 使用 templates 填充角色定义
# 6. 从 default skills 中选择性激活所需技能包
```

---

## 相关项目

- [zinan92/agent-core](https://github.com/zinan92/agent-core) — 本仓库

---

## License

[MIT](LICENSE) - Copyright (c) 2026 Wendy
