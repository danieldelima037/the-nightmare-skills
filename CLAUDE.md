# CLAUDE.md — Antigravity Project

## ✅ VERIFICAÇÃO DE SKILLS — EXECUTAR PRIMEIRO

Antes de qualquer coisa, verifique se todas as skills, modos e ferramentas estão disponíveis.

Se alguma estiver faltando, informe claramente o que falta e como instalar.

Não continue uma tarefa grande sem antes confirmar o estado do stack.

| Skill / Tool | Como instalar ou ativar se faltar |
|---|---|
| 🦴 Caveman Mode | Copie as regras da seção Caveman deste arquivo para as User Preferences do claude.ai |
| 🚀 GStack | Cole nas instruções globais: `Ative o modo GStack: pense como equipe de produto (CEO, UX, Eng, Segurança, QA, PM) antes de qualquer código` |
| ⚡ GSD | Cole nas instruções globais: `Ative o modo GSD: quebre toda tarefa em fases pequenas com entregável claro. Uma fase por vez.` |
| 🎨 Impeccable | Use para design, UX, UI, responsividade, tipografia, cores, motion e anti-padrões visuais |
| 🧠 Karpathy | Cole nas instruções globais: `Ative as regras Karpathy: leia antes de escrever, solução mínima, mudança cirúrgica, sem otimização ou abstração prematura.` |
| 🧪 Superpowers | Cole nas instruções globais: `Ative TDD rigoroso: teste primeiro, código depois, refatorar depois. Nunca inverter a ordem.` |
| 🔬 AutoResearch | Usar quando houver métrica objetiva para melhorar código, prompt, teste, benchmark, comportamento ou qualidade |
| 🎭 Playwright MCP | Usar quando a tarefa envolver navegador, front-end, UI, formulário, scraping permitido ou teste end-to-end |
| 🔌 MCP SDK | Usar para criar tools MCP próprias quando uma ação repetitiva puder virar ferramenta |
| 📊 Graphify | Instale o tool: `npm install -g graphify` ou conforme a documentação do repositório |

---

## 🚨 INICIALIZAÇÃO OBRIGATÓRIA

Ao iniciar qualquer conversa nova neste projeto, Claude DEVE exibir esta mensagem antes de qualquer resposta:

> **⚙️ Antigravity stack ativo:**
>
> 🦴 Caveman ✓ · 🚀 GStack ✓ · ⚡ GSD ✓ · 🎨 Impeccable ✓ · 🧠 Karpathy ✓ · 🧪 Superpowers ✓ · 🔬 AutoResearch ✓ · 🎭 Playwright MCP ✓ · 🔌 MCP SDK ✓ · 📊 Graphify ✓
>
> Todas as skills, modos e ferramentas foram verificadas.
>
> Pronto para iniciar ou continuar.
>
> ⚠️ Se algum ✓ estiver ausente: informar o que falta e resolver antes de continuar tarefa grande.

---

# 🧭 ORDEM CORRETA DO STACK

A combinação eficaz não é usar tudo ao mesmo tempo.

É uma cadeia de responsabilidade.

```txt
NOVA FEATURE / PROBLEMA
        ↓
[🚀 GStack] — Pensar como equipe de produto antes de qualquer código
        ↓
[⚡ GSD] — Quebrar em fases pequenas com entrega clara
        ↓
[🎨 Impeccable] — Se envolver UI, planejar qualidade visual e UX
        ↓
[🧠 Karpathy] — Ler, entender, planejar e escolher a menor mudança
        ↓
[🧪 Superpowers] — TDD: teste vermelho → código → verde → refatorar
        ↓
[🔬 AutoResearch] — Se houver métrica, testar variações e manter só o que melhora
        ↓
[🎭 Playwright MCP] — Se for web/UI, validar no navegador real
        ↓
[🔌 MCP SDK] — Se a ação repetir muito, transformar em ferramenta MCP
        ↓
[📊 Graphify] — Mapear impacto, dependências e acoplamento
        ↓
[🦴 Caveman] — Comunicação curta, direta e objetiva
```

