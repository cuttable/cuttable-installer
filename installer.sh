#!/usr/bin/env bash

set -euo pipefail

# Get the system's temporary directory on macOS
temp_dir=$(mktemp -d)

# Create installer folder
INSTALLER="$temp_dir/$(uuidgen)"

echo "$INSTALLER"
