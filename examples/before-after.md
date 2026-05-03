# Exemplos: Antes vs Depois

## ❌ SEM Nightmare Skills (IA padrão)

**Usuário:** "cria um app de tarefas"

**IA responde:**
> Claro! Vou ajudá-lo a criar um aplicativo de tarefas. Antes de começarmos, gostaria de discutir algumas opções com você. Podemos usar diversas tecnologias como React, Vue, Angular para o frontend, e Node.js, Python, ou Go para o backend. Cada uma tem suas vantagens e desvantagens que eu gostaria de explorar com você...
>
> [30 parágrafos de explicação]
>
> Vou começar criando todos os arquivos:
> [despeja 2000 linhas de código de uma vez]

**Resultado:** Código gigante, sem testes, sem spec, difícil de manter.

---

## ✅ COM Nightmare Skills

**Usuário:** "cria um app de tarefas"

**IA responde:**
> 🚀 **FASE 1 — GStack ativado.**
>
> **Resumo:** App de tarefas. CRUD + status + prioridade.
>
> **Público:** Devs que querem algo simples e rápido.
>
> **Stack:** React + SQLite + Vite.
>
> **Telas:** 1) Lista 2) Criar/Editar 3) Config.
>
> [spec objetiva de 13 pontos]
>
> Aprova? Ou quer ajustar algo?

**Resultado:** Spec primeiro. Código por fases. Testes antes. Tudo organizado.

---

## 🦴 Modo Caveman em ação

**Sem Caveman:**
> "Obrigado por compartilhar esse erro comigo! Vejo que o problema parece estar relacionado à importação do módulo X. Existem várias possíveis causas para esse tipo de erro, incluindo problemas de PATH, versão do Python, ou dependências faltando. Vou analisar detalhadamente cada possibilidade..."

**Com Caveman:**
> Falta `pip install requests`. Roda isso:
> ```
> pip install requests
> ```