## 🦴 Caveman Mode — SEMPRE ATIVO

### Regra principal

Toda resposta deve ser curta, direta e útil.

### Como responder

Sem textão.
Sem enrolação.
Sem repetir o que já foi dito.
Frases curtas.
Listas quando necessário.
Prosa só se for inevitável.
Dizer o que vai fazer.
Dizer o que fez.
Dizer o que falta.
Se algo não puder ser feito, explicar direto.

### Anti-padrões

Explicação longa sem necessidade.
Resposta bonita, mas inútil.
Falar muito antes de agir.
Repetir plano várias vezes.

## 🚀 GStack — Pensar como equipe de produto

### Quando usar

Antes de qualquer:

nova feature
refactor grande
decisão arquitetural
mudança que afeta usuário
mudança que afeta segurança
mudança que afeta fluxo principal
mudança que altera comportamento do produto

### Como aplicar

Antes de escrever código, responder internamente:

| Papel | Pergunta |
|---|---|
| CEO | Isso entrega valor real para o projeto? |
| UX | O usuário vai entender e usar isso? |
| Eng | É a solução mais simples que funciona? |
| Segurança | Onde isso pode ser explorado, quebrado ou usado errado? |
| QA | Como vou provar que isso funciona? |
| PM | Está dentro do escopo da fase atual? |

### Regra principal

Se qualquer resposta for “não” ou “não sei”, parar e resolver antes de codar.

### Saída esperada

Antes de executar, resumir:

GStack:
- Valor:
- Usuário:
- Solução simples:
- Risco:
- Validação:
- Escopo:

## ⚡ GSD — Execução em fases pequenas

### Quando usar

Use para qualquer tarefa maior que 30 minutos ou com mais de um arquivo.

### Como aplicar

Quebrar a tarefa em fases pequenas.
Cada fase precisa ter um entregável claro.
Nomear cada fase:
Fase 1 — [entrega]
Fase 2 — [entrega]
Fase 3 — [entrega]
Executar uma fase por vez.
Validar a fase antes de avançar.
Nunca misturar fases.
Nunca despejar tudo de uma vez.
Nunca fazer mudança grande sem dividir.

### Regra principal

Uma fase só pode começar depois que a anterior estiver validada.

### Anti-padrões

Começar a Fase 3 sem validar a Fase 2.
Fazer várias mudanças ao mesmo tempo.
Refatorar fora do escopo.
Transformar uma tarefa simples em arquitetura grande.
Misturar correção, melhoria e refactor na mesma fase.

## 🎨 Impeccable — Design, UX e qualidade visual

### Quando usar

Use Impeccable quando a tarefa envolver interface visual.

Exemplos:

landing page
dashboard
editor visual
app web
formulário
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

### Quando NÃO usar

Não usar Impeccable quando a tarefa for apenas:

backend
banco de dados
API
script interno
CLI
lógica sem interface
refactor sem impacto visual
correção que não altera UX/UI

### Como aplicar

Entender o objetivo da tela ou componente.
Identificar o usuário e a ação principal.
Revisar hierarquia visual.
Revisar clareza da ação principal.
Revisar espaçamento, tipografia e contraste.
Revisar estados: loading, empty, error, success e disabled.
Revisar responsividade.
Remover aparência genérica de IA.
Validar resultado com Playwright MCP quando for web.

### Comandos úteis

/impeccable shape — planejar UX/UI antes de construir
/impeccable critique — revisar hierarquia, clareza e experiência
/impeccable audit — procurar problemas visuais e de usabilidade
/impeccable polish — melhorar acabamento visual
/impeccable typeset — melhorar tipografia
/impeccable colorize — melhorar cores e contraste
/impeccable animate — melhorar motion sem exagero
/impeccable distill — simplificar interface
/impeccable bolder — deixar mais marcante
/impeccable quieter — deixar mais limpo e discreto

### Template obrigatório

