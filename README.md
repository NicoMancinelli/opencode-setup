# OpenCode Setup

This directory contains the configuration and plugins for my OpenCode setup.

## Plugins

- `@opencode-ai/plugin`: AI-powered coding assistance.
- `@kilocode/plugin`: IDE integration and utilities.

## Scripts

- `./scripts/install.sh`: Full setup on a new machine. Automatically symlinks `config/global.json` to `~/.config/opencode/opencode.json`.
- `./scripts/sync.sh`: Pulls the latest config from GitHub and runs `install.sh` to apply updates seamlessly.
- `npm run login-all`: Guided walkthrough to link your paid subscriptions (Claude, Gemini, OpenAI, Copilot) via OAuth.
- `./scripts/check-health.sh`: Verify the current environment.
- `npm run format`: Formats JSON and Markdown files using Prettier.
- `npm run upgrade-plugins`: Update all plugins.

## AI Subscription Strategy (OAuth-First)

This setup is optimized for **OAuth authentication** to your paid consumer subscriptions. By logging in directly, OpenCode can utilize your monthly quotas from:

- **Claude Pro (Anthropic)**
- **Gemini Advanced (Google)**
- **ChatGPT Plus (OpenAI)**
- **GitHub Copilot (Codex)**

Refer to [AI_STRATEGY.md](./AI_STRATEGY.md) for detailed setup and usage.

## Maintenance

To update all plugins to their latest versions, run:

```bash
npm run upgrade-plugins
```

## Setup Notes

- Managed with **npm** (switched from Bun).
- The `opencode` binary is located in `./bin/opencode`.
- **Environment Management**: Machine-specific configs go in `./config/`. Global config is at `~/.config/opencode/opencode.json`.

## Why Log

- **2026-04-19**: Migrated from Bun to npm for stability. Added health checks and automated update monitoring.
- **2026-04-19**: Added GitHub Action for weekly plugin update notifications.
- **2026-04-19**: Introduced `install.sh` for easier machine synchronization.
- **2026-04-19**: Shifted to a direct-provider AI strategy (Anthropic, Google, OpenAI, MiniMax) for better performance and latency.
- **2026-04-19**: Shifted to a true "dotfiles" approach by tracking the global config in Git and symlinking it via `install.sh`.
- **2026-04-19**: Added `sync.sh` for easy updating across machines and introduced `Prettier` for consistent formatting.
