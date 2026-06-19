# Klarea · site

Site institucional da Klarea (estático, HTML/CSS, sem build).

## Estrutura
- `index.html` — página principal
- `privacidade.html` · `termos.html` — páginas legais
- `favicon.svg` · `favicon.png` — ícones
- `og.png` — imagem de compartilhamento (Open Graph)

## Publicar no Cloudflare Pages (via Git)

1. Crie um repositório vazio no GitHub (ex.: `klarea-site`).
2. Aponte este repositório local para o GitHub e envie:
   ```bash
   git remote add origin git@github.com:SEU-USUARIO/klarea-site.git
   git branch -M main
   git push -u origin main
   ```
3. No Cloudflare: **Workers & Pages → Create → Pages → Connect to Git** e escolha o repositório.
4. Configurações de build (site estático, sem build):
   - **Framework preset:** None
   - **Build command:** (deixe vazio)
   - **Build output directory:** `/`
5. **Save and Deploy.** A cada `git push` na branch `main`, a Cloudflare publica automaticamente.

## Domínio
No projeto do Pages → **Custom domains** → adicione `klarea.ai`. O caminho mais simples é adicionar o domínio à Cloudflare (plano free) e trocar os nameservers na GoDaddy pelos da Cloudflare; o apex e o HTTPS são configurados automaticamente.

## Pendências antes de divulgar
- Conectar o formulário (Calendly ou Formspree).
- Criar o e-mail contato@klarea.ai.
- Preencher dados legais (razão social, CNPJ, cidade) em `privacidade.html` e `termos.html`.
- Substituir os depoimentos ilustrativos por reais e inserir o LinkedIn do Guilherme.