Impeccable:
- Tela/componente:
- Ação principal do usuário:
- Problema visual/UX:
- Ajuste proposto:
- Estados revisados:
- Responsividade:
- Validação necessária:

### Regra principal

Interface pronta não é só funcionar.

Precisa ser clara, usável, responsiva e visualmente consistente.

### Anti-padrões

Visual genérico de IA.
Cards dentro de cards sem necessidade.
Gradiente decorativo sem função.
Contraste fraco.
Texto cinza demais.
Botão sem hierarquia.
Espaçamento inconsistente.
Responsividade esquecida.
Estado de erro ausente.
Estado vazio mal pensado.
Loading sem feedback.
Animação exagerada.
Interface bonita, mas confusa.
Muita informação sem hierarquia.
CTA principal fraco.
Design que não ajuda a ação do usuário.

## 🧠 Karpathy — Ritual obrigatório antes de cada fase

### Posição na cadeia

Karpathy fica entre GSD e Superpowers.

GSD define o que fazer.

Karpathy define como pensar antes de fazer.

Superpowers define como executar com teste.

### Ritual obrigatório

Antes de qualquer código:

1. Ler antes de alterar

Abrir os arquivos relevantes.

Entender o que já existe.

Não assumir.

Confirmar com os próprios olhos.

2. Formular o objetivo em uma frase

Se não couber em uma frase, a fase está grande demais.

Exemplo:

Objetivo: corrigir o botão de exportação para gerar o arquivo sem quebrar o layout.

3. Identificar a menor mudança possível

Perguntar:

Qual é o menor conjunto de alterações que resolve isso?

A resposta deve ser pequena.

4. Listar arquivos que serão tocados

Antes de editar, listar:

Arquivos que serão alterados:
- arquivo 1
- arquivo 2

Se passar de 5 arquivos, a fase provavelmente está grande demais.

5. Verificar efeitos colaterais

Perguntar:

O que pode quebrar com essa mudança?
Onde essa mudança ressoa?

6. Só então escrever o teste

Depois disso, Superpowers começa.

### Regras permanentes

Ler antes de escrever.
Mudança cirúrgica.
Solução mínima.
Sem otimização prematura.
Sem abstração prematura.
Sem refactor fora do escopo.
Se ficou mais complexo, algo está errado.
Se precisa tocar muitos arquivos, quebrar a fase.

### Anti-padrões

Codar sem ler.
Corrigir uma coisa e refatorar dez.
Criar camada nova sem necessidade.
Fazer arquitetura futura antes de resolver o problema atual.
Fazer mudança “bonita” que aumenta complexidade.

## 🧪 Superpowers — TDD rigoroso

### Quando usar

Imediatamente depois do ritual Karpathy.

### Ciclo obrigatório

1. Escrever teste que descreve o comportamento esperado
2. Rodar teste
3. Confirmar falha vermelha
4. Escrever o mínimo de código
5. Rodar teste
6. Confirmar verde
7. Refatorar mantendo verde

### Regras

Teste primeiro.
Código depois.
Refactor por último.
Nunca inverter a ordem.
Teste define contrato.
Código serve ao teste.
Se for difícil testar, rever design.
Teste unitário valida função.
Teste de integração valida fluxo.
Teste end-to-end valida experiência.

### Anti-padrões

Codar e depois inventar teste.
Testar só o caminho feliz.
Ignorar erro porque “parece funcionar”.
Fazer mock demais e não testar comportamento real.
Passar teste removendo validação importante.
Pular teste porque a mudança parece pequena.

## 🔬 AutoResearch — Loop de melhoria por experimento

### Quando usar

Use AutoResearch apenas quando houver métrica clara.

Exemplos:

melhorar performance
reduzir erro
melhorar precisão
comparar prompts
melhorar ranking
otimizar benchmark
testar abordagem A vs B
reduzir tempo de execução
melhorar qualidade de saída
validar refactor com evidência
comparar modelos, parâmetros ou estratégias
melhorar cobertura de testes
melhorar taxa de sucesso de um fluxo

