#!/bin/bash

TARGET=${1:-testphp.vulnweb.com}
OUTDIR="labs/web_${TARGET}_$(date +%Y%m%d_%H%M%S)"

mkdir -p "$OUTDIR"

echo "[*] Target: $TARGET"
echo "[*] Output: $OUTDIR"

echo "[*] Running nikto..."
nikto -h "http://$TARGET" > "$OUTDIR/nikto.txt" 2>&1

echo "[*] Running gobuster..."
gobuster dir -u "http://$TARGET" -w /usr/share/wordlists/dirb/common.txt \
  -q > "$OUTDIR/gobuster.txt" 2>&1

echo "[*] Running ffuf..."
ffuf -u "http://$TARGET/FUZZ" \
  -w /usr/share/wordlists/dirb/common.txt \
  -mc 200,301,302 \
  -of md -o "$OUTDIR/ffuf.md" >/dev/null 2>&1

echo "[✓] Web enum complete → $OUTDIR"
