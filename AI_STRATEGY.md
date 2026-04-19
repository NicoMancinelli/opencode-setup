# AI Subscription Strategy for OpenCode

To get the most out of your subscriptions within OpenCode, follow this tiered strategy:

## 1. Primary Workhorse: NanoGPT
Since you have a **NanoGPT subscription**, use it as your default provider. It acts as an aggregator and likely supports most of your other subscriptions (Claude, Gemini, GPT-4) through a single balance/API key.
- **Model Recommendation**: `nanogpt/claude-3.5-sonnet` for almost all coding tasks.
- **Why**: Fastest access to multiple models without managing 5 different keys.

## 2. Large Context Tasks: Gemini (Direct)
If you have a **Gemini subscription**, you likely have access to **Gemini 1.5 Pro** via Google AI Studio. 
- **Setup**: Use the `gemini` provider in `global.json` for tasks where you need to attach many large files (up to 2 million tokens).
- **Direct API**: `https://generativelanguage.googleapis.com/v1beta/openai`

## 3. High-Precision Coding: Claude Max (Direct)
While NanoGPT provides Claude, using the **Anthropic API** directly can sometimes offer better rate limits or lower latency if you have a separate API credits balance.
- **Setup**: Use the `anthropic` provider in `global.json`.

## 4. Specialized Tasks: MiniMax & Codex
- **MiniMax**: Great for specialized reasoning or as a fallback. Use the `minimax` provider with the `MiniMax-M2.7` model.
- **Codex/GPT-4o**: If you have a specific Codex or OpenAI subscription, use the `openai` provider.

---

## Required Environment Variables
Add these to your `~/.zshrc`:
```bash
export NANOGPT_API_KEY="sk-nano-..."
export MINIMAX_API_KEY="your_key"
export ANTHROPIC_API_KEY="sk-ant-..."
export GEMINI_API_KEY="your_google_ai_studio_key"
```

## How to Switch Models
You can switch models on the fly with the `-m` flag:
```bash
opencode run -m gemini/1.5-pro "Review these 50 files for bugs"
opencode run -m minimax/m2.7 "Refactor this logic"
```
