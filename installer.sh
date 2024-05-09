#!/usr/bin/env bash

set -euo pipefail

RUN_SCRIPT_URL="https://raw.githubusercontent.com/cuttable/cuttable-installer/create-installer/run"
CUTTA_DIR="$HOME/.cutta"

# Create installer folder
echo "🧹 Cleaning $CUTTA_DIR..."
rm -rf "$CUTTA_DIR"

mkdir -p "$CUTTA_DIR"

echo "🛜 Downloading installer..."
curl -s --create-dirs -O --output-dir "$CUTTA_DIR" $RUN_SCRIPT_URL

chmod +x "$CUTTA_DIR/run"
