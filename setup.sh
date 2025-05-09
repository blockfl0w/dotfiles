#!/bin/bash

VSCODE_USER_DIR="$HOME/.vscode-server/data/Machine"

# Ensure the settings directory exists
mkdir -p "$VSCODE_USER_DIR"

# Copy your settings
cp settings.json "$VSCODE_USER_DIR/"
cp keybindings.json "$VSCODE_USER_DIR/"
cp -r ./vscode/snippets "$VSCODE_USER_DIR/" 2>/dev/null

# Install extensions (may need VS Code server running)
if command -v code &> /dev/null; then
  cat ./vscode/extensions.txt | xargs -n 1 code --install-extension
fi
