# OpenCode Setup Work Log

This file tracks all modifications and architectural changes made to this repository to keep AI agents and tools synchronized.

## Session: 2026-04-19

### 1. Dependency Management & Cleanup

- **Migrated from Bun to npm**: Standardized on `package.json` with npm as the primary package manager.
- **Updated Plugins**: Upgraded `@opencode-ai/plugin` and `@kilocode/plugin` to their latest versions.
- **Automated Formatting**: Integrated `Prettier` and added an `npm run format` script.

### 2. Synchronization & Deployment

- **GitHub Repository**: Initialized Git and created [NicoMancinelli/opencode-setup](https://github.com/NicoMancinelli/opencode-setup).
- **Install Script**: Created `scripts/install.sh` to automate environment setup (PATH, aliases, symlinks).
- **Sync Script**: Created `scripts/sync.sh` (via `npm run sync`) to pull and apply updates.
- **Health Checks**: Added `scripts/check-health.sh` to verify binary, plugins, and symlink integrity.

### 3. "True Dotfiles" Architecture

- **Global Config Versioning**: Moved system config from `~/.config/opencode/` to the repo at `config/`.
- **Symlinking**: `install.sh` now automatically symlinks the repo config back to the system location.

### 4. AI Subscription Strategy

- **Cost Tracking**: Manually mapped pricing data for major models into `global.json` for real-time cost display.
- **OAuth-First Pivot**: Removed manual provider overrides to allow OpenCode to use active paid subscriptions (Claude Max, Gemini Advanced, ChatGPT Plus) via OAuth.
- **Minimax API**: Retained direct API key configuration for the Minimax token plan.

### 5. Power-User Tweaks & MCP Integration

- **Global Rules Engine**: Created `config/global-rules.md` to enforce high engineering standards across all sessions.
- **MCP Servers**: Integrated a curated set of servers (GitHub, Memory, Search, Sequential Thinking).
- **Custom Slash Commands**: Added native shortcuts (`/sync`, `/health`, `/push`, `/review`).

### 6. System Upgrades & TUI Customization

- **CLI Binary Upgrade**: Upgraded to `1.14.18` to fix OAuth scope bugs.
- **TUI Configuration**: Created `config/tui.json` (theme: `vitesse-dark`, animations, optimized keybinds).
- **Advanced Plugins**: Installed `@different-ai/opencode-browser` and `opencode-skills-collection`.
- **Security Guardrails**: Implemented Git `pre-push` secret scanning hook.

### 7. Memory Systems & Privacy Fallback

- **Agentic Stack Integration**: Installed `agentic-stack` via Homebrew to synchronize AI memory across tools.
- **Persistent Project Memories**: Configured `global.json` to automatically ingest a local `MEMORIES.md` file if present.
- **Local 'Privacy' Mode**: Configured `oMLX` with `llama-3.2` as a local fallback for sensitive data.
- **New Commands**: Added `/brain-init` (scaffold memory) and `/private` (offline mode).

### 8. CLI Tooling & AI Aliases

- **Modern CLI Stack**: Installed `tree`, `tokei`, `gum`, and `jq` via Homebrew.
- **AI-Optimized Aliases**: Added high-context aliases to `~/.zshrc` (e.g., `aidiff`, `aitree`, `aicontext`).
