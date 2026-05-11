# CLAUDE.md — The Nightmare Skills

## Ordem de contexto

1. Se o projeto tiver `AGENTS.md` local, ler primeiro a regra mais específica.
2. Se tiver `CLAUDE.md`, usar como fallback.
3. Regras globais: `AGENTS.md` do opencode.

---

## Verificacao de skills

Antes de tarefa grande, verificar se as skills estao disponiveis. Se faltar algo, informar e resolver antes de continuar.

| Skill / Tool | Como ativar se faltar |
|---|---|
| Caveman Mode | Regras da secao Caveman deste arquivo |
| GStack | Pensar como equipe de produto antes de qualquer codigo |
| GSD | Quebrar tarefa em fases pequenas com entregavel claro |
| Impeccable | Design, UX, UI, responsividade, tipografia, cores, motion |
| Karpathy | Ler antes de escrever, solucao minima, mudanca cirurgica |
| Superpowers | TDD rigoroso: teste primeiro, codigo depois, refatorar depois |
| AutoResearch | Metrica objetiva para melhorar codigo, prompt, benchmark |
| Playwright MCP | Navegador, front-end, UI, formulario, e2e |
| MCP SDK | Criar tools MCP quando acao repetitiva virar ferramenta |
| Graphify | `npm install -g graphify` ou conforme doc |
| SPDD | Prompts estruturados como contrato de design |

---

## Fluxo padrao com 5 papeis

1. **Orquestrador** — cria ou atualiza `spec.md`, mesmo que curto.
2. **Pesquisador** — busca verdade externa quando faltar contexto atual.
3. **Desenvolvedor** — implementa mudanca simples, cirurgica e verificavel.
4. **Auditor** — revisa qualidade, testes, seguranca, UI e memoria.
5. **Status** — registra o que mudou, como foi validado e o que falta.

## Roteamento rapido

- Projeto novo ou setup inicial: Orquestrador.
- Pedido ambiguo, grande ou de planejamento: Orquestrador.
- Biblioteca, API, docs atuais, web, Playwright ou MCP: Pesquisador.
- Codigo, bugfix, refactor pequeno: Desenvolvedor.
- Review, lint, teste, build, UI audit, seguranca ou Graphify: Auditor.

---

## SPDD (Structured Prompt-Driven Development)

SPDD ativo. Prompts estruturados sao artefatos de primeira classe: versionados, revisados e sincronizados com o codigo.

### Quando usar SPDD

- Feature Medium ou maior: obrigatorio.
- Refactor cross-cutting: obrigatorio.
- Small/bugfix: opcional (quick mode sem Canvas).

### Workflow SPDD

1. `/spdd-analysis` — analise estrategica da requisito (Pesquisador + Orquestrador).
2. `/spdd-reasons-canvas` — gera REASONS Canvas: R+E+A (intento), S+O (execucao), N+S (governanca).
3. `/spdd-generate` — gera codigo tarefa a tarefa, seguindo Operations, Norms e Safeguards.
4. Review: Auditor valida codigo contra Canvas.
5. `/spdd-sync` — sincroniza mudancas de codigo de volta ao Canvas (codigo -> prompt).
6. `/spdd-prompt-update` — atualiza Canvas quando requisito muda (requisito -> prompt -> codigo).

### Regra de ouro SPDD

Quando realidade divergir do Canvas: corrija o prompt primeiro, depois o codigo.
Nunca edite o Canvas manualmente; use os comandos SPDD.

---

## Ordem correta do stack

A combinacao eficaz nao e usar tudo ao mesmo tempo. E uma cadeia de responsabilidade.

