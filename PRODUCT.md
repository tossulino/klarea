# Product

<!-- impeccable:product-schema 1 -->

## Platform

web

## Stack

Hoje: HTML/CSS estático em arquivo único (`index.html`, 750 linhas), sem build, deploy por push na `main` (Cloudflare Pages, Framework None, output `/`).

Decisão do usuário (ago/2026) para a nova versão: **build aceito** (Astro ou equivalente), para ganhar componentes reutilizáveis entre `index`, `diagnostico.html`, `guia/` e `artigos/`. Consequência registrada: o deploy deixa de ser apenas um push — a Cloudflare passa a precisar de build command.

Nota de sequência: a exploração de direções visuais é construída como HTML estático solto para comparação lado a lado. O build entra apenas na direção escolhida.

## Users

Conselheiros, C-level, diretores, investidores, executivos e gerentes de médias e grandes corporações. Chegam sabendo que precisam de IA e sem profundidade para julgar o que estão comprando. O trabalho que estão fazendo na página: decidir se esta dupla é séria o suficiente para receber 30 minutos e o contexto do próprio negócio.

Não listar o público logo no início da página e não enfatizar faturamento. O foco é negócio e solução.

## Product Purpose

Advisory de IA executiva. Leva domínio de IA para quem decide e transforma uso superficial em vantagem de negócio (decisão, eficiência, crescimento). Não é escola de IA, não é software house.

Sucesso da nova versão, definido pelo usuário (ago/2026): **transmitir senioridade e sustentar preço**. O visitante já entende o serviço; o que falta é perceber o nível. Este é o critério pelo qual as direções visuais competem.

## Positioning

IA e tecnologia como ferramenta para a **execução da estratégia** — nunca a tecnologia como fim. O diferencial é a dupla na mesma mesa: quem lê a estratégia e a decisão (Guilherme Tossulino) e quem constrói e governa os sistemas (Rafael "Foka" Scheidt, CTO/exit na NETPACS, autor de "A Nova Engenharia de Software com IA").

Independente: não revende software, não vende plataforma. Implanta sobre a stack que fizer sentido.

Tese central (ago/2026): "o que separa quem opera IA de quem só testa não é o modelo, é o que está ao redor dele". Frase-martelo: "Você não termina com um plano. Termina com IA operando."

Restrição durável: **não ancorar em M&A ou valuation.** M&A só como exemplo do raciocínio "isso é meio, não fim".

## Operating Context

Entrada por três frentes paralelas, não por esteira sequencial: Produto novo · Eficiência da operação · Integração ao que já existe. A Mentoria de Fluência em IA roda em paralelo a qualquer frente. O método (flywheel de 4 fases: Diagnosticar → Direcionar → Construir → Escalar) existe como condução, não como oferta — "você entra pela porta que o seu problema pede".

Superfícies do produto: `index.html` (esta landing), `diagnostico.html` (autodiagnóstico de 8 perguntas com captura de lead), `guia/` (LP de captura do ebook do Índice de Maturidade), `artigos/`, `conteudos.html`.

## Capabilities and Constraints

- Site estático. Formulários via web3forms; analytics via gtag (G-BY0EFHP73W); tag Google Ads AW-18391505425 com conversão "Inscrição" nos formulários — **preservar em qualquer nova versão**.
- Domínio klarea.ai, DNS configurado. `sitemap.xml`, `robots.txt`, `llms.txt` e JSON-LD presentes.
- Página atual: 10.971px de altura, 12 seções, 12,19 viewports.
- Undecided: e-mail contato@klarea.ai ainda não criado. Dados legais (razão social, CNPJ, cidade) ainda não preenchidos em `privacidade.html` e `termos.html`.

## Brand Commitments

- Nome e tagline: "Klarea" · "IA que executa a sua estratégia".
- Tokens de cor: navy `#0E2340` · accent `#3D7BFF` · accent-soft `#A9C5FF` · ink `#16242C` · muted `#5C6873` · line `#E2E8F0` · soft `#F3F6FB` · blue-soft `#E9F0FE`.
- Tipografia (**alterado em 2026-08-20, aprovado pelo usuário ao escolher a direção Carta**): títulos, UI e logotipo em **Barlow Condensed**, caixa alta; corpo em Inter. Substitui a Plus Jakarta Sans nos títulos e a Space Grotesk no logotipo. A Inter permanece como compromisso de marca no corpo, e é a exceção registrada ao aviso de fonte saturada do detector.
- Logo: monograma "K" (haste branca, braços em gradiente azul, lampejo azul-claro no topo). `favicon.svg`, `favicon.png`.
- Voz editorial (estilo Tossulino): direto e assertivo, posição clara, frases curtas, parágrafos de até ~3 linhas. Reframes "Não é X. É Y." e frase-martelo ao fim dos blocos. **Sem travessões.** Sem adjetivos vazios (robusto, inovador, revolucionário) e sem jargão motivacional. Termos de mercado em inglês quando padrão.

## Evidence on Hand

Confirmado pelo usuário (ago/2026): **nenhum material novo disponível.** As direções precisam sustentar senioridade sem prova visual.

- Sem fotos reais dos sócios — hoje avatares com iniciais.
- Sem depoimento nominal autorizado — hoje casos reais anonimizados, rotulados como tal.
- Sem logos de clientes.
- Zero imagem raster na página atual (medido: `images: []`). A única figura é o SVG do ciclo do método.
- Ativos que existem: `Klarea-7-perguntas-IA.pdf`, `Klarea-Guia-Maturidade-IA.pdf`.

Não fabricar depoimentos, clientes, números ou prêmios.

## Product Principles

1. **A tecnologia é meio.** Toda promessa se resolve em execução de estratégia e resultado medido, nunca em capacidade técnica isolada.
2. **Autoridade vem de precisão, não de volume.** O público julga por densidade e correção, não por entusiasmo. Adjetivo vazio custa credibilidade.
3. **Independência é vendável.** Não vender plataforma é parte da oferta, não uma limitação a esconder.
4. **Entrada por frente, não por esteira.** O visitante escolhe a porta pelo problema que tem; nenhuma sequência obrigatória.
5. **Nada de prova fabricada.** Na ausência de logo, foto e nome, o site sustenta credibilidade por argumento e acabamento.

## Accessibility & Inclusion

Sem padrão formal estabelecido pelo usuário. Lacunas medidas no site atual, a corrigir na nova versão: ausência de `:focus-visible` (navegação por teclado cai no anel padrão sobre gradiente navy) e ausência de `prefers-reduced-motion` (hovers em `transform` e `filter` não podem ser desligados).
