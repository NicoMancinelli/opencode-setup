#!/bin/bash

# OpenCode Subscription Login Helper
# Run these commands to link your paid subscriptions via OAuth.

echo "🔐 OpenCode OAuth Subscription Setup"
echo "------------------------------------"

echo "1. GitHub Copilot (Codex Subscription)"
echo "   Command: opencode providers login -p github-copilot"
echo ""

echo "2. Anthropic (Claude Max Subscription)"
echo "   Command: opencode providers login -p anthropic -m oauth"
echo ""

echo "3. Google (Gemini Subscription / Advanced)"
echo "   Command: opencode providers login -p google -m oauth"
echo ""

echo "4. OpenAI (ChatGPT Plus Subscription)"
echo "   Command: opencode providers login -p openai -m oauth"
echo ""

echo "5. MiniMax (Token Plan)"
echo "   Command: opencode providers login -p minimax-coding-plan"
echo ""

echo "------------------------------------"
echo "Check your active logins anytime with: opencode providers list"
