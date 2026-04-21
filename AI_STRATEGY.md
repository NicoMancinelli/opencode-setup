# AI Subscription & Power-User Strategy (April 2026)

This setup is optimized to use your **paid consumer subscriptions** (Claude Max, Gemini Advanced, ChatGPT Plus) via OAuth, while supercharging OpenCode with native plugins, MCP servers, and persistent memory.

## 🔑 Linking Your Subscriptions

Run the login helper to connect each provider to OpenCode via your browser:

```bash
npm run login-all
```

## 🛠️ Power-User Shortcuts (Slash Commands)

Use these native OpenCode commands to manage your environment:

- `/sync`: Pull latest config from GitHub and apply it.
- `/health`: Verify your binary, plugins, and symlinks.
- `/push`: Save your current setup changes to GitHub.
- `/brain-init`: Scaffold memory and initialize the Agentic Stack.
- `/private`: Switch to local offline mode for sensitive data.
- `/review`: Audit staged changes using Claude 3.7 Sonnet.

## 🧠 Project Memories

To keep the AI aligned with your architectural decisions:

1.  **Initialize**: Run `/brain-init` in a new project to create your `MEMORIES.md`.
2.  **Persistent Facts**: AI agents will automatically read `./MEMORIES.md` at the start of every session.
3.  **Cross-Tool Sync**: We use the **Agentic Stack** to ensure your project context is shared if you switch between OpenCode, Cursor, or Windsurf.

## 🔒 Privacy Mode (Offline)

For sensitive files or when working without internet:

1.  **Run Command**: `/private`
2.  **Local Model**: Uses **llama-3.2-3b** via oMLX. All processing stays on your hardware.

---

## 🚦 Recommended Model Usage

### 1. Primary Coding: Anthropic (Claude Max)

- **Model**: `anthropic/claude-3-7-sonnet-20250219`
- **Why**: State-of-the-art coding intelligence included in your $20/mo plan.

### 2. Context Giant: Google Gemini (Advanced)

- **Model**: `google/gemini-3.1-pro`
- **Why**: 1M+ context window. Perfect for "reading" entire repositories.

### 3. Specialized Logic: OpenAI (ChatGPT Plus)

- **Model**: `openai/o1-preview`
- **Why**: Advanced reasoning for complex architectural planning.

---

## Maintenance

- **Check Connections**: `opencode providers list`
- **Switch Models**: Use the `-m` flag (e.g., `opencode run -m google/gemini-3.1-pro`).
