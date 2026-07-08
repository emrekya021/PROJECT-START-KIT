# Project Start Kit

This repository is a reusable starter kit for AI-assisted software projects.

It provides a consistent structure for:
- project documentation
- AI coordination
- validation standards
- task tracking
- reusable agents, skills, and MCP notes

## Purpose
Use this repository as the base structure for starting a new project.
When a real project idea is defined, replace placeholder content in the documentation with project-specific details.

For project intent, motivation, target users, and roadmap, see `PROJECT-BRIEF.md`.
This file focuses on what the project is technically and how to work with the repository.

## Structure
- `PROJECT-BRIEF.md` — project intent, motivation, roadmap (primary source)
- `CLAUDE.md` — project-specific rules for Claude
- `AGENTS.md` — project-specific rules for Codex
- `docs/architecture.md` — system structure and major flows
- `docs/ai-workflow.md` — how AI tools coordinate in this repo
- `docs/validation.md` — completion and verification standards
- `tasks/todo.md` — active task plan and ownership
- `tasks/worklog.md` — chronological work log
- `tasks/lessons.md` — reusable lessons and repeated failure patterns
- `skills/` — reusable workflows
- `agents/` — source/reference agent definitions
- `mcp/README.md` — MCP inventory and usage notes
- `global-templates/` — reference copies of the operator's global Claude/Codex rules (informational only, never auto-installed — see `global-templates/README.md`)

## Quick Start

### 1. Clone this repository
```bash
git clone <repo-url> my-project
cd my-project
```

### 2. Open your AI tool and point it at this folder

- **Claude Code:** `cd my-project` in terminal, then run `claude`
- **Cowork:** Select the `my-project` folder as your workspace
- **Codex:** Open the `my-project` repository

### 3. Start the kickoff with this prompt

Copy and paste the following prompt to begin:

```
Bu repo bir Project Start Kit — yeni projeler için hazırlanmış tekrar kullanılabilir bir iskelet.

Şu an starter kit modunda, henüz gerçek bir proje tanımlanmadı.

Lütfen şu adımları takip et:
1. Önce CLAUDE.md (veya AGENTS.md) dosyasını oku — repo içi çalışma kurallarını öğren.
2. Sonra PROJECT-START-KIT.md dosyasını oku — repo'nun yapısını ve instantiation mantığını anla.
3. Sonra skills/project-kickoff/SKILL.md dosyasını oku — kickoff skill'ini öğren.
4. Bu skill'i çalıştır: bana sorular sorarak proje fikrimi anla, sonra tüm repo dosyalarını gerçek proje içeriğiyle doldur.

Hazırsan başlayalım.
```

English version:

```
This repo is a Project Start Kit — a reusable scaffold for new projects.

It is currently in starter kit mode, no real project has been defined yet.

Please follow these steps:
1. First read CLAUDE.md (or AGENTS.md) — learn the repo's working rules.
2. Then read PROJECT-START-KIT.md — understand the repo structure and instantiation logic.
3. Then read skills/project-kickoff/SKILL.md — learn the kickoff skill.
4. Run this skill: ask me questions to understand my project idea, then fill all repo files with real project content.

Let's begin when you're ready.
```

The AI will read the repository structure, understand the rules, and guide you through a structured interview to define your project. After the interview, it will automatically fill all the necessary files.

For more details on the repository structure and instantiation logic, see `PROJECT-START-KIT.md`.

## Notes
- This repository may contain placeholder content until a real project is defined.
- Repository documents should be updated as the project becomes concrete.
- Long-lived technical decisions should be recorded in `docs/adr/`.
