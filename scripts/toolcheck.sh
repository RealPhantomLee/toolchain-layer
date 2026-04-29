#!/bin/bash

echo "=== Brick 4 Toolchain Check ==="
echo

TOOLS=(
nmap
hydra
john
hashcat
wireshark
tcpdump
msfconsole
burpsuite
nikto
gobuster
ffuf
bettercap
)

for t in "${TOOLS[@]}"; do
    if command -v "$t" >/dev/null 2>&1; then
        echo "[OK] $t"
    else
        echo "[MISSING] $t"
    fi
done

echo
echo "Done."
