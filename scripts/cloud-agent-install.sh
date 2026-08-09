#!/usr/bin/env bash
set -euo pipefail

cd /workspace

if [[ ! -f index.html ]]; then
  echo "error: index.html not found in repository root" >&2
  exit 1
fi

if ! command -v python3 >/dev/null 2>&1; then
  echo "error: python3 is required to serve the static app" >&2
  exit 1
fi

echo "Balsons Jupiter Suite static app is ready."
