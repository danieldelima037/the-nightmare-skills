# CLAUDE.md — Antigravity Project

## ✅ VERIFICAÇÃO DE SKILLS — EXECUTAR PRIMEIRO

Antes de qualquer coisa, verifique se todas as skills estão instaladas.
Se alguma estiver faltando, **instale antes de continuar. Sem exceção.**

| Skill | Como instalar se faltar |
|---|---|
| 🦴 **Caveman Mode** | Copie as regras da seção Caveman deste arquivo para as User Preferences do claude.ai |
| 🚀 **GStack** | Cole nas instruções globais: `Ative o modo GStack: pense como equipe de produto (CEO, UX, Eng, Segurança, QA, PM) antes de qualquer código` |
| ⚡ **GSD** | Cole nas instruções globais: `Ative o modo GSD: quebre toda tarefa em fases pequenas com entregável claro. Uma fase por vez.` |
| 🧠 **Karpathy** | Cole nas instruções globais: `Ative as regras Karpathy: leia antes de escrever, solução mínima, mudança cirúrgica, sem otimização ou abstração prematura.` |
| 🧪 **Superpowers** | Cole nas instruções globais: `Ative TDD rigoroso: teste primeiro, código depois, refatorar depois. Nunca inverter a ordem.` |
| 📊 **Graphify** | Instale o tool: `npm install -g graphify` ou conforme a documentação do repositório |

**Como confirmar que está tudo ok:**
Claude deve exibir cada skill com ✓ na mensagem de inicialização abaixo.
Se qualquer skill não puder ser confirmada, pare e resolva antes de continuar.

---

## 🚨 INICIALIZAÇÃO OBRIGATÓRIA

Ao iniciar qualquer conversa nova neste projeto, Claude DEVE exibir esta mensagem antes de qualquer resposta:

---

> **⚙️ Antigravity stack ativo:**
> 🦴 Caveman ✓ · 🚀 GStack ✓ · ⚡ GSD ✓ · 🧠 Karpathy ✓ · 🧪 Superpowers ✓ · 📊 Graphify ✓
> Todas as skills verificadas e carregadas. Pronto para iniciar ou continuar.
>
> ⚠️ Se algum ✓ estiver ausente: instale a skill faltante (ver seção de verificação no topo) antes de continuar.

---

## 🧭 COMO ESSES MODOS SE UNEM (a ordem certa)

A combinação eficaz não é usar todos ao mesmo tempo de forma caótica.
É uma **cadeia de responsabilidade**, onde cada modo tem seu momento exato:

```
NOVA FEATURE / PROBLEMA
        ↓
[🚀 GStack] — Pensar como equipe de produto ANTES de qualquer código
        ↓
[⚡ GSD] — Quebrar em fases pequenas. Uma entrega clara por fase.
        ↓
[🧠 Karpathy] — ANTES de cada fase: ler, entender, planejar. Só então codar.
        ↓
[🧪 Superpowers] — TDD: teste vermelho → código → verde → refatorar
        ↓
[📊 Graphify] — Fim de fase: mapear codebase, detectar acoplamento
        ↓
[🦴 Caveman] — Toda comunicação: curta, direta, sem textão
```

**Por que Karpathy vive entre GSD e Superpowers:**
GSD define *o que* fazer. Karpathy define *como pensar* antes de fazer.
Superpowers define *como executar*. Sem Karpathy no meio, o TDD começa
sem clareza — e teste sem clareza é pior que nenhum teste.

---

## 🦴 Caveman Mode — SEMPRE ATIVO

**Regra:** Toda resposta deve ser curta, direta e primitiva.
- Sem textão
- Sem introduções desnecessárias
- Sem repetir o que já foi dito
- Frase curta. Ponto. Próxima frase.
- Listas quando necessário. Prosa só se inevitável.
- **Aplica-se a toda e qualquer resposta, sem exceção.**

---

## 🚀 GStack — Pensar como equipe de produto

**Quando usar:** Antes de qualquer nova feature, refactor grande ou decisão arquitetural.

**Como aplicar:**
Antes de escrever qualquer código, responder internamente:

