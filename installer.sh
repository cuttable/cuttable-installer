#!/usr/bin/env bash

set -euo pipefail

RUN_SCRIPT_URL="https://raw.githubusercontent.com/cuttable/cuttable-installer/create-installer/run.sh"
CUTTA_DIR="$HOME/.cutta"

# Get the system's temporary directory on macOS
temp_dir=$(mktemp -d)

# Create installer folder
INSTALLER="$temp_dir/$(uuidgen)"

echo "Retreiving latest installer..."

rm -rf "$CUTTA_DIR"

mkdir -p "$CUTTA_DIR"

curl --create-dirs -O --output-dir "$CUTTA_DIR/run.sh" $RUN_SCRIPT_URL
