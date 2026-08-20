#!/bin/sh
# Compara as URLs geradas com a linha de base. Campanha ativa no Google Ads
# aponta para algumas destas paginas: nenhuma pode sumir ou mudar de caminho.
cd "$(dirname "$0")/.." || exit 1
[ -d dist ] || { echo "sem dist/: rode npm run build antes"; exit 1; }
(cd dist && find . -type f \( -name '*.html' -o -name '*.pdf' -o -name '*.txt' -o -name '*.xml' -o -name 'CNAME' \) | sed 's|^\./||' | sort) > /tmp/urls-atual.txt
if diff -u scripts/urls-baseline.txt /tmp/urls-atual.txt > /tmp/urls-diff.txt; then
  echo "URLs preservadas: $(wc -l < scripts/urls-baseline.txt | tr -d ' ') caminhos identicos."
else
  echo "ATENCAO: as URLs mudaram."
  grep '^-[^-]' /tmp/urls-diff.txt | sed 's/^-/  SUMIU:  /'
  grep '^+[^+]' /tmp/urls-diff.txt | sed 's/^+/  NOVO:   /'
  exit 1
fi
