<div align="center">

# 🦴 The Nightmare Skills

**Development rules for AI coding assistants.**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Version](https://img.shields.io/badge/version-1.0.0-blue.svg)](https://github.com/danieldelima037/the-nightmare-skills/releases)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](https://github.com/danieldelima037/the-nightmare-skills/pulls)

*Stop your AI from writing 2000 lines of untested spaghetti code.*

[English](#english) · [Português](#português)

</div>

---

## English

### What is this?

A plug-and-play ruleset that makes any AI coding assistant work the way you actually want:

| Rule | What it does |
|------|-------------|
| 🦴 **Caveman Mode** | Short, direct answers. No essays. Permanent for the session. |
| 📊 **Graphifyy** | Turn any codebase into a navigable knowledge graph with community detection and interactive HTML. |
| 🚀 **GStack** | Think like a product team (CEO, UX, Eng, Security, QA, PM) before writing code. |
| ⚡ **GSD** | Break projects into small phases. Never dump everything at once. |
| 🧪 **Superpowers** | Strict TDD: tests first, code second, refactor third. |

### Quick Install

**One command** — run in your project root:

```bash
# Linux/macOS
curl -sSL https://raw.githubusercontent.com/danieldelima037/the-nightmare-skills/main/install/install.sh | bash -s -- claude

# Windows (PowerShell)
irm https://raw.githubusercontent.com/danieldelima037/the-nightmare-skills/main/install/install.ps1 -OutFile install.ps1; .\install.ps1 -Tool claude
```

Replace `claude` with your tool: `gemini`, `opencode`, `cursor`, `codex`, `copilot`, `windsurf`, or `all`.

### Manual Install

Copy the right file to your project root:

| Tool | File | Where to put it |
|------|------|-----------------|
| **Claude Code** | `CLAUDE.md` | Project root |
| **Gemini / Antigravity** | `GEMINI.md` | `~/.gemini/GEMINI.md` (global) or project root |
| **OpenCode** | `OPENCODE.md` | Project root |
| **Cursor** | `.cursorrules` | Project root |
| **Codex** | `AGENTS.md` | Project root |
| **GitHub Copilot** | `copilot-instructions.md` | `.github/copilot-instructions.md` |
| **Windsurf** | `.windsurfrules` | Project root |
| **Any AI** | `RULES.md` | Paste in system prompt |

### Zero-install (just paste this)

Tell your AI:

```
Read and follow: https://raw.githubusercontent.com/danieldelima037/the-nightmare-skills/main/RULES.md
```

### How it works

**When you say** "create an app", "new project", "build this", etc:

```
PHASE 1 → GStack    → Brainstorm with 6 roles. Full spec. NO code yet.
PHASE 2 → GSD       → Break into small executable phases.
PHASE 3 → Superpowers → TDD: tests first, code second.
PHASE 4 → Review    → Auto-review after each phase. Fix before moving on.
```

**Caveman mode** is always active — every response is short and direct.

### 📊 Graphifyy - Knowledge Graph

Transform any codebase into a navigable knowledge graph:

```bash
# Install
pip install graphifyy
graphify install opencode .

# Use
/graphify              # Generate knowledge graph
/graphify query "?"    # Query the graph
/graphify explain X    # Explain a component
```

**What it does:**
- Analyzes code structure and relationships
- Generates interactive HTML visualization
- Creates GraphRAG-ready JSON
- Produces GRAPH_REPORT.md with community detection

**When to use:**
- Starting a new project
- Understanding unfamiliar code
- Before major refactoring
- Mapping dependencies

### Compatibility

| Platform | Status | File |
|----------|--------|------|
| Claude Code | ✅ Tested | `CLAUDE.md` |
| Gemini / Antigravity | ✅ Tested | `GEMINI.md` |
| OpenCode | ✅ Tested | `OPENCODE.md` |
| Cursor | ✅ Compatible | `.cursorrules` |
| Codex (OpenAI) | ✅ Compatible | `AGENTS.md` |
| GitHub Copilot | ✅ Compatible | `copilot-instructions.md` |
| Windsurf / Codeium | ✅ Compatible | `.windsurfrules` |
| Aider | ⚙️ Use `RULES.md` in `.aider.conf.yml` | `RULES.md` |
| ChatGPT / GPT-4 | ⚙️ Paste `RULES.md` as system prompt | `RULES.md` |

### Project Structure

```
the-nightmare-skills/
├── RULES.md                    # Universal rules (any AI)
├── CLAUDE.md                   # Claude Code
├── GEMINI.md                   # Gemini / Antigravity
├── OPENCODE.md                 # OpenCode
├── AGENTS.md                   # Codex
├── .cursorrules                # Cursor
├── .windsurfrules              # Windsurf
├── copilot-instructions.md     # GitHub Copilot
├── rules/
│   ├── caveman.md              # 🦴 Caveman rules (standalone)
│   └── gstack-gsd-superpowers.md # 🚀 Full workflow (standalone)
├── examples/
│   └── before-after.md         # Before vs after comparison
├── install/
│   ├── install.sh              # Bash installer
│   └── install.ps1             # PowerShell installer
├── CHANGELOG.md
├── LICENSE                     # MIT
└── VERSION
```

### Modular Usage

Don't want Caveman? Only want GStack+GSD? Pick what you need from `rules/`:

- `rules/caveman.md` — Just the Caveman mode
- `rules/gstack-gsd-superpowers.md` — Just the development workflow

---

## Português

### O que é isso?

Um conjunto de regras plug-and-play que faz qualquer IA de código trabalhar do jeito que você quer:

| Regra | O que faz |
|-------|-----------|
| 🦴 **Modo Caveman** | Respostas curtas, diretas. Sem textão. Permanente na sessão. |
| 📊 **Graphifyy** | Transforma qualquer codebase em knowledge graph navegável com detecção de comunidades e HTML interativo. |
| 🚀 **GStack** | Pensar como equipe de produto (CEO, UX, Eng, Segurança, QA, PM) antes de codar. |
| ⚡ **GSD** | Quebrar projetos em fases pequenas. Nunca despejar tudo de uma vez. |
| 🧪 **Superpowers** | TDD rigoroso: testes primeiro, código depois, refatorar depois. |

### Instalação Rápida

**Um comando** — rode na raiz do seu projeto:

```bash
# Linux/macOS
curl -sSL https://raw.githubusercontent.com/danieldelima037/the-nightmare-skills/main/install/install.sh | bash -s -- claude

# Windows (PowerShell)
irm https://raw.githubusercontent.com/danieldelima037/the-nightmare-skills/main/install/install.ps1 -OutFile install.ps1; .\install.ps1 -Tool claude
```

Troque `claude` por: `gemini`, `opencode`, `cursor`, `codex`, `copilot`, `windsurf`, ou `all`.

### Sem instalar nada (só colar)

Manda pra sua IA:

```
Leia e siga: https://raw.githubusercontent.com/danieldelima037/the-nightmare-skills/main/RULES.md
```

### Como funciona

**Quando você diz** "quero criar um app", "novo projeto", "criar um programa", etc:

```
FASE 1 → GStack      → Brainstorming com 6 papéis. Spec completa. SEM código.
FASE 2 → GSD         → Quebra em fases pequenas e executáveis.
FASE 3 → Superpowers → TDD: testes primeiro, código depois.
FASE 4 → Revisão     → Auto-review após cada fase. Corrige antes de avançar.
```

**Modo Caveman** sempre ativo — toda resposta é curta e direta.

### 📊 Graphifyy - Knowledge Graph

Transforma qualquer codebase em um knowledge graph navegável:

```bash
# Instalar
pip install graphifyy
graphify install opencode .

# Usar
/graphify              # Gerar knowledge graph
/graphify query "?"    # Consultar o grafo
/graphify explain X    # Explicar um componente
```

**O que faz:**
- Analisa estrutura e relações do código
- Gera visualização HTML interativa
- Cria JSON para GraphRAG
- Produz GRAPH_REPORT.md com detecção de comunidades

**Quando usar:**
- Ao iniciar novo projeto
- Para entender código desconhecido
- Antes de refatoração grande
- Para mapear dependências

---

## Contributing

PRs welcome. Follow the caveman way: keep it short, keep it useful.

## License

MIT — use, modify, distribute as you wish.

---

<div align="center">

🦴 *Unga bunga. Now go build something.* 🦴

</div>