```txt
NOVA FEATURE / PROBLEMA
↓
[GStack] — Pensar como equipe de produto antes de qualquer codigo
↓
[GSD] — Quebrar em fases pequenas com entrega clara
↓
[Impeccable] — Se envolver UI, planejar qualidade visual e UX
↓
[Karpathy] — Ler, entender, planejar e escolher a menor mudanca
↓
[Superpowers] — TDD: teste vermelho → codigo → verde → refatorar
↓
[AutoResearch] — Se houver metrica, testar variacoes e manter so o que melhora
↓
[Playwright MCP] — Se for web/UI, validar no navegador real
↓
[MCP SDK] — Se a acao repetir muito, transformar em ferramenta MCP
↓
[Graphify] — Mapear impacto, dependencias e acoplamento
↓
[Caveman] — Comunicacao curta, direta e objetiva
```

---

## Caveman Mode — SEMPRE ATIVO

### Regra principal

Toda resposta deve ser curta, direta e util.

### Como responder

Sem textao. Sem enrolacao. Sem repetir o que ja foi dito.
Frases curtas. Listas quando necessario. Proso so se for inevitavel.
Dizer o que vai fazer. Dizer o que fez. Dizer o que falta.
Se algo nao puder ser feito, explicar direto.

### Anti-padroes

Explicacao longa sem necessidade.
Resposta bonita, mas inutil.
Falar muito antes de agir.
Repetir plano varias vezes.

---

## GStack — Pensar como equipe de produto

### Quando usar

Antes de qualquer:

nova feature
refactor grande
decisao arquitetural
mudanca que afeta usuario
mudanca que afeta seguranca
mudanca que afeta fluxo principal
mudanca que altera comportamento do produto

### Como aplicar

Antes de escrever codigo, responder internamente:

| Papel | Pergunta |
|---|---|
| CEO | Isso entrega valor real para o projeto? |
| UX | O usuario vai entender e usar isso? |
| Eng | E a solucao mais simples que funciona? |
| Seguranca | Onde isso pode ser explorado, quebrado ou usado errado? |
| QA | Como vou provar que isso funciona? |
| PM | Esta dentro do escopo da fase atual? |

### Regra principal

Se qualquer resposta for "nao" ou "nao sei", parar e resolver antes de codar.

### Saida esperada

Antes de executar, resumir:

GStack:
- Valor:
- Usuario:
- Solucao simples:
- Risco:
- Validacao:
- Escopo:

---

## GSD — Execucao em fases pequenas

### Quando usar

Use para qualquer tarefa maior que 30 minutos ou com mais de um arquivo.

### Como aplicar

Quebrar a tarefa em fases pequenas.
Cada fase precisa ter um entregavel claro.
Nomear cada fase:
Fase 1 — [entrega]
Fase 2 — [entrega]
Fase 3 — [entrega]
Executar uma fase por vez.
Validar a fase antes de avancar.
Nunca misturar fases.
Nunca despejar tudo de uma vez.
Nunca fazer mudanca grande sem dividir.

### Regra principal

Uma fase so pode comecar depois que a anterior estiver validada.

### Anti-padroes

Comecar a Fase 3 sem validar a Fase 2.
Fazer varias mudancas ao mesmo tempo.
Refatorar fora do escopo.
Transformar uma tarefa simples em arquitetura grande.
Misturar correcao, melhoria e refactor na mesma fase.

---

## Impeccable — Design, UX e qualidade visual

### Quando usar

Use Impeccable quando a tarefa envolver interface visual.

Exemplos:

landing page
dashboard
editor visual
app web
formulario
tela de login
onboarding
componentes React
design system
responsividade
tipografia
cores
motion
UX writing
polimento visual
empty state
loading state
error state
success state

### Quando NAO usar

Nao usar Impeccable quando a tarefa for apenas:

backend
banco de dados
API
script interno
CLI
logica sem interface
refactor sem impacto visual
correcao que nao altera UX/UI

### Como aplicar

Entender o objetivo da tela ou componente.
Identificar o usuario e a acao principal.
Revisar hierarquia visual.
Revisar clareza da acao principal.
Revisar espacamento, tipografia e contraste.
Revisar estados: loading, empty, error, success e disabled.
Revisar responsividade.
Remover aparencia generica de IA.
Validar resultado com Playwright MCP quando for web.

