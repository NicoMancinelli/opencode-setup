#!/bin/bash

# OpenCode Secret Scanner
# Scans configuration files for accidentally committed API keys.

echo "🔒 Scanning for secrets..."

# Regex patterns for common API keys
PATTERNS=(
    "sk-[a-zA-Z0-9]{20,}" # Generic OpenAI/Anthropic-like keys
    "ghp_[a-zA-Z0-9]{36}" # GitHub Personal Access Tokens
    "AIza[0-9A-Za-z-_]{35}" # Google API Keys
)

FOUND=0

for pattern in "${PATTERNS[@]}"; do
    # Scan all files in the repo except .git, node_modules, and bak files
    MATCHES=$(grep -rnE "$pattern" . --exclude-dir={.git,node_modules} --exclude="*.bak" --exclude="*.example" --exclude="WORK_LOG.md")
    if [ ! -z "$MATCHES" ]; then
        echo "❌ Found potential secret matching pattern: $pattern"
        echo "$MATCHES"
        FOUND=1
    fi
done

if [ $FOUND -eq 1 ]; then
    echo "⚠️  CRITICAL: Potential secrets detected! Remove them before pushing."
    exit 1
else
    echo "✅ No secrets found in tracked files."
    exit 0
fi
