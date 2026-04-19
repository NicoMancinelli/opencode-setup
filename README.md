# OpenCode Setup

This directory contains the configuration and plugins for my OpenCode setup.

## Plugins

- `@opencode-ai/plugin`: AI-powered coding assistance.
- `@kilocode/plugin`: IDE integration and utilities.

## Scripts

- `./scripts/install.sh`: Full setup on a new machine. Automatically symlinks `config/global.json` to `~/.config/opencode/opencode.json`.
- `./scripts/sync.sh`: Pulls the latest config from GitHub and runs `install.sh` to apply updates seamlessly.
- `./scripts/check-health.sh`: Verify the current environment.
- `npm run check-models`: Lists NanoGPT models included in your subscription and checks your balance.
- `npm run format`: Formats JSON and Markdown files using Prettier.
- `npm run upgrade-plugins`: Update all plugins.

## AI Subscription Optimization

To optimize your AI usage and keep costs low while accessing the best models:

1.  **Use OpenRouter**: Consolidate all your subscriptions (Anthropic, OpenAI, Google) into one API key.
2.  **Config Template**: See `config/opencode.json.example` for a setup that uses OpenRouter.
3.  **Key Management**: Export your API keys in your `~/.zshrc`:
    ```bash
    export OPENROUTER_API_KEY="your_key_here"
    ```

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
- **2026-04-19**: Added OpenRouter optimization strategy to access multiple LLMs via one provider.
