# OpenCode Setup Work Log

This file tracks all modifications and architectural changes made to this repository to keep AI agents and tools synchronized.

## Session: 2026-04-19

### 1. Dependency Management & Cleanup

- **Migrated from Bun to npm**: Deleted `bun.lock` and standardized on `package.json` with npm as the primary package manager.
- **Updated Plugins**: Upgraded `@opencode-ai/plugin` and `@kilocode/plugin` to their latest versions (April 2026 releases).
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
- **Direct Provider Optimization**: Initial strategy focused on direct API access (Anthropic, Google, OpenAI, MiniMax) for lowest latency and maximum context.
- **OAuth Integration**: Added a `login-subscriptions.sh` helper (`npm run login-all`) to facilitate linking paid consumer subscriptions (Claude Max, Gemini Advanced, etc.) via OAuth.
- **Documentation**: Created `AI_STRATEGY.md` to guide model selection based on the 2026 landscape (e.g., favoring Gemini 3.1 Pro for 1M context tasks).

### 5. Repository Structure

- `bin/`: (Ignored) Binary storage.
- `config/`: Configuration files and examples.
- `scripts/`: Maintenance and setup utilities.
- `.github/`: CI/CD workflows.
- `WORK_LOG.md`: This file.

### 6. OAuth & Subscription Pivot

- **Removed Provider Overrides**: Deleted manual `anthropic`, `google`, and `openai` provider blocks from `global.json`. This ensures OpenCode utilizes active **OAuth sessions** (paid consumer subscriptions) rather than falling back to API keys.
- **Retained MiniMax API**: Kept the `minimax` provider configuration as it typically requires a direct API key for token plans.
- **Enhanced Model Strategy**: Updated `AI_STRATEGY.md` to prioritize OAuth-based workflows for Claude Max, Gemini Advanced, and ChatGPT Plus.
- **Login Automation**: Refined `scripts/login-subscriptions.sh` and `npm run login-all` to guide the user through interactive OAuth linking.
- **Work Log Creation**: Created `WORK_LOG.md` (this file) to maintain a persistent history of setup changes for cross-tool synchronization.

### 7. Power-User Tweaks & MCP Integration

- **Global Rules Engine**: Created `config/global-rules.md` to enforce high engineering standards (conciseness, TS-first, functional style) across all AI sessions.
- **MCP Servers**: Integrated a curated set of Model Context Protocol (MCP) servers via `npx`:
  - `github`: For repository and PR management.
  - `memory`: For persistent fact storage across sessions.
  - `google-search`: For high-quality web grounding.
  - `sequentialthinking`: To enhance complex reasoning loops.
- **Custom Slash Commands**: Added native shortcuts to `global.json` for repo maintenance:
  - `/sync`: Pull and apply latest repo changes.
  - `/health`: Run the environment health check.
  - `/push`: Quickly commit and sync setup changes to GitHub.

### 8. CLI Tooling & AI Aliases

- **Modern CLI Stack**: Installed `tree`, `tokei`, `gum`, and `jq` via Homebrew to provide the AI with better "eyes" and interactive capabilities.
- **AI-Optimized Aliases**: Added high-context aliases to `~/.zshrc` (e.g., `aidiff`, `aitree`, `aicontext`) to help AI agents map codebases with minimum tokens.
- **Context Compression**: Introduced the `aicontext` command to bundle project identity (README, structure, dependencies) for rapid agent onboarding.
