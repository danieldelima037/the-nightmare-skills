# 🦴 The Nightmare Skills

O framework de desenvolvimento definitivo para agentes de IA (Claude Code, Antigravity, Gemini).

Este repositório contém as regras e comportamentos do **Antigravity Stack** — 10 modos que operam em cadeia de responsabilidade para transformar IAs em engenheiros de software seniores: precisão, simplicidade, execução cirúrgica.

---

## ⚙️ Antigravity Stack

| # | Modo | O que faz |
|---|------|-----------|
| 1 | 🚀 **GStack** | Pensar como equipe de produto (CEO, UX, Eng, Segurança, QA, PM) antes de qualquer código |
| 2 | ⚡ **GSD** | Quebrar toda tarefa em fases pequenas com entregável claro. Uma fase por vez |
| 3 | 🎨 **Impeccable** | Design, UX, UI — hierarquia visual, responsividade, estados, tipografia, contraste, anti-padrões |
| 4 | 🧠 **Karpathy** | Leitura antes de escrita, solução mínima, mudança cirúrgica, sem abstrações prematuras |
| 5 | 🧪 **Superpowers** | TDD rigoroso: teste vermelho → código verde → refatorar. Nunca inverter |
| 6 | 🔬 **AutoResearch** | Loop de melhoria por experimento — só entra com evidência, nunca por impressão |
| 7 | 🎭 **Playwright MCP** | Validação real no navegador quando envolver web/UI |
| 8 | 🔌 **MCP SDK** | Criar tools MCP próprias quando ação repetitiva puder virar ferramenta |
| 9 | 📊 **Graphify** | Mapear codebase para detectar acoplamentos, código morto e riscos arquiteturais |
| 10 | 🦴 **Caveman** | Comunicação curta, direta e primitiva. Sem enrolação |

---

## 🧭 Cadeia de Execução

```txt
NOVA FEATURE / PROBLEMA
  ↓
[🚀 GStack] — Pensar como equipe de produto
  ↓
[⚡ GSD] — Quebrar em fases pequenas
  ↓
[🎨 Impeccable] — Se envolver UI, planejar qualidade visual
  ↓
[🧠 Karpathy] — Ler, entender, escolher a menor mudança
  ↓
[🧪 Superpowers] — TDD: vermelho → verde → refatorar
  ↓
[🔬 AutoResearch] — Se houver métrica, testar variações
  ↓
[🎭 Playwright MCP] — Se for web/UI, validar no navegador real
  ↓
[🔌 MCP SDK] — Se a ação repetir, transformar em ferramenta
  ↓
[📊 Graphify] — Mapear impacto e acoplamento
  ↓
[🦴 Caveman] — Comunicação curta, direta e objetiva
```

---

## 🚀 Como Instalar

### Windows (PowerShell)
```powershell
irm https://raw.githubusercontent.com/danieldelima037/the-nightmare-skills/main/install/install.ps1 | iex
```

### Linux / Mac / WSL (Bash)
```bash
curl -sSL https://raw.githubusercontent.com/danieldelima037/the-nightmare-skills/main/install/install.sh | bash
```

---

## 📋 O que está no CLAUDE.md

O arquivo mestre contém:

- **Verificação de Skills** — checar se tudo está disponível antes de começar
- **Inicialização obrigatória** — exibir status do stack ao iniciar
- **Cadeia de execução** — ordem correta dos 10 modos
- **Caveman Mode** — comunicação curta, direta e útil
- **GStack** — pensar como equipe de produto (6 papéis, 6 perguntas)
- **GSD** — execução em fases pequenas com entrega clara
- **Impeccable** — design, UX, qualidade visual com comandos e template
- **Karpathy** — ritual obrigatório antes de cada fase (6 passos)
- **Superpowers** — TDD rigoroso com ciclo vermelho→verde→refatorar
- **AutoResearch** — loop de melhoria por experimento com template
- **Playwright MCP** — validação real no navegador com template
- **MCP SDK** — ferramentas próprias do projeto com template
- **Graphify** — knowledge graph do codebase com template
- **Checklists** — antes e depois de codar
- **Regras de segurança** — o que nunca fazer e como proteger dados sensíveis
- **Padrão de implementação** — mudança pequena, testável, reversível
- **Padrão de interface** — clara, responsiva, acessível, com estados
- **Padrão de resposta** — templates para concluir, planejar, problema, bloqueio
- **Contexto do projeto** — stack, decisões, métricas, fluxos, experimentos

---

## 🧪 Checklist Antes de Codar

- [ ] Entendi o pedido?
- [ ] O escopo está claro?
- [ ] Isso precisa de GStack?
- [ ] A tarefa foi quebrada em fases?
- [ ] Escolhi apenas uma fase?
- [ ] Se envolve UI, apliquei Impeccable?
- [ ] Li os arquivos relevantes?
- [ ] Defini o objetivo em uma frase?
- [ ] Escolhi a menor mudança possível?
- [ ] Listei os arquivos que serão alterados?
- [ ] Pensei nos efeitos colaterais?
- [ ] Escrevi o teste primeiro?
- [ ] O teste falhou vermelho?

## ✅ Checklist Depois de Codar

- [ ] O teste ficou verde?
- [ ] A mudança foi mínima?
- [ ] Não criei abstração desnecessária?
- [ ] Não refatorei fora do escopo?
- [ ] Rodei testes relevantes?
- [ ] Se tinha UI, revisei com Impeccable?
- [ ] Se tinha UI/web, validei com Playwright MCP?
- [ ] Se tinha métrica, validei com AutoResearch?
- [ ] Se a ação se repetiu muito, considerei MCP SDK?
- [ ] Se alterou arquitetura, rodei Graphify?
- [ ] Atualizei decisões importantes no CLAUDE.md?
- [ ] Resumi o que foi feito?

---

## 📁 Estrutura do Repositório

```
the-nightmare-skills/
├── CLAUDE.md              # Arquivo mestre com todas as regras unificadas
├── README.md              # Este arquivo
├── VERSION                # Versão atual do stack
├── LICENSE                # Licença MIT
└── install/               # Scripts de automação para instalação rápida
    ├── install.ps1
    └── install.sh
```

---

## 🧠 Regra Final

Não seja agente ansioso.

Primeiro entende. Depois divide. Depois pensa produto. Depois pensa UI. Depois lê. Depois testa. Depois muda. Depois valida. Depois mede. Depois registra.

Código bom é mudança pequena que prova que funciona.
Interface boa é clara, útil e validada por uso real.

---

## 📜 Licença

MIT

---

*Unga bunga. Vá construir algo incrível.*
