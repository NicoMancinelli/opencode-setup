# AI Subscription Strategy (OAuth-First)

This setup is optimized to use your **paid consumer subscriptions** (Claude Max, Gemini Advanced, ChatGPT Plus, GitHub Copilot) via OAuth. This is the most cost-effective way as it utilizes the monthly plans you already pay for.

## 🔑 Linking Your Subscriptions

Run the login helper to connect each provider to OpenCode:

```bash
npm run login-all
```

## 1. Primary Coding: Anthropic (OAuth)

Utilizes your **Claude Max** subscription.

- **Model**: `anthropic/claude-3-7-sonnet-20250219`
- **Why**: Best-in-class coding performance included in your $20/mo plan.

## 2. Context Giant: Google Gemini (OAuth)

Utilizes your **Gemini Advanced** subscription.

- **Model**: `google/gemini-3.1-pro`
- **Why**: 1M+ context window. Perfect for "reading" your whole project at once.

## 3. Specialized Logic: OpenAI (OAuth)

Utilizes your **ChatGPT Plus** subscription.

- **Model**: `openai/o1-preview`
- **Why**: Advanced reasoning for complex architecture and planning.

## 4. Coding Specialist: GitHub Copilot (OAuth)

Utilizes your **GitHub Copilot/Codex** subscription.

- **Model**: `github-copilot/gpt-4o` (or available models)
- **Why**: Seamless integration for IDE-like behaviors.

## 5. Token Plan: MiniMax (OAuth/API)

Utilizes your **MiniMax.io** token plan.

- **Model**: `minimax-coding-plan/MiniMax-M2.7`
- **Why**: High-speed reasoning with dedicated token quotas.

---

## Maintenance

- **Check Status**: Run `opencode providers list` to see what is still logged in.
- **Switch Models**: Use the `-m` flag (e.g., `opencode run -m google/gemini-3.1-pro`).
