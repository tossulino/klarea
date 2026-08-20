# Design

<!-- impeccable:design-schema 1 -->

Mundo visual: **Carta**. Registrado a partir do build de 2026-08-20, não de intenções.
Seed da rodada de direção: `a8b3246d` · forma escolhida: carta de orientação ISOM (challenger fundido).

## A ideia que governa tudo

O terreno é a empresa do visitante e **não se redesenha**. O percurso é o que a Klarea traça por cima dele.
As duas camadas nunca se misturam: a camada terreno usa apenas neutros e nunca o acento; a camada percurso
usa apenas o acento e nunca vira textura de fundo.

Consequência prática para qualquer tela nova: se um elemento descreve a realidade atual do cliente, ele é
terreno (neutro). Se descreve a intervenção da Klarea, é percurso (azul). Não existe terceira categoria.

## Cor

| Papel | Token | Valor |
|---|---|---|
| Percorrível (leitura) | `--t-runnable` | `#FFFFFF` |
| Aberto (faixa alternada) | `--t-open` | `#F3F6FB` |
| Lento (brejo, hachurado) | `--t-slow` | `#E9F0FE` + `--mat-marsh` |
| Denso (abertura e fechamento) | `--t-dense` | `#0E2340` |
| Texto primário | `--ink` | `#0E2340` |
| Texto corrente | `--body` | `#26374D` |
| Texto secundário | `--muted` | `#5C6873` |
| Fio | `--line` | `#D5DEEA` |
| Percurso: traço e preenchimento | `--course` | `#3D7BFF` |
| Percurso: texto e botão | `--course-ink` | `#2E63D6` |
| Percurso sobre fundo escuro | (literal) | `#7FA6FF` |

**A regra de contraste que não pode ser esquecida.** O `#3D7BFF` da marca reprova como texto: dá 3,8:1 sobre
papel branco, contra os 4,5:1 exigidos. Por isso existem três azuis e não um. `#3D7BFF` só em traço e
preenchimento, onde contraste de texto não se aplica. `#2E63D6` em qualquer texto ou fundo de botão sobre
claro (5,4:1). `#7FA6FF` em qualquer texto sobre o navy (6,6:1) — o `#2E63D6` ali daria 2,91:1 e reprovaria
até para texto grande.

Estratégia de cor: **restrita**. Neutros carregam 94% da superfície; o acento tem frequência alta e área
quase nula. O azul precisa continuar significando ação na décima seção como significava na primeira.

## Curvas de nível

Três pesos, hierarquia de carta real. Sobre o navy da abertura:

- mestra (uma a cada cinco): `rgba(255,255,255,.20)`, 1,6px
- intermediária forte: `rgba(255,255,255,.12)`, 1,1px
- intermediária: `rgba(255,255,255,.07)`, 0,8px

Sobre claro, os equivalentes são `--c-index` `.22`, `--c-mid` `.14`, `--c-hair` `.09` sobre navy.
Peso uniforme descaracteriza a carta: a hierarquia é o que a torna legível como relevo.

## Materiais

Padrões SVG embutidos como data URI, nunca preenchimento chapado:

- `--mat-marsh`: hachura horizontal, dois traços a cada 10px
- `--mat-thicket`: retícula de pontos de 1,05px de raio, alternados

## Tipografia

- Display, UI e logotipo: **Barlow Condensed** 600/700, caixa alta, `letter-spacing: .005em` a `.16em`
- Corpo: **Inter** 400/500/600

`h1` `clamp(46px,8.4vw,102px)` / 0.92 · `h2` `clamp(32px,4.6vw,58px)` / 1.0 · `h3` `clamp(21px,2.2vw,27px)` / 1.08
· corpo 16px / 1.62 · `.lede` `clamp(17px,1.6vw,20px)` / 1.6.

**Caixa alta só em display e rótulo.** Nunca em texto corrido: uma frase de 47 caracteres em caixa alta foi
detectada e corrigida durante o build. Medida de corpo travada em 62–68ch.

## Símbolos

O conjunto cartográfico carrega significado, não decoração:

- **triângulo** = partida (o diagnóstico)
- **círculo** = controle intermediário (as frentes A, B, C; as fases 1 a 4)
- **círculo duplo** = chegada (a operação)
- **círculo tracejado** = nova volta do ciclo

Traço de 3px, sempre em `--course-ink`. Ícones desenhados, nunca glifo Unicode ou emoji.

## Composição

- Folha de 1160px, `padding-inline` de `clamp(20px,4vw,56px)`
- Faixas alternando percorrível / aberto / lento, abertura e fechamento em denso
- Acima de 1100px o conteúdo da abertura cede **34% da largura** ao percurso, que ocupa a coluna direita
- Fios: 2px em abertura de bloco, 1px entre linhas
- **Sem eyebrow acima de título.** O título carrega o próprio peso

## Barra de margem e âncoras

A barra do topo é `position: sticky` em **todas** as páginas, altura `--header-h` (64px, 56px abaixo de 900px).
Ela existe porque a navegação não pode desaparecer depois da primeira dobra.

**A regra que não pode ser removida:**

```css
:where([id]){ scroll-margin-top: calc(var(--header-h) + 26px) }
```

Sem ela, clicar num item do menu leva a seção para `y=0` e a barra fixa cobre o título — que era exatamente o
bug do site anterior, onde todas as seções tinham `scroll-margin-top: 0` sob um `nav` sticky de 70px.
Toda seção nova nasce com `id` e herda o deslocamento automaticamente.

Abaixo de 900px a barra vira uma linha só: marca e CTA na primeira, atalhos de seção rolando na horizontal
na segunda, com a barra de rolagem escondida.

## Movimento

Um momento autoral: o perfil do percurso marca a fase corrente, travada num relógio de 2600ms, parada fora
da tela via `IntersectionObserver` e desligada sob `prefers-reduced-motion`. Transições de 200ms em
`cubic-bezier(.16,1,.3,1)`, apenas em propriedades compositadas.

## Adaptação

Abaixo de 900px o percurso e a hachura de brejo **se recolhem**: o recorte ancorado à direita joga o traçado
por cima do texto e amplia a hachura até virar ruído. O terreno fica só com as curvas de nível, e a legenda
mais a copia carregam o argumento. Abaixo de 760px o topo compacta para duas linhas.

## Superfícies do navegador

Seleção, cursor de texto, anel de foco e barra de rolagem são tematizados a partir da paleta. Sobre o navy,
seleção e foco invertem para branco via `.on-dense`.

## O que este mundo recusa

Eyebrow acima de título · gradiente em texto · vidro e desfoque decorativos · `border-left` colorido acima de
1px em callout · sombra dura sem desfoque · monoespaçada como fantasia de "técnico" · emoji no lugar de ícone
· fotografia de banco de imagens · cinza puro (todo neutro é tintado para o azul da marca).

## Páginas internas

`Page.astro` dá a toda página interna a mesma abertura: barra fixa, bloco navy com `h1` e lede, conteúdo em
faixas alternadas, rodapé denso. As classes de conteúdo são `.doc` (jurídico, medida 72ch), `.article`
(leitura longa, 70ch, com `blockquote` de fio inteiro), `.cards` (índice de leitura) e `.controls` (tabela de
descrição de controle, a mesma da home).

**Roteamento e URLs.** `build.format: 'preserve'` no `astro.config.mjs` não é preferência de estilo: `'file'`
achataria `/guia/` em `/guia.html` e `'directory'` transformaria `/privacidade.html` em `/privacidade/`.
Há campanha ativa no Google Ads apontando para estas páginas. `scripts/check-urls.sh` compara a saída do build
com `scripts/urls-baseline.txt` e falha se qualquer caminho mudar. Rode antes de todo deploy.

## Dívidas registradas

- `Inter` dispara o aviso de fonte saturada do detector. É compromisso de marca, exceção deliberada.
- As fotos em `public/img/` (460×460, reais) estão órfãs: nenhuma página as referencia. A direção tem zero
  fotografia por decisão; se isso mudar, elas são o ponto de partida.