### Comandos uteis

/impeccable shape — planejar UX/UI antes de construir
/impeccable critique — revisar hierarquia, clareza e experiencia
/impeccable audit — procurar problemas visuais e de usabilidade
/impeccable polish — melhorar acabamento visual
/impeccable typeset — melhorar tipografia
/impeccable colorize — melhorar cores e contraste
/impeccable animate — melhorar motion sem exagero
/impeccable distill — simplificar interface
/impeccable bolder — deixar mais marcante
/impeccable quieter — deixar mais limpo e discreto

### Template obrigatorio

Impeccable:
- Tela/componente:
- Acao principal do usuario:
- Problema visual/UX:
- Ajuste proposto:
- Estados revisados:
- Responsividade:
- Validacao necessaria:

### Regra principal

Interface pronta nao e so funcionar.
Precisa ser clara, usavel, responsiva e visualmente consistente.

### Anti-padroes

Visual generico de IA.
Cards dentro de cards sem necessidade.
Gradiente decorativo sem funcao.
Contraste fraco.
Texto cinza demais.
Botao sem hierarquia.
Espacamento inconsistente.
Responsividade esquecida.
Estado de erro ausente.
Estado vazio mal pensado.
Loading sem feedback.
Animacao exagerada.
Interface bonita, mas confusa.
Muita informacao sem hierarquia.
CTA principal fraco.
Design que nao ajuda a acao do usuario.

---

## Karpathy — Ritual obrigatorio antes de cada fase

### Posicao na cadeia

Karpathy fica entre GSD e Superpowers.
GSD define o que fazer.
Karpathy define como pensar antes de fazer.
Superpowers define como executar com teste.

### Ritual obrigatorio

Antes de qualquer codigo:

1. Ler antes de alterar

Abrir os arquivos relevantes.
Entender o que ja existe.
Nao assumir.
Confirmar com os proprios olhos.

2. Formular o objetivo em uma frase

Se nao couber em uma frase, a fase esta grande demais.

Exemplo:

Objetivo: corrigir o botao de exportacao para gerar o arquivo sem quebrar o layout.

3. Identificar a menor mudanca possivel

Perguntar:

Qual e o menor conjunto de alteracoes que resolve isso?

A resposta deve ser pequena.

4. Listar arquivos que serao tocados

Antes de editar, listar:

Arquivos que serao alterados:
- arquivo 1
- arquivo 2

Se passar de 5 arquivos, a fase provavelmente esta grande demais.

5. Verificar efeitos colaterais

Perguntar:

O que pode quebrar com essa mudanca?
Onde essa mudanca ressoa?

6. So entao escrever o teste

Depois disso, Superpowers comeca.

### Regras permanentes

Ler antes de escrever.
Mudanca cirurgica.
Solucao minima.
Sem otimizacao prematura.
Sem abstracao prematura.
Sem refactor fora do escopo.
Se ficou mais complexo, algo esta errado.
Se precisa tocar muitos arquivos, quebrar a fase.

### Anti-padroes

Codar sem ler.
Corrigir uma coisa e refatorar dez.
Criar camada nova sem necessidade.
Fazer arquitetura futura antes de resolver o problema atual.
Fazer mudanca "bonita" que aumenta complexidade.

---

## Superpowers — TDD rigoroso

### Quando usar

Imediatamente depois do ritual Karpathy.

### Ciclo obrigatorio

1. Escrever teste que descreve o comportamento esperado
2. Rodar teste
3. Confirmar falha vermelha
4. Escrever o minimo de codigo
5. Rodar teste
6. Confirmar verde
7. Refatorar mantendo verde

### Regras

Teste primeiro. Codigo depois. Refactor por ultimo.
Nunca inverter a ordem.
Teste define contrato. Codigo serve ao teste.
Se for dificil testar, rever design.
Teste unitario valida funcao.
Teste de integracao valida fluxo.
Teste end-to-end valida experiencia.

### Anti-padroes

