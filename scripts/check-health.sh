#!/bin/bash

# OpenCode Health Check

echo "🔍 Checking OpenCode setup..."

# 1. Check if opencode is in PATH
if command -v opencode >/dev/null 2>&1; then
    echo "✅ opencode binary found: $(which opencode)"
    echo "   Version: $(opencode --version)"
else
    echo "❌ opencode binary NOT found in PATH. Make sure ~/.opencode/bin is in your PATH."
fi

# 2. Check node_modules
if [ -d "node_modules" ]; then
    echo "✅ node_modules found."
else
    echo "❌ node_modules NOT found. Run 'npm install'."
fi

# 3. Check plugins
PLUGINS=("@opencode-ai/plugin" "@kilocode/plugin" "@different-ai/opencode-browser" "opencode-skills-collection")
for plugin in "${PLUGINS[@]}"; do
    if [ -d "node_modules/$plugin" ]; then
        echo "✅ Plugin $plugin is installed."
    else
        echo "❌ Plugin $plugin is MISSING."
    fi
done

# 4. Check config symlinks
if [ -L "$HOME/.config/opencode/opencode.json" ]; then
    echo "✅ Global config is symlinked."
else
    echo "⚠️ Global config is NOT symlinked."
fi

if [ -L "$HOME/.config/opencode/tui.json" ]; then
    echo "✅ TUI config is symlinked."
else
    echo "⚠️ TUI config is NOT symlinked."
fi

# 5. Check Git status
if [ -d ".git" ]; then
    echo "✅ Git repository initialized."
else
    echo "⚠️ Git repository not found."
fi

echo "✨ Health check complete!"
