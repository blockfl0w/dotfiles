#!/bin/bash

# Set target directory
VSCODE_USER_DIR="$HOME/.config/Code/User"

# Copy settings
cp settings.json "$VSCODE_USER_DIR/"
cp keybindings.json "$VSCODE_USER_DIR/"
cp -r snippets "$VSCODE_USER_DIR/"

# Install extensions
cat extensions.txt | xargs -n 1 code --install-extension
