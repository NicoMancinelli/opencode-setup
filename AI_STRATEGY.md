# AI Subscription Strategy for OpenCode (Direct Setup)

This guide outlines how to use your direct AI subscriptions with OpenCode for maximum performance and context.

## 1. Primary Coding: Anthropic (Claude 3.5 Sonnet)

Use **Anthropic Direct** for your day-to-day coding. Claude 3.5 Sonnet is currently the gold standard for code generation and refactoring.

- **Model**: `anthropic/claude-3.5-sonnet`
- **Why**: Best reasoning/code quality balance. Direct access ensures lowest latency.

## 2. Large Codebase Analysis: Google Gemini 3.1 Pro

Use **Google Direct** when you need to process massive amounts of data or entire repositories.

- **Model**: `google/gemini-3.1-pro`
- **Why**: 1 million token context window. Superior for high-reasoning tasks across multiple files.

## 3. Specialized Reasoning: OpenAI (o1-preview / GPT-4o)

Use **OpenAI Direct** for tasks where you need specific OpenAI behaviors or the latest o1 reasoning models.

- **Model**: `openai/o1-preview` or `openai/gpt-4o`
- **Why**: o1 is excellent for complex logic puzzles and architectural planning.

## 4. MiniMax Reasoning: MiniMax.io

Use **MiniMax** as a high-performance alternative for reasoning tasks.

- **Model**: `minimax/m2.7`
- **Why**: Specialized reasoning performance, useful for diverse perspectives on complex problems.

---

## Required Environment Variables

Add these to your `~/.zshrc`:

```bash
export ANTHROPIC_API_KEY="sk-ant-..."
export GEMINI_API_KEY="your_google_ai_studio_key"
export OPENAI_API_KEY="sk-..."
export MINIMAX_API_KEY="your_minimax_key"
```

## How to Switch Models

Use the `-m` flag to jump between providers based on your task:

```bash
# For a quick code fix
opencode run -m anthropic/claude-3.5-sonnet "Fix this bug"

# For analyzing a whole folder
opencode run -m google/gemini-3.1-pro "Explain how this architecture works"

# For deep architectural logic
opencode run -m openai/o1-preview "Design a migration strategy for this database"
```
