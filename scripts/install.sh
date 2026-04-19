#!/bin/bash

# OpenCode Install & Sync Script
# Use this to set up the environment on a new machine.

set -e

echo "🚀 Setting up OpenCode environment..."

# 1. Install dependencies
echo "📦 Installing plugins..."
npm install

# 2. Setup Global Config Symlink
echo "🔗 Setting up global config symlink..."
mkdir -p ~/.config/opencode
if [ -f "$HOME/.opencode/config/global.json" ]; then
    ln -sf "$HOME/.opencode/config/global.json" "$HOME/.config/opencode/opencode.json"
    echo "✅ Global config linked."
else
    echo "⚠️ No global.json found in ~/.opencode/config/, skipping symlink."
fi

# 3. Setup PATH (for zsh)
if [[ ":$PATH:" != *":$HOME/.opencode/bin:"* ]]; then
    echo "🔗 Adding bin/ to PATH in ~/.zshrc..."
    echo 'export PATH="$HOME/.opencode/bin:$PATH"' >> ~/.zshrc
    echo "⚠️ Please run 'source ~/.zshrc' or restart your terminal."
fi

# 4. Add alias
if ! grep -q "alias opencode-config=" ~/.zshrc; then
    echo "📎 Adding 'opencode-config' alias to ~/.zshrc..."
    echo 'alias opencode-config="cd ~/.opencode"' >> ~/.zshrc
fi

# 5. Run health check
chmod +x scripts/check-health.sh
./scripts/check-health.sh

echo "🏁 Installation complete!"
