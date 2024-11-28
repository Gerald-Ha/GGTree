#!/bin/bash
# Uninstall script for ggtree

# Define the target directory for the binary
BIN_DIR="/usr/local/bin"
SCRIPT_NAME="ggtree"
TARGET_PATH="$BIN_DIR/$SCRIPT_NAME"

if [[ $EUID -ne 0 ]]; then
  echo "This script must be run as root" >&2
  exit 1
fi

if [[ -f "$TARGET_PATH" ]]; then
  rm "$TARGET_PATH"
  echo "ggtree has been uninstalled."
else
  echo "ggtree is not installed."
fi