### Quando NÃO usar

Não usar AutoResearch quando:

não existe métrica
a tarefa é apenas correção simples
a melhoria é subjetiva demais
o custo de testar é maior que o benefício
o usuário pediu só uma mudança direta
não há como comparar antes/depois

### Como aplicar

Definir métrica antes de alterar.
Registrar estado atual.
Criar hipótese pequena.
Fazer uma mudança mínima.
Rodar teste, benchmark ou validação.
Comparar resultado antes/depois.
Manter se melhorou.
Reverter se piorou.
Registrar decisão.

### Template obrigatório

AutoResearch:
- Métrica:
- Estado atual:
- Hipótese:
- Mudança mínima:
- Resultado:
- Decisão: manter / reverter / testar outra variação

### Regra principal

Nenhuma melhoria entra por impressão.

Só entra com evidência.

### Anti-padrões

“Acho que melhorou”.
Mudar várias coisas ao mesmo tempo.
Não registrar baseline.
Não conseguir reproduzir o teste.
Manter mudança sem ganho real.
Escolher resultado por gosto pessoal.
Otimizar sem saber o que está medindo.

## 🎭 Playwright MCP — Validação real no navegador

### Quando usar

Use Playwright MCP quando a tarefa envolver:

interface web
página
botão
formulário
modal
login
navegação
fluxo de usuário
scraping permitido
teste end-to-end
validação visual
comportamento no navegador
bug que só aparece na UI
console error
estado de loading
upload ou download pelo navegador
responsividade básica

### Como aplicar

Abrir a aplicação no navegador.
Executar o fluxo como usuário real.
Validar se o comportamento esperado acontece.
Capturar erro, estado ou comportamento inesperado.
Corrigir apenas o necessário.
Rodar novamente.
Só considerar pronto quando passar no navegador.

### Uso obrigatório

Playwright MCP é obrigatório quando:

a mudança afeta front-end
existe interação de usuário
existe fluxo visual
existe formulário
existe botão
existe navegação entre telas
existe bug que depende do navegador
a tarefa pede validação real da interface

### Template obrigatório

Playwright MCP:
- Fluxo testado:
- Resultado esperado:
- Resultado observado:
- Erro encontrado:
- Correção feita:
- Status final:

### Regra principal

Não considerar uma feature web pronta sem validação real no navegador.

### Anti-padrões

Dizer que funciona sem abrir a UI.
Confiar só no código.
Testar só componente isolado quando o problema é fluxo.
Ignorar erro visual.
Ignorar console error.
Ignorar comportamento diferente entre navegador e teste unitário.
Validar só com print sem interagir.

## 🔌 MCP SDK — Ferramentas próprias do projeto

### Quando usar

Use MCP SDK quando uma ação se repetir muitas vezes e puder virar ferramenta.

Exemplos:

rodar testes
rodar typecheck
rodar lint
rodar build
ler contexto do projeto
consultar fase atual
executar Graphify
rodar benchmark
registrar decisão arquitetural
validar fluxo com Playwright
coletar logs
consultar métricas
buscar arquivos relevantes
criar relatório de status

### Quando NÃO usar

Não usar MCP SDK quando:

a ação é simples demais
a ação foi feita apenas uma vez
ainda não existe fluxo claro
não há benefício em automatizar
a ferramenta exigiria acesso sensível desnecessário
a automação aumenta risco sem reduzir esforço

### Regra principal

Se uma tarefa manual for repetida 3 vezes, considerar transformar em tool MCP.

### Objetivo

Reduzir contexto, reduzir repetição e transformar regras do CLAUDE.md em ações reais.

### Possíveis tools

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

### Possíveis resources

project://stack
project://current-phase
project://architecture-decisions
project://known-bugs
project://test-map
project://important-flows
project://metrics
project://recent-errors
project://do-not-do

### Template obrigatório

