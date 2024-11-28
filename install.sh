#!/bin/bash
# Install script for ggtree

# Define the target directory for the binary
BIN_DIR="/usr/local/bin"
SCRIPT_NAME="ggtree"

# Copy the Python script to /usr/local/bin
if [[ $EUID -ne 0 ]]; then
  echo "This script must be run as root" >&2
  exit 1
fi

SCRIPT_PATH="$(pwd)/ggtree.py"
TARGET_PATH="$BIN_DIR/$SCRIPT_NAME"

if [[ ! -f "$SCRIPT_PATH" ]]; then
  echo "ggtree.py not found in the current directory. Aborting installation." >&2
  exit 1
fi

# Create a wrapper to call the Python script
cat << WRAPPER > "$TARGET_PATH"
#!/bin/bash
python3 "$SCRIPT_PATH"
WRAPPER

# Make the wrapper executable
chmod +x "$TARGET_PATH"

echo "ggtree installed successfully. You can now use the command 'ggtree' from anywhere."
