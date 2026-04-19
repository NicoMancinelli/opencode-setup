#!/bin/bash

# NanoGPT Model Checker
# Lists models included in your subscription and those that are currently free.

if [ -z "$NANOGPT_API_KEY" ]; then
    echo "❌ Error: NANOGPT_API_KEY is not set in your environment."
    echo "Please add 'export NANOGPT_API_KEY=\"your_key\"' to your ~/.zshrc"
    exit 1
fi

echo "🔍 Fetching NanoGPT models..."

# 1. Fetch Subscription Models (Included in your plan)
echo "--- Included in your Subscription ---"
curl -s -H "Authorization: Bearer $NANOGPT_API_KEY" \
     "https://nano-gpt.com/api/subscription/v1/models" | jq -r '.[].id' | sort

# 2. Fetch General Free Models
echo ""
echo "--- Models with ':free' status ---"
curl -s -H "Authorization: Bearer $NANOGPT_API_KEY" \
     "https://nano-gpt.com/api/v1/models?detailed=true" | \
     jq -r '.[] | select(.id | endswith(":free")) | .id' | sort

# 3. Check Balance
echo ""
echo "💰 Checking your NanoGPT Balance..."
curl -s -H "Authorization: Bearer $NANOGPT_API_KEY" \
     "https://nano-gpt.com/api/v1/balance" | jq -r '.balance' | awk '{print "Balance: $"$1}'