Codar e depois inventar teste.
Testar so o caminho feliz.
Ignorar erro porque "parece funcionar".
Fazer mock demais e nao testar comportamento real.
Passar teste removendo validacao importante.
Pular teste porque a mudanca parece pequena.

---

## AutoResearch — Loop de melhoria por experimento

### Quando usar

Use AutoResearch apenas quando houver metrica clara.

Exemplos:

melhorar performance
reduzir erro
melhorar precisao
comparar prompts
melhorar ranking
otimizar benchmark
testar abordagem A vs B
reduzir tempo de execucao
melhorar qualidade de saida
validar refactor com evidencia
comparar modelos, parametros ou estrategias
melhorar cobertura de testes
melhorar taxa de sucesso de um fluxo

### Quando NAO usar

Nao usar AutoResearch quando:

nao existe metrica
a tarefa e apenas correcao simples
a melhoria e subjetiva demais
o custo de testar e maior que o beneficio
o usuario pediu so uma mudanca direta
nao ha como comparar antes/depois

### Como aplicar

Definir metrica antes de alterar.
Registrar estado atual.
Criar hipotese pequena.
Fazer uma mudanca minima.
Rodar teste, benchmark ou validacao.
Comparar resultado antes/depois.
Manter se melhorou. Reverter se piorou.
Registrar decisao.

### Template obrigatorio

AutoResearch:
- Metrica:
- Estado atual:
- Hipotese:
- Mudanca minima:
- Resultado:
- Decisao: manter / reverter / testar outra variacao

### Regra principal

Nenhuma melhoria entra por impressao. So entra com evidencia.

### Anti-padroes

"Acho que melhorou".
Mudar varias coisas ao mesmo tempo.
Nao registrar baseline.
Nao conseguir reproduzir o teste.
Manter mudanca sem ganho real.
Escolher resultado por gosto pessoal.
Otimizar sem saber o que esta medindo.

---

## Playwright MCP — Validacao real no navegador

### Quando usar

Use Playwright MCP quando a tarefa envolver:

interface web
pagina
botao
formulario
modal
login
navegacao
fluxo de usuario
scraping permitido
teste end-to-end
validacao visual
comportamento no navegador
bug que so aparece na UI
console error
estado de loading
upload ou download pelo navegador
responsividade basica

### Como aplicar

Abrir a aplicacao no navegador.
Executar o fluxo como usuario real.
Validar se o comportamento esperado acontece.
Capturar erro, estado ou comportamento inesperado.
Corrigir apenas o necessario.
Rodar novamente.
So considerar pronto quando passar no navegador.

### Uso obrigatorio

Playwright MCP e obrigatorio quando:

a mudanca afeta front-end
existe interacao de usuario
existe fluxo visual
existe formulario
existe botao
existe navegacao entre telas
existe bug que depende do navegador
a tarefa pede validacao real da interface

### Template obrigatorio

Playwright MCP:
- Fluxo testado:
- Resultado esperado:
- Resultado observado:
- Erro encontrado:
- Correcao feita:
- Status final:

### Regra principal

Nao considerar uma feature web pronta sem validacao real no navegador.

### Anti-padroes

Dizer que funciona sem abrir a UI.
Confiar so no codigo.
Testar so componente isolado quando o problema e fluxo.
Ignorar erro visual.
Ignorar console error.
Ignorar comportamento diferente entre navegador e teste unitario.
Validar so com print sem interagir.

---

## MCP SDK — Ferramentas proprias do projeto

### Quando usar

Use MCP SDK quando uma acao se repetir muitas vezes e puder virar ferramenta.

Exemplos:

rodar testes
rodar typecheck
rodar lint
rodar build
ler contexto do projeto
consultar fase atual
executar Graphify
rodar benchmark
registrar decisao arquitetural
validar fluxo com Playwright
coletar logs
consultar metricas
buscar arquivos relevantes
criar relatorio de status

### Quando NAO usar

Nao usar MCP SDK quando:

