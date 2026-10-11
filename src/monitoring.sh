#!/usr/bin/env bash
set -euo pipefail
INTERVAL="${1:-10}"
if ! [[ "$INTERVAL" =~ ^[0-9]+$ ]]; then
 echo "Galat: INTERVAL harus berupa angka bulat positif." >&2
 exit 1
fi
echo "Memantau setiap $INTERVAL detik. Tekan Ctrl+C untuk berhenti."
