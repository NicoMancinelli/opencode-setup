#!/bin/bash

# OpenCode Sync Script
# Use this to pull the latest config from GitHub and apply updates.

set -e

echo "🔄 Syncing OpenCode configuration..."

# 1. Pull latest changes
echo "⬇️ Pulling from origin..."
git pull origin main

# 2. Re-run installation (handles dependencies, links, path, etc.)
echo "🛠️ Re-running installation..."
./scripts/install.sh

echo "✅ Sync complete!"
