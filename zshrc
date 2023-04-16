alias gs="git status"
alias gal="git add ."
alias gg="git commit -a -m '( ͡❛ ͜ʖ ͡❛)'" 
alias gp="git push"

gpt() {
  user_query="$1"

  json='{"model": "gpt-3.5-turbo", "messages": [{"role": "user", "content": "'"$user_query"'"}]}'
  response=$(curl -s -X POST https://api.openai.com/v1/chat/completions \
    -H "Content-Type: application/json" \
    -H "Authorization: Bearer $OPENAI_API_KEY" \
    -d "$json")

  echo "$response" | jq -r '.choices[0].message.content'
}

echo -e "\e[5m\e[33m\e[1mNow THIS is pod racing!\e[0m\e[25m"