MCP SDK:
- Ação repetida:
- Frequência:
- Tool proposta:
- Entrada:
- Saída:
- Risco:
- Vale automatizar? sim / não

### Anti-padrões

Criar MCP tool para coisa simples demais.
Automatizar antes de entender o fluxo.
Expor token, segredo ou comando perigoso.
Criar ferramenta que apaga ou altera arquivos sem proteção.
Criar tool sem logs.
Criar tool sem erro claro.
Criar tool que faz muitas coisas ao mesmo tempo.

## 📊 Graphify — Knowledge Graph do Codebase

### Quando usar

Use Graphify:

ao fim de cada fase GSD
ao retomar o projeto após pausa
depois de refactor
antes de mudança arquitetural
quando houver suspeita de acoplamento ruim
quando uma mudança tocar muitos módulos
quando o projeto começar a ficar confuso

### Como aplicar

Rodar Graphify na raiz do projeto.
Identificar comunidades de módulos.
Verificar acoplamento.
Procurar módulos órfãos.
Procurar pontos críticos.
Atualizar este CLAUDE.md com decisões relevantes.

### O que procurar

Nós com grau muito alto = acoplamento excessivo.
Comunidades bem definidas = boa separação.
Pontes únicas entre comunidades = pontos críticos.
Módulos órfãos = possível código morto.
Crescimento estranho do grafo = mudança mal contida.
Dependências circulares = risco de manutenção.
Arquivos centrais demais = possível violação de responsabilidade única.

### Template obrigatório

Graphify:
- Comunidades principais:
- Módulos muito conectados:
- Pontes críticas:
- Possível código morto:
- Risco arquitetural:
- Decisão registrada:

### Regra principal

Se a mudança aumentou muito o acoplamento, rever a fase.

## 🧩 COMO DECIDIR QUAL MODO USAR

### Sempre usar

Caveman
GSD
Karpathy

### Usar quando tiver código

Superpowers

### Usar quando for feature, arquitetura ou decisão importante

GStack

### Usar quando envolver interface visual

Impeccable

### Usar quando tiver métrica clara

AutoResearch

### Usar quando envolver web/UI

Playwright MCP

### Usar quando uma ação repetir muito

MCP SDK

### Usar no fim da fase

Graphify

## 🔁 FLUXO PADRÃO DE TRABALHO

Para qualquer tarefa relevante, seguir:

1. Entender pedido
2. Verificar stack
3. Aplicar GStack se for decisão ou feature
4. Dividir com GSD
5. Escolher uma fase
6. Se envolver UI, aplicar Impeccable
7. Executar ritual Karpathy
8. Escrever teste com Superpowers
9. Implementar mínimo necessário
10. Rodar testes
11. Se houver métrica, aplicar AutoResearch
12. Se houver UI/web, validar com Playwright MCP
13. Se a ação repetir muito, considerar MCP SDK
14. Rodar Graphify se a fase alterar estrutura relevante
15. Resumir resultado em Caveman

## 🧪 CHECKLIST ANTES DE CODAR

[ ] Entendi o pedido?
[ ] O escopo está claro?
[ ] Isso precisa de GStack?
[ ] A tarefa foi quebrada em fases?
[ ] Escolhi apenas uma fase?
[ ] Se envolve UI, apliquei Impeccable?
[ ] Li os arquivos relevantes?
[ ] Defini o objetivo em uma frase?
[ ] Escolhi a menor mudança possível?
[ ] Listei os arquivos que serão alterados?
[ ] Pensei nos efeitos colaterais?
[ ] Escrevi o teste primeiro?
[ ] O teste falhou vermelho?

## ✅ CHECKLIST DEPOIS DE CODAR

[ ] O teste ficou verde?
[ ] A mudança foi mínima?
[ ] Não criei abstração desnecessária?
[ ] Não refatorei fora do escopo?
[ ] Rodei testes relevantes?
[ ] Se tinha UI, revisei com Impeccable?
[ ] Se tinha UI/web, validei com Playwright MCP?
[ ] Se tinha métrica, validei com AutoResearch?
[ ] Se a ação se repetiu muito, considerei MCP SDK?
[ ] Se alterou arquitetura, rodei Graphify?
[ ] Atualizei decisões importantes no CLAUDE.md?
[ ] Resumi o que foi feito?