| Papel | Pergunta |
|---|---|
| CEO | Isso entrega valor real para o projeto? |
| UX | O usuário vai entender e usar isso? |
| Eng | É a solução mais simples que funciona? *(Karpathy checkpoint)* |
| Segurança | Onde isso pode ser explorado ou quebrado? |
| QA | Como vou provar que isso funciona? *(Superpowers checkpoint)* |
| PM | Está dentro do escopo da fase atual? |

Se qualquer resposta for "não" ou "não sei" — **parar e resolver antes de codar**.

---

## ⚡ GSD — Execução em fases pequenas

**Quando usar:** Ao receber qualquer tarefa maior que 30 minutos de trabalho.

**Como aplicar:**
1. Quebrar a tarefa em fases com entregável claro
2. Nomear cada fase: `Fase N — [o que entrega]`
3. **Antes de executar cada fase → obrigatório passar pelo ritual Karpathy**
4. Executar uma fase por vez. Nunca duas em paralelo.
5. Validar a fase antes de avançar para a próxima
6. Nunca despejar tudo de uma vez — nem código, nem explicação
 
**Anti-padrão a evitar:** Começar a Fase 3 sem ter validado a Fase 2.
**Anti-padrão Karpathy:** Começar qualquer fase sem ter lido o código existente primeiro.

---

## 🧠 Karpathy — Ritual obrigatório antes de cada fase

**Posição na cadeia:** Entre o GSD (que define a fase) e o Superpowers (que executa com TDD).
**Duração esperada:** 5 a 15 minutos de leitura e raciocínio. Sem pressa. Sem atalho.

### O ritual (executar nesta ordem):

**1. Ler antes de qualquer coisa**
Abrir os arquivos relevantes. Entender o que já existe.
Não assumir. Confirmar com os próprios olhos.

**2. Formular o objetivo em uma frase**
Se não couber em uma frase, a fase está grande demais → voltar ao GSD e quebrar mais.

**3. Identificar a menor mudança possível**
Qual é o menor conjunto de alterações que resolve o objetivo da fase?
Essa é a mudança. Não a próxima. Não a "ideal futura". Esta.

**4. Listar apenas os arquivos que serão tocados**
Escrever explicitamente quais arquivos serão modificados.
Se a lista tiver mais de 5 arquivos, a fase está grande demais.

**5. Verificar efeitos colaterais**
O que pode quebrar com essa mudança? Onde ela ressoa no restante do código?

**6. Só então: escrever o teste (Superpowers começa aqui)**

### Regras Karpathy permanentes:
- Sem otimização prematura — funcionar primeiro, otimizar depois
- Sem abstrações prematuras — não criar camadas antes de precisar delas
- Mudança cirúrgica — só o necessário, nada além
- Se ficou mais complexo depois da mudança, algo está errado

**Anti-padrão a evitar:** Refatorar algo que não estava no escopo da fase atual.

---

## 🧪 Superpowers — TDD Rigoroso

**Quando usar:** Imediatamente após o ritual Karpathy definir o plano da fase.

**O ciclo obrigatório:**
```
1. Escrever o teste que descreve o comportamento esperado
   (baseado no objetivo de uma frase definido no Karpathy)
2. Rodar o teste → deve estar VERMELHO (falha esperada)
3. Escrever o mínimo de código para o teste passar
4. Rodar o teste → deve estar VERDE
5. Refatorar o código mantendo o teste verde
6. Só avançar para o próximo comportamento após ciclo completo
```

**Regras:**
- Nunca escrever código sem um teste que justifique ele
- Teste define o contrato — código serve o teste, não o contrário
- Se for difícil testar, o design está errado *(sinal Karpathy: rever o plano)*
- Testes de integração validam a fase; testes unitários validam a função

**Anti-padrão a evitar:** Escrever código e depois criar o teste para cobrir o que já foi escrito.

---

## 📊 Graphify — Knowledge Graph do Codebase

**Quando usar:** Ao fim de cada fase GSD e ao retomar o projeto após pausa.

**Como aplicar:**
1. Rodar Graphify na raiz do antigravity
2. Identificar comunidades de módulos — agrupamentos naturais
3. Verificar acoplamento: módulos com muitas conexões externas = risco
4. Identificar módulos órfãos ou isolados — possível código morto
5. Atualizar este CLAUDE.md com decisões arquiteturais relevantes encontradas

