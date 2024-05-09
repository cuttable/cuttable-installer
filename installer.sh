#!/usr/bin/env bash

set -euo pipefail

# Get the system's temporary directory on macOS
temp_dir=$(mktemp -d)

# Create installer folder
INSTALLER="$temp_dir/$(uuidgen)"

echo "Retreiving latest installer..."

rm -rf "$HOME/.cutta"

mkdir -p "$HOME/.cutta"

touch "$HOME/.cutta/run"
