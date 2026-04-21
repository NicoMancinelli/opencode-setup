# OpenCode Setup Work Log

This file tracks all modifications and architectural changes made to this repository to keep AI agents and tools synchronized.

## Session: 2026-04-19

### 1. Dependency Management & Cleanup

- **Migrated from Bun to npm**: Deleted `bun.lock` and standardized on `package.json` with npm as the primary package manager.
- **Updated Plugins**: Upgraded `@opencode-ai/plugin` and `@kilocode/plugin` to their latest versions.
- **Automated Formatting**: Integrated `Prettier` and added an `npm run format` script for consistent configuration files.

### 2. Synchronization & Deployment

- **GitHub Repository**: Initialized Git and created [NicoMancinelli/opencode-setup](https://github.com/NicoMancinelli/opencode-setup) using the GitHub CLI.
- **Install Script**: Created `scripts/install.sh` to automate environment setup (PATH, aliases, symlinks) on new machines.
- **Sync Script**: Created `scripts/sync.sh` (via `npm run sync`) to pull latest changes and apply them in one command.
- **Health Checks**: Added `scripts/check-health.sh` to verify binary availability, plugin status, and symlink integrity.
- **CI/CD**: Added a GitHub Action (`.github/workflows/update-check.yml`) to perform weekly plugin update checks.

### 3. "True Dotfiles" Architecture

- **Global Config Versioning**: Moved the system-level config from `~/.config/opencode/opencode.json` to the repo at `config/global.json`.
- **Symlinking**: The `install.sh` script now automatically symlinks the repo config back to the system location, ensuring Git tracks all settings.

### 4. AI Subscription Strategy

- **Cost Tracking**: Manually mapped pricing data for major models (Claude 3.7, Gemini 3.1, GPT-4o) into `global.json` to enable real-time cost display in the OpenCode status line.
- **Direct Provider Optimization**: Initial strategy focused on direct API access for lowest latency.
- **OAuth Integration**: Added a `login-subscriptions.sh` helper (`npm run login-all`) to facilitate linking paid consumer subscriptions (Claude Max, Gemini Advanced, etc.) via OAuth.
- **Documentation**: Created `AI_STRATEGY.md` to guide model selection based on the 2026 landscape.

### 5. Power-User Tweaks & MCP Integration

- **Global Rules Engine**: Created `config/global-rules.md` to enforce high engineering standards across all AI sessions.
- **MCP Servers**: Integrated a curated set of Model Context Protocol (MCP) servers (GitHub, Memory, Search, Sequential Thinking).
- **Custom Slash Commands**: Added native shortcuts (`/sync`, `/health`, `/push`) to `global.json`.

### 6. System Upgrades & TUI Customization

- **CLI Binary Upgrade**: Upgraded the `opencode` CLI from `1.4.11` to `1.14.18`, resolving the "invalid scope: off" OAuth bug.
- **TUI Configuration**: Created `config/tui.json` to customize the terminal interface (theme: `vitesse-dark`, enabled animations, stretch layout).
- **Advanced Plugins**: Installed `@different-ai/opencode-browser` for agent web browsing and `opencode-skills-collection` for expanded capabilities.
- **Security Guardrails**: Implemented a Git `pre-push` hook linked to `scripts/scan-secrets.sh` to prevent accidental API key leaks.

### 8. Intelligent Agent Routing

- **Subscription Role Mapping**: Mapped specific AI subscriptions to OpenCode's internal lifecycle:
  - `plan`: OpenAI o1-preview (Highest reasoning for design).
  - `build`: Claude 3.7 Sonnet (Reliable implementation).
  - `title`, `summary`, `compaction`: MiniMax M2.7 (Fast & cost-effective background tasks).
- **Specialized Agent Personalas**: Created dedicated configurations for `Architect`, `Reviewer`, and `Explorer` to utilize the full strengths of the 2026 model landscape.
- **Git AI Automation**: Added a `/review` command to perform deep logic audits on staged changes before committing.