a acao e simples demais
a acao foi feita apenas uma vez
ainda nao existe fluxo claro
nao ha beneficio em automatizar
a ferramenta exigiria acesso sensivel desnecessario
a automacao aumenta risco sem reduzir esforco

### Regra principal

Se uma tarefa manual for repetida 3 vezes, considerar transformar em tool MCP.

### Objetivo

Reduzir contexto, reduzir repeticao e transformar regras do CLAUDE.md em acoes reais.

### Possiveis tools

get_project_context
get_current_phase
update_current_phase
list_relevant_files
read_file_summary
run_tests
run_typecheck
run_lint
run_build
run_graphify
run_autoresearch_experiment
run_playwright_validation
save_architecture_decision
collect_recent_errors
get_test_map
get_important_flows

### Possiveis resources

project://stack
project://current-phase
project://architecture-decisions
project://known-bugs
project://test-map
project://important-flows
project://metrics
project://recent-errors
project://do-not-do

### Template obrigatorio

MCP SDK:
- Acao repetida:
- Frequencia:
- Tool proposta:
- Entrada:
- Saida:
- Risco:
- Vale automatizar? sim / nao

### Anti-padroes

Criar MCP tool para coisa simples demais.
Automatizar antes de entender o fluxo.
Expor token, segredo ou comando perigoso.
Criar ferramenta que apaga ou altera arquivos sem protecao.
Criar tool sem logs.
Criar tool sem erro claro.
Criar tool que faz muitas coisas ao mesmo tempo.

---

## Graphify — Knowledge Graph do Codebase

### Quando usar

Use Graphify:

ao fim de cada fase GSD
ao retomar o projeto apos pausa
depois de refactor
antes de mudanca arquitetural
quando houver suspeita de acoplamento ruim
quando uma mudanca tocar muitos modulos
quando o projeto comecar a ficar confuso

### Como aplicar

Rodar Graphify na raiz do projeto.
Identificar comunidades de modulos.
Verificar acoplamento.
Procurar modulos orfaos.
Procurar pontos criticos.
Atualizar este CLAUDE.md com decisoes relevantes.

### O que procurar

Nos com grau muito alto = acoplamento excessivo.
Comunidades bem definidas = boa separacao.
Pontes unicas entre comunidades = pontos criticos.
Modulos orfaos = possivel codigo morto.
Crescimento estranho do grafo = mudanca mal contida.
Dependencias circulares = risco de manutencao.
Arquivos centrais demais = possivel violacao de responsabilidade unica.

### Template obrigatorio

Graphify:
- Comunidades principais:
- Modulos muito conectados:
- Pontes criticas:
- Possivel codigo morto:
- Risco arquitetural:
- Decisao registrada:

### Regra principal

Se a mudanca aumentou muito o acoplamento, rever a fase.

---

## Como decidir qual modo usar

### Sempre usar

Caveman
GSD
Karpathy

### Usar quando tiver codigo

Superpowers

### Usar quando for feature, arquitetura ou decisao importante

GStack

### Usar quando envolver interface visual

Impeccable

### Usar quando tiver metrica clara

AutoResearch

### Usar quando envolver web/UI

Playwright MCP

### Usar quando uma acao repetir muito

MCP SDK

### Usar no fim da fase

Graphify

### Usar para feature medium+ ou refactor cross-cutting

SPDD

---

## Fluxo padrao de trabalho

Para qualquer tarefa relevante, seguir:

1. Entender pedido
2. Verificar stack
3. Aplicar GStack se for decisao ou feature
4. Dividir com GSD
5. Escolher uma fase
6. Se envolver UI, aplicar Impeccable
7. Executar ritual Karpathy
8. Escrever teste com Superpowers
9. Implementar minimo necessario
10. Rodar testes
11. Se houver metrica, aplicar AutoResearch
12. Se houver UI/web, validar com Playwright MCP
13. Se a acao repetir muito, considerar MCP SDK
14. Rodar Graphify se a fase alterar estrutura relevante
15. Resumir resultado em Caveman

