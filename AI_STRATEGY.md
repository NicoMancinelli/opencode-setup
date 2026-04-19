# AI Subscription Strategy (OAuth & Direct)

This setup is optimized to use your **paid consumer subscriptions** (Claude Max, Gemini Advanced, ChatGPT Plus) via OAuth, while keeping specialized plans (MiniMax) on direct API keys.

## 🔑 Why Your Setup May Have Felt "Broken"

If you were previously seeing "Provider not found" or "API Key Required" errors despite having a subscription, it was likely because your `global.json` had **manual provider overrides**.

I have **removed these overrides**. OpenCode will now automatically use your **active OAuth sessions** if you are logged in.

## 🛠️ Linking Your Subscriptions

You MUST link your subscriptions via the browser for them to work in the CLI. Run the helper to start:

```bash
npm run login-all
```

## 1. Primary Coding: Anthropic (Claude Max)

- **Model**: `anthropic/claude-3-7-sonnet-20250219`
- **Authentication**: OAuth (included in your $20/mo plan).
- **Why**: State-of-the-art coding intelligence.

## 2. Context Giant: Google Gemini (Advanced)

- **Model**: `google/gemini-3.1-pro`
- **Authentication**: OAuth (utilizes your Gemini Advanced quota).
- **Why**: Best for large repository analysis (1M+ tokens).

## 3. Specialized Logic: OpenAI (ChatGPT Plus)

- **Model**: `openai/o1-preview` or `openai/gpt-4o`
- **Authentication**: OAuth (utilizes your ChatGPT Plus quota).

## 4. Reasoning Specialist: MiniMax.io

- **Model**: `minimax/m2.7`
- **Authentication**: **API Key** (Required).
- **Setup**: Export your key in `~/.zshrc`:
  ```bash
  export MINIMAX_API_KEY="your_key_here"
  ```

---

## Maintenance

- **Check Connections**: `opencode providers list`
- **Switch Models**: Use the `-m` flag (e.g., `opencode run -m google/gemini-3.1-pro`).
- **Cost Tracking**: Now that overrides are removed, cost tracking in the status line relies on OpenCode's internal database. If costs don't show, you can re-add them as "model overrides" without defining the whole provider.
