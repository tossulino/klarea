import { defineConfig } from 'astro/config';

export default defineConfig({
  site: 'https://klarea.ai',
  // 'preserve' emite cada pagina exatamente como foi escrita:
  //   privacidade.astro   -> /privacidade.html
  //   guia/index.astro    -> /guia/
  // 'file' achataria /guia/ em /guia.html e 'directory' transformaria
  // /privacidade.html em /privacidade/. Ha campanha ativa no Ads: URL nao muda.
  build: { format: 'preserve' },
});
