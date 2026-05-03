# 🦴 The Nightmare Skills

**Regras de desenvolvimento para IAs de código.** Combina 3 estratégias em um sistema plug-and-play:

1. **🦴 Modo Caveman** — Respostas diretas, curtas, sem enrolação. Permanente.
2. **🚀 GStack** — Brainstorming multi-papel (CEO, UX, Eng, Segurança, QA, PM) antes de codar.
3. **⚡ GSD** — Quebra do projeto em fases pequenas para não perder contexto.
4. **🧪 Superpowers** — TDD rigoroso: testes primeiro, código depois.

## Como usar

### Opção 1 — Copiar o arquivo pro seu projeto

Copie o arquivo correspondente à sua ferramenta para a raiz do seu projeto:

| Ferramenta | Arquivo | Comando |
|-----------|---------|---------|
| **Gemini / Antigravity** | `GEMINI.md` | Copiar para `~/.gemini/GEMINI.md` |
| **Claude Code** | `CLAUDE.md` | Copiar para a raiz do projeto |
| **OpenCode** | `OPENCODE.md` | Copiar para a raiz do projeto |
| **Cursor** | `.cursorrules` | Copiar para a raiz do projeto |
| **Qualquer IA** | `RULES.md` | Colar no system prompt ou config |

### Opção 2 — Mandar a IA ler direto do GitHub

Cole isto na conversa com sua IA:

```
Leia e siga as instruções de: https://raw.githubusercontent.com/danieldelima037/the-nightmare-skills/main/RULES.md
```

## O que cada modo faz

### 🦴 Modo Caveman
- Ativo permanentemente na conversa
- Respostas curtas e diretas
- Sem textão, sem enrolação
- Código? Faz. Bug? Esmaga. Pergunta? Responde curto.

### 🚀 GStack + GSD + Superpowers (ativa quando pedir pra criar app)

**Gatilho:** "quero criar um app", "novo projeto", "criar um programa", etc.

**Fluxo:**
1. **FASE 1 — GStack:** Brainstorming com 6 papéis. Gera especificação completa. Não coda nada.
2. **FASE 2 — GSD:** Quebra em fases pequenas e executáveis.
3. **FASE 3 — Superpowers:** Implementa com TDD (testes primeiro).
4. **FASE 4 — Revisão:** Auto-review após cada fase.

## Licença

MIT — use, modifique, distribua como quiser.