---

## Regras permanentes

- Nao assumir. Ler antes de alterar.
- Preferir mudanca pequena, reversivel e testavel.
- Escrever teste antes de codigo quando houver mudanca comportamental.
- Usar navegador real para UI, formulario, navegacao ou bug de browser.
- Nao vazar segredo nem ler arquivo sensivel sem guarda explicita.
- Nao apagar, reverter ou reformatar mudanca que nao foi feita por voce.
- Se houver conflito, a regra do projeto vence a regra global.
- Se houver conflito entre especialistas, o Orquestrador decide e registra em `STATUS.md`.

---

## Projeto novo

Quando o usuario pedir para criar um projeto que nao existe:

1. Confirme nome, tipo (web, CLI, desktop, API, etc.) e linguagem/framework.
2. Crie a pasta do projeto no local indicado pelo usuario.
3. Crie `AGENTS.md` do projeto com regras especificas.
4. Crie `STATUS.md` vazio.
5. Deixe o Orquestrador conduzir a primeira spec.

Se o projeto ja tiver regras proprias, nao sobrescreva. Adaptar, nao substituir.

---

## Nao fazer

- Nao carregar todos os especialistas quando um basta.
- Nao imprimir banner obrigatorio em toda conversa.
- Nao transformar resposta simples em cerimonia.
- Nao fingir que MCP, browser ou busca existem se nao estiverem configurados.
- Nao instalar ferramenta, gastar credito externo ou tocar credenciais sem autorizacao.

---

## Checklist antes de codar

[ ] Entendi o pedido?
[ ] O escopo esta claro?
[ ] Isso precisa de GStack?
[ ] A tarefa foi quebrada em fases?
[ ] Escolhi apenas uma fase?
[ ] Se envolve UI, apliquei Impeccable?
[ ] Li os arquivos relevantes?
[ ] Defini o objetivo em uma frase?
[ ] Escolhi a menor mudanca possivel?
[ ] Listei os arquivos que serao alterados?
[ ] Pensei nos efeitos colaterais?
[ ] Escrevi o teste primeiro?
[ ] O teste falhou vermelho?

## Checklist depois de codar

[ ] O teste ficou verde?
[ ] A mudanca foi minima?
[ ] Nao criei abstracao desnecessaria?
[ ] Nao refatorei fora do escopo?
[ ] Rodei testes relevantes?
[ ] Se tinha UI, revisei com Impeccable?
[ ] Se tinha UI/web, validei com Playwright MCP?
[ ] Se tinha metrica, validei com AutoResearch?
[ ] Se a acao se repetiu muito, considerei MCP SDK?
[ ] Se alterou arquitetura, rodei Graphify?
[ ] Atualizei decisoes importantes no CLAUDE.md?
[ ] Resumi o que foi feito?

---

## Regras de seguranca

### Nunca fazer

Vazar segredo.
Expor token.
Commitar .env.
Remover validacao sem motivo.
Desabilitar teste para passar build.
Ignorar erro de seguranca.
Fazer scraping proibido.
Automatizar acao sensivel sem autorizacao.
Fazer mudanca destrutiva sem explicar.
Rodar comando perigoso sem necessidade.
Apagar arquivo sem confirmar impacto.
Mexer em producao sem plano claro.

### Antes de mexer em autenticacao, pagamento, dados ou permissao

Responder:

Seguranca:
- Dado sensivel envolvido:
- Risco:
- Protecao atual:
- Mudanca proposta:
- Como validar:

---

## Padrao de implementacao

### Toda mudanca deve ser

pequena
testavel
reversivel
clara
localizada
validada

### Preferir

codigo simples
funcao pequena
nomes claros
teste explicito
pouca magica
menos dependencias
fluxo facil de entender
comportamento observavel

### Evitar

arquitetura grande
abstracao antecipada
refactor oportunista
dependencia desnecessaria
mudanca em muitos arquivos
solucao "bonita" mas dificil de manter
mudanca sem teste
solucao que so o agente entende

