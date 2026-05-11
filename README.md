# The Nightmare Skills

Framework de desenvolvimento para agentes de IA (Claude Code, OpenCode, Gemini).

Regras e comportamentos do **Nightmare Stack** — 10 modos em cadeia de responsabilidade + SPDD + 5 papeis operacionais. Transforma IAs em engenheiros seniores: precisao, simplicidade, execucao cirurgica.

---

## Nightmare Stack

| # | Modo | O que faz |
|---|------|-----------|
| 1 | **GStack** | Pensar como equipe de produto (CEO, UX, Eng, Seguranca, QA, PM) antes de qualquer codigo |
| 2 | **GSD** | Quebrar toda tarefa em fases pequenas com entregavel claro. Uma fase por vez |
| 3 | **Impeccable** | Design, UX, UI — hierarquia visual, responsividade, estados, tipografia, contraste, anti-padroes |
| 4 | **Karpathy** | Leitura antes de escrita, solucao minima, mudanca cirurgica, sem abstracoes prematuras |
| 5 | **Superpowers** | TDD rigoroso: teste vermelho → codigo verde → refatorar. Nunca inverter |
| 6 | **AutoResearch** | Loop de melhoria por experimento — so entra com evidencia, nunca por impressao |
| 7 | **Playwright MCP** | Validacao real no navegador quando envolver web/UI |
| 8 | **MCP SDK** | Criar tools MCP proprias quando acao repetitiva puder virar ferramenta |
| 9 | **Graphify** | Mapear codebase para detectar acoplamentos, codigo morto e riscos arquiteturais |
| 10 | **Caveman** | Comunicacao curta, direta e primitiva. Sem enrolacao |

---

## SPDD — Structured Prompt-Driven Development

Prompts estruturados sao artefatos de primeira classe: versionados, revisados e sincronizados com o codigo.

| Comando | O que faz |
|---------|-----------|
| `/spdd-analysis` | Analise estrategica da requisito |
| `/spdd-reasons-canvas` | Gera REASONS Canvas (R+E+A / S+O / N+S) |
| `/spdd-generate` | Gera codigo tarefa a tarefa |
| `/spdd-sync` | Sincroniza codigo → Canvas |
| `/spdd-prompt-update` | Atualiza Canvas quando requisito muda |

**Regra de ouro:** Quando realidade divergir do Canvas, corrija o prompt primeiro, depois o codigo.

---

## 5 Papeis Operacionais

| Papel | Responsabilidade |
|-------|-----------------|
| **Orquestrador** | Cria/atualiza spec.md, roteia tarefas |
| **Pesquisador** | Busca verdade externa quando falta contexto |
| **Desenvolvedor** | Implementa mudanca simples, cirurgica e verificavel |
| **Auditor** | Revisa qualidade, testes, seguranca, UI e memoria |
| **Status** | Registra o que mudou, como validado e o que falta |

---

## Cadeia de Execucao

```txt
NOVA FEATURE / PROBLEMA
↓
[GStack] — Pensar como equipe de produto
↓
[GSD] — Quebrar em fases pequenas
↓
[Impeccable] — Se envolver UI, planejar qualidade visual
↓
[Karpathy] — Ler, entender, escolher a menor mudanca
↓
[Superpowers] — TDD: vermelho → verde → refatorar
↓
[AutoResearch] — Se houver metrica, testar variacoes
↓
[Playwright MCP] — Se for web/UI, validar no navegador real
↓
[MCP SDK] — Se a acao repetir, transformar em ferramenta
↓
[Graphify] — Mapear impacto e acoplamento
↓
[Caveman] — Comunicacao curta, direta e objetiva
```

---

## Como Instalar

### Claude Code (PowerShell)
```powershell
irm https://raw.githubusercontent.com/danieldelima037/the-nightmare-skills/main/install/install.ps1 | iex
```

### Claude Code (PowerShell — install opencode rules)
```powershell
irm https://raw.githubusercontent.com/danieldelima037/the-nightmare-skills/main/install/install.ps1 | iex; .\install.ps1 -Tool opencode
```

### Linux / Mac / WSL (Bash)
```bash
curl -sSL https://raw.githubusercontent.com/danieldelima037/the-nightmare-skills/main/install/install.sh | bash
```

