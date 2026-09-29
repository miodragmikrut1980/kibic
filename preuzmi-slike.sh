#!/bin/bash
# Preuzima fotografije radova sa kibicfenster.rs u slike/radovi/
cd "$(dirname "$0")"
mkdir -p slike/radovi
while read -r url; do
  [ -z "$url" ] && continue
  f="slike/radovi/$(basename "$url")"
  [ -s "$f" ] || curl -fsSL "$url" -o "$f" && echo "OK  $f" || echo "GREŠKA  $url"
done <<'LIST'
https://kibicfenster.rs/assets/images/jkl4-761x951.webp
https://kibicfenster.rs/assets/images/cc1-761x951.webp
https://kibicfenster.rs/assets/images/kl2-761x951.webp
https://kibicfenster.rs/assets/images/bx1-761x951.webp
https://kibicfenster.rs/assets/images/viber-image-2025-09-11-12-40-16-407-761x951.webp
https://kibicfenster.rs/assets/images/adf3-761x951.webp
https://kibicfenster.rs/assets/images/awert8-761x951.webp
https://kibicfenster.rs/assets/images/kl1-761x951.webp
https://kibicfenster.rs/assets/images/nem1-761x951.webp
https://kibicfenster.rs/assets/images/bn1-761x951.webp
https://kibicfenster.rs/assets/images/asd2-761x951.webp
https://kibicfenster.rs/assets/images/cq1-761x951.webp
https://kibicfenster.rs/assets/images/kj1-761x951.webp
https://kibicfenster.rs/assets/images/ax4-761x951.webp
https://kibicfenster.rs/assets/images/kl5-761x951.webp
https://kibicfenster.rs/assets/images/c9-761x951.webp
https://kibicfenster.rs/assets/images/asd6-761x951.webp
https://kibicfenster.rs/assets/images/tus2-761x951.webp
https://kibicfenster.rs/assets/images/kj9-761x951.webp
https://kibicfenster.rs/assets/images/c5-761x951.webp
https://kibicfenster.rs/assets/images/k3-761x951.webp
https://kibicfenster.rs/assets/images/kj10-761x951.webp
https://kibicfenster.rs/assets/images/cc2-761x951.webp
LIST
echo "Gotovo: $(ls slike/radovi | wc -l) slika."