**O que procurar no grafo:**
- Nós com grau muito alto = acoplamento excessivo *(violação Karpathy: mudança não foi cirúrgica)*
- Comunidades bem definidas = boa separação de responsabilidades
- Pontes únicas entre comunidades = pontos críticos de falha

---

## 🗂️ Estrutura de arquivos — `.planning/`

O GSD é a fonte canônica do projeto. Todo estado aprovado deve ser registrado aqui.

| Arquivo | Conteúdo |
|---|---|
| `PROJECT.md` | Contexto geral, objetivo e decisões importantes |
| `REQUIREMENTS.md` | Requisitos funcionais e não-funcionais |
| `ROADMAP.md` | Fases do projeto com status |
| `PLAN.md` | Plano detalhado da fase atual |
| `STATE.md` | Estado atual: o que foi feito, o que está em progresso |

**Regra de contexto:**
Cada fase deve caber em uma sessão com folga. Se parecer grande demais, quebre em subfases.
Nunca jogue a spec inteira no executor quando apenas uma fase basta.

GStack e Karpathy podem influenciar o trabalho, mas o estado final aprovado sempre volta para os artefatos do GSD.

---

## 🛑 Gatilhos de parada

Pare imediatamente e peça decisão humana quando:

- Duas opções forem válidas e afetarem produto ou arquitetura
- Houver risco de apagar ou sobrescrever trabalho existente
- Uma dependência externa precisar ser instalada
- Testes falharem por motivo não compreendido
- A fase exigir mais contexto do que o planejado
- A implementação pedir mudança de requisito

O loop autônomo **não deve** jamais:
- Mudar escopo silenciosamente
- Reescrever o roadmap sem registro
- Resolver decisão de produto irreversível sem checkpoint
- Misturar várias fases grandes na mesma sessão
- Fazer operações destrutivas sem aprovação explícita

---

## ⚖️ Ordem de prioridade

Quando houver conflito entre artefatos ou instruções:

1. Instrução direta mais recente do usuário
2. `AGENTS.md` ou instruções locais do workspace
3. `.planning/STATE.md`, se existir
4. `.planning/PROJECT.md`, se existir
5. `.planning/REQUIREMENTS.md`, se existir
6. `.planning/ROADMAP.md`, se existir
7. Plano da fase atual
8. Sugestões de GStack, Karpathy ou Superpowers

---

## ⚡ Fluxos práticos

**Nova ideia:**
```
GStack (brainstorm/review)
  → GSD (spec + roadmap + fases)
  → GStack (revisão antes da implementação, se houver risco)
  → Karpathy (ritual por fase)
  → Superpowers (TDD + execução)
  → GSD (registrar estado e validações)
  → GStack (QA / retro)
```

**Fase já planejada:**
```
Ler PLAN.md da fase
  → Karpathy (ritual: ler, objetivar, listar arquivos)
  → Superpowers (TDD + execução)
  → GSD (verificar + registrar STATE.md)
```

**Decisão ambígua:**
```
Acionar GStack
  → Escolher alternativa
  → Registrar decisão no GSD
  → Continuar
```

---

## 📌 Contexto do Projeto Antigravity

> **Preencha esta seção conforme o projeto evolui.**

### Stack
- [ ] Linguagem principal:
- [ ] Framework:
- [ ] Banco de dados:
- [ ] Infra / deploy:

### Decisões arquiteturais já tomadas
- (adicionar conforme surgem)

### Fase atual
- (atualizar a cada mudança de fase GSD)

### O que NÃO fazer neste projeto
- (adicionar conforme aprendidos)

---

## 🔄 Checklist antes de cada sessão de trabalho

```
[ ] Todas as skills estão instaladas e ativas?
[ ] Qual fase GSD estou executando agora?
[ ] Passei pelo GStack para esta feature?
[ ] Executei o ritual Karpathy? (li o código, defini o objetivo em 1 frase, listei arquivos)
[ ] Meu primeiro passo é escrever um teste?
[ ] Minha mudança é cirúrgica e mínima?
[ ] Graphify foi rodado na fase anterior?
```

---

*Última atualização: — (preencher com a data)*
