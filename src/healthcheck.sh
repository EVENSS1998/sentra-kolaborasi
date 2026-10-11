#!/usr/bin/env bash
# Kode keluar: 0 = UP (layanan merespons), 2 = DOWN (gagal atau timeout)
set -euo pipefail
URL="${1:-http://127.0.0.1:5000/healthz}"
if curl -fsS --max-time 5 "$URL" >/dev/null; then
 echo "UP"; exit 0
else
 echo "DOWN"; exit 2
fi
