#!/bin/bash
# Resize + compress event photos for the web (macOS `sips`).
# Save your original photos in THIS folder with these exact names, then run: bash resize.sh
#   smash-baseball.jpg  smash-baseball-2.jpg  smash-baseball-3.jpg
#   halloween-1.jpg  halloween-2.jpg  halloween-3.jpg  halloween-4.jpg
#   easter-flyer.jpg  easter-1.jpg  easter-2.jpg  easter-3.jpg  easter-4.jpg
# Each image is scaled so its longest side is <= 1600px and re-encoded at ~80% quality.

cd "$(dirname "$0")" || exit 1
MAXDIM=1600
QUALITY=80

for f in smash-baseball.jpg smash-baseball-2.jpg smash-baseball-3.jpg halloween-1.jpg halloween-2.jpg halloween-3.jpg halloween-4.jpg easter-flyer.jpg easter-1.jpg easter-2.jpg easter-3.jpg easter-4.jpg; do
  if [ -f "$f" ]; then
    before=$(du -h "$f" | cut -f1)
    sips -Z "$MAXDIM" -s format jpeg -s formatOptions "$QUALITY" "$f" --out "$f" >/dev/null 2>&1
    after=$(du -h "$f" | cut -f1)
    dims=$(sips -g pixelWidth -g pixelHeight "$f" 2>/dev/null | grep pixel | awk '{print $2}' | paste -sd x -)
    echo "✓ $f  ->  $dims  ($before -> $after)"
  else
    echo "✗ $f  (not found — save it here first)"
  fi
done