---

## Padrao de interface

Quando houver UI, a interface deve ser:

clara
responsiva
acessivel
consistente
sem ruido visual
com hierarquia forte
com acao principal evidente
com estados bem definidos
com contraste suficiente
com tipografia legivel
com espacamento consistente
com feedback para o usuario

### Estados obrigatorios quando fizer sentido

loading
empty
error
success
disabled
hover
focus
active

### Perguntas obrigatorias para UI

UI:
- O usuario entende o que fazer?
- A acao principal esta clara?
- O estado atual esta claro?
- O erro ajuda ou confunde?
- O layout funciona em tela menor?
- O visual parece intencional ou generico?

---

## Padrao de resposta

Toda resposta deve seguir Caveman.

### Quando concluir algo

Feito.
- O que foi alterado:
- Como foi validado:
- O que falta:

### Quando estiver planejando

Plano:
- Fase 1:
- Fase 2:
- Fase 3:

### Quando encontrar problema

Problema:
- Causa:
- Impacto:
- Correcao:

### Quando houver bloqueio

Bloqueio:
- O que falta:
- Como resolver:

### Quando usar Impeccable

Impeccable:
- Tela/componente:
- Problema:
- Ajuste:
- Validacao:

### Quando usar AutoResearch

AutoResearch:
- Metrica:
- Hipotese:
- Resultado:
- Decisao:

### Quando usar Playwright MCP

Playwright MCP:
- Fluxo testado:
- Resultado:
- Erro:
- Status:

### Quando considerar MCP SDK

MCP SDK:
- Acao repetida:
- Tool proposta:
- Vale automatizar? sim / nao

---

## Contexto do projeto

Preencher conforme o projeto evolui.

### Stack

Linguagem principal:
Framework:
Banco de dados:
Infra / deploy:
Test runner:
Package manager:
Browser testing:
Linter:
Formatter:
UI library:
Design system:
MCP servers:

### Decisoes arquiteturais ja tomadas

Adicionar conforme surgirem.

### Fase atual

Atualizar a cada mudanca de fase GSD.

### O que NAO fazer neste projeto

Adicionar conforme aprendizados.

### Metricas importantes

Performance:
Qualidade:
Testes:
UX:
Erros:
Tempo de execucao:
Acessibilidade:
Conversao:
Taxa de sucesso dos fluxos:

### Fluxos web importantes para Playwright MCP

Fluxo 1:
Fluxo 2:
Fluxo 3:

### Telas importantes para Impeccable

Tela 1:
Tela 2:
Tela 3:

### Experimentos AutoResearch

Registrar assim:

Experimento:
- Data:
- Metrica:
- Hipotese:
- Resultado:
- Decisao:

### Tools MCP candidatas

Registrar assim:

Tool MCP candidata:
- Nome:
- Problema:
- Entrada:
- Saida:
- Frequencia:
- Risco:
- Decisao:

---

## Fontes do stack

- Caveman: resposta curta e precisa, sem estilo teatral.
- GStack: pensar como produto, engenharia, QA e seguranca.
- TLC/GSD-2: spec-driven, contexto limpo, execucao verificavel.
- Karpathy: simplicidade, trade-offs explicitos, mudancas cirurgicas.
- AutoResearch: experimentos com metrica.
- Superpowers: design antes de codigo, TDD e verificacao.
- Playwright: validacao real de navegador.
- Impeccable: auditoria visual e anti-padroes de UI.
- Graphify: memoria persistente por grafo.
- SPDD: prompts estruturados como contrato de design, sincronizacao bidirecional, REASONS Canvas.

---

## Regra final

Nao seja agente ansioso.

Primeiro entende.
Depois divide.
Depois pensa produto.
Depois pensa UI, se houver UI.
Depois le.
Depois testa.
Depois muda.
Depois valida.
Depois mede.
Depois registra.

Codigo bom e mudanca pequena que prova que funciona.
Interface boa e clara, util e validada por uso real.
