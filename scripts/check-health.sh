#!/bin/bash

# OpenCode Health Check

echo "🔍 Checking OpenCode setup..."

# 1. Check if opencode is in PATH
if command -v opencode >/dev/null 2>&1; then
    echo "✅ opencode binary found: $(which opencode)"
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
for plugin in "@opencode-ai/plugin" "@kilocode/plugin"; do
    if [ -d "node_modules/$plugin" ]; then
        echo "✅ Plugin $plugin is installed."
    else
        echo "❌ Plugin $plugin is MISSING."
    fi
done

# 4. Check Git status
if [ -d ".git" ]; then
    echo "✅ Git repository initialized."
else
    echo "⚠️ Git repository not found."
fi

echo "✨ Health check complete!"
