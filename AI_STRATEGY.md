# AI Subscription & Power-User Strategy

This setup is optimized to use your **paid consumer subscriptions** (Claude Max, Gemini Advanced, ChatGPT Plus) via OAuth, while supercharging OpenCode with native plugins and MCP servers.

## 🔑 Linking Your Subscriptions

Run the login helper to connect each provider:

```bash
npm run login-all
```

## 🛠️ Power-User Shortcuts (Slash Commands)

Use these native OpenCode commands to manage your setup:

- `/sync`: Pull latest config from GitHub and apply it.
- `/health`: Verify your binary, plugins, and symlinks.
- `/push`: Save your current setup changes to GitHub.

## 🧠 Model Context Protocol (MCP)

The following "hands" are enabled for your AI:

1. **GitHub**: Manage issues, PRs, and repos directly. Requires `GITHUB_TOKEN` in `~/.zshrc`.
2. **Google Search**: Grounding via actual web data. Requires `GOOGLE_SEARCH_API_KEY`.
3. **Memory**: Persistent storage of project facts across different chat sessions.
4. **Sequential Thinking**: Special reasoning tool that helps the AI "pause and think" through complex logic.

## 📜 Engineering Standards

Your AI now follows **[Global Rules](./config/global-rules.md)**. It will default to:

- TypeScript-first development.
- Functional programming patterns.
- Concise, high-precision responses.

---

## Maintenance

- **Check Connections**: `opencode providers list`
- **Switch Models**: Use the `-m` flag (e.g., `opencode run -m google/gemini-3.1-pro`).