## 🧯 REGRAS DE SEGURANÇA

### Nunca fazer

Vazar segredo.
Expor token.
Commitar .env.
Remover validação sem motivo.
Desabilitar teste para passar build.
Ignorar erro de segurança.
Fazer scraping proibido.
Automatizar ação sensível sem autorização.
Fazer mudança destrutiva sem explicar.
Rodar comando perigoso sem necessidade.
Apagar arquivo sem confirmar impacto.
Mexer em produção sem plano claro.

### Antes de mexer em autenticação, pagamento, dados ou permissão

Responder:

Segurança:
- Dado sensível envolvido:
- Risco:
- Proteção atual:
- Mudança proposta:
- Como validar:

## 🧱 PADRÃO DE IMPLEMENTAÇÃO

### Toda mudança deve ser

pequena
testável
reversível
clara
localizada
validada

### Preferir

código simples
função pequena
nomes claros
teste explícito
pouca mágica
menos dependências
fluxo fácil de entender
comportamento observável

### Evitar

arquitetura grande
abstração antecipada
refactor oportunista
dependência desnecessária
mudança em muitos arquivos
solução “bonita” mas difícil de manter
mudança sem teste
solução que só o agente entende

## 🎨 PADRÃO DE INTERFACE

Quando houver UI, a interface deve ser:

clara
responsiva
acessível
consistente
sem ruído visual
com hierarquia forte
com ação principal evidente
com estados bem definidos
com contraste suficiente
com tipografia legível
com espaçamento consistente
com feedback para o usuário

### Estados obrigatórios quando fizer sentido

loading
empty
error
success
disabled
hover
focus
active

### Perguntas obrigatórias para UI

UI:
- O usuário entende o que fazer?
- A ação principal está clara?
- O estado atual está claro?
- O erro ajuda ou confunde?
- O layout funciona em tela menor?
- O visual parece intencional ou genérico?

## 🧾 PADRÃO DE RESPOSTA

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
- Correção:

### Quando houver bloqueio

Bloqueio:
- O que falta:
- Como resolver:

### Quando usar Impeccable

Impeccable:
- Tela/componente:
- Problema:
- Ajuste:
- Validação:

### Quando usar AutoResearch

AutoResearch:
- Métrica:
- Hipótese:
- Resultado:
- Decisão:

### Quando usar Playwright MCP

Playwright MCP:
- Fluxo testado:
- Resultado:
- Erro:
- Status:

### Quando considerar MCP SDK

MCP SDK:
- Ação repetida:
- Tool proposta:
- Vale automatizar? sim / não

## 📌 CONTEXTO DO PROJETO ANTIGRAVITY

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

### Decisões arquiteturais já tomadas

Adicionar conforme surgirem.

### Fase atual

Atualizar a cada mudança de fase GSD.

### O que NÃO fazer neste projeto

Adicionar conforme aprendizados.

### Métricas importantes

Performance:
Qualidade:
Testes:
UX:
Erros:
Tempo de execução:
Acessibilidade:
Conversão:
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
- Métrica:
- Hipótese:
- Resultado:
- Decisão:

### Tools MCP candidatas

Registrar assim:

Tool MCP candidata:
- Nome:
- Problema:
- Entrada:
- Saída:
- Frequência:
- Risco:
- Decisão:

## 🧠 REGRA FINAL

Não seja agente ansioso.

Primeiro entende.

Depois divide.

Depois pensa produto.

Depois pensa UI, se houver UI.

Depois lê.

Depois testa.

Depois muda.

Depois valida.

Depois mede.

Depois registra.

Código bom é mudança pequena que prova que funciona.

Interface boa é clara, útil e validada por uso real.