### Linux / Mac / WSL — OpenCode rules
```bash
curl -sSL https://raw.githubusercontent.com/danieldelima037/the-nightmare-skills/main/install/install.sh | bash -s -- opencode
```

---

## O que esta no CLAUDE.md

- **Verificacao de Skills** — checar disponibilidade antes de comecar
- **5 papeis operacionais** — Orquestrador, Pesquisador, Desenvolvedor, Auditor, Status
- **Roteamento rapido** — quando usar cada papel
- **SPDD** — prompts estruturados com REASONS Canvas e sincronizacao bidirecional
- **Cadeia de execucao** — ordem correta dos 10 modos
- **Caveman Mode** — comunicacao curta, direta e util
- **GStack** — pensar como equipe de produto (6 papeis, 6 perguntas)
- **GSD** — execucao em fases pequenas com entrega clara
- **Impeccable** — design, UX, qualidade visual com comandos e template
- **Karpathy** — ritual obrigatorio antes de cada fase (6 passos)
- **Superpowers** — TDD rigoroso com ciclo vermelho→verde→refatorar
- **AutoResearch** — loop de melhoria por experimento com template
- **Playwright MCP** — validacao real no navegador com template
- **MCP SDK** — ferramentas proprias do projeto com template
- **Graphify** — knowledge graph do codebase com template
- **Checklists** — antes e depois de codar
- **Regras de seguranca** — o que nunca fazer e como proteger dados sensiveis
- **Padrao de implementacao** — mudanca pequena, testavel, reversivel
- **Padrao de interface** — clara, responsiva, acessivel, com estados
- **Padrao de resposta** — templates para concluir, planejar, problema, bloqueio
- **Contexto do projeto** — stack, decisoes, metricas, fluxos, experimentos
- **Projeto novo** — 5 passos para criar projeto do zero
- **Fontes do stack** — Caveman, GStack, TLC/GSD-2, Karpathy, AutoResearch, Superpowers, Playwright, Impeccable, Graphify, SPDD

---

## Checklist Antes de Codar

- [ ] Entendi o pedido?
- [ ] O escopo esta claro?
- [ ] Isso precisa de GStack?
- [ ] A tarefa foi quebrada em fases?
- [ ] Escolhi apenas uma fase?
- [ ] Se envolve UI, apliquei Impeccable?
- [ ] Li os arquivos relevantes?
- [ ] Defini o objetivo em uma frase?
- [ ] Escolhi a menor mudanca possivel?
- [ ] Listei os arquivos que serao alterados?
- [ ] Pensei nos efeitos colaterais?
- [ ] Escrevi o teste primeiro?
- [ ] O teste falhou vermelho?

## Checklist Depois de Codar

- [ ] O teste ficou verde?
- [ ] A mudanca foi minima?
- [ ] Nao criei abstracao desnecessaria?
- [ ] Nao refatorei fora do escopo?
- [ ] Rodei testes relevantes?
- [ ] Se tinha UI, revisei com Impeccable?
- [ ] Se tinha UI/web, validei com Playwright MCP?
- [ ] Se tinha metrica, validei com AutoResearch?
- [ ] Se a acao se repetiu muito, considerei MCP SDK?
- [ ] Se alterou arquitetura, rodei Graphify?
- [ ] Atualizei decisoes importantes no CLAUDE.md?
- [ ] Resumi o que foi feito?

---

## Estrutura do Repositorio

```
the-nightmare-skills/
├── CLAUDE.md     # Arquivo mestre com todas as regras unificadas
├── README.md     # Este arquivo
├── VERSION       # Versao atual do stack
├── LICENSE       # Licenca MIT
└── install/      # Scripts de automatizacao para instalacao rapida
    ├── install.ps1
    └── install.sh
```

---

## Regra Final

Nao seja agente ansioso.

Primeiro entende. Depois divide. Depois pensa produto. Depois pensa UI. Depois le. Depois testa. Depois muda. Depois valida. Depois mede. Depois registra.

Codigo bom e mudanca pequena que prova que funciona.
Interface boa e clara, util e validada por uso real.

---

## Licenca

MIT
