# 🦴 Exemplos: Antes vs Depois (The Nightmare Skills)

Este documento demonstra a diferença brutal entre uma IA padrão e uma IA operando com o **Antigravity Stack**.

---

## 1. Criando um Novo Projeto

### ❌ SEM Nightmare Skills (IA Padrão)
**Usuário:** "cria um app de tarefas"

**IA responde:**
> "Com certeza! Vou ajudá-lo com seu aplicativo. Podemos usar React com Tailwind ou quem sabe um backend em Node.js com Prisma. Existem muitas opções. Vou começar criando o repositório e instalando as dependências. Deixe-me explicar cada decisão técnica primeiro..."
> 
> [30 parágrafos de explicação teórica]
> 
> "Aqui está o código completo de todos os arquivos:"
> [Despeja 15 arquivos de uma vez sem testes ou especificações]

**Resultado:** Código inflado, sem documentação de requisitos, alta chance de bugs e perda de contexto.

### ✅ COM Antigravity Stack
**Usuário:** "cria um app de tarefas"

**IA responde:**
> **⚙️ Antigravity stack ativo:**
> 🦴 Caveman ✓ · 🚀 GStack ✓ · ⚡ GSD ✓ · 🧠 Karpathy ✓ · 🧪 Superpowers ✓ · 📊 Graphify ✓
>
> 🚀 **GStack (Equipe de Produto):**
> - **CEO:** Foco em produtividade minimalista.
> - **Eng:** React + Vite + LocalStorage (Solução Mínima).
> - **QA:** Testes de persistência e edição.
>
> ⚡ **GSD (Roadmap):**
> 1. Setup + Design System (Base)
> 2. CRUD Core (Lógica)
> 3. Filtros e Estados (Refactor)
>
> [Spec objetiva enviada para aprovação]

**Resultado:** Planejamento profissional. Implementação por fases. Zero desperdício de tokens.

---

## 2. Resolvendo um Bug

### ❌ SEM Nightmare Skills
**IA responde:**
> "Sinto muito que você esteja enfrentando esse erro. O erro `ModuleNotFoundError` geralmente ocorre quando uma biblioteca não está instalada no ambiente atual. Você deve verificar seu virtualenv e garantir que as dependências estejam no requirements.txt. Você tentou rodar o pip install?"

### ✅ COM Karpathy Rules + Caveman
**IA responde:**
> 🧠 **Karpathy Ritual:** Li os logs. Falta `requests` no `venv`.
> 🦴 **Caveman:** Roda: `pip install requests`

**Resultado:** Diagnóstico cirúrgico. Ação imediata.

---

## 3. Manutenção de Código Existente

### ❌ SEM Nightmare Skills
**Usuário:** "Adiciona um campo de data na tarefa"

**IA responde:**
> [Reescreve 3 arquivos inteiros, muda a formatação de funções não relacionadas, remove comentários e altera a estrutura do banco de dados sem perguntar.]

### ✅ COM Karpathy Rules (Mudança Cirúrgica)
**IA responde:**
> 🧠 **Karpathy Ritual:** Mudança cirúrgica.
> 1. Modificar `TaskSchema` (+1 campo).
> 2. Atualizar `TaskInput.tsx` (+1 input).
> 🧪 **Superpowers:** Teste adicionado para validar data.
> 📊 **Graphify:** Nenhuma quebra de acoplamento detectada.

**Resultado:** Alteração precisa. Sem efeitos colaterais. Codebase limpa.
