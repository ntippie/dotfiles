#!/usr/bin/env bash
set -e

# @describe Perform a web search to get up-to-date information or additional context.
# Use this when you need current information or feel a search could provide a better answer.

# @option --query! The query to search for.
# @option --max-results=3 The max number of results to return.

# @env OLLAMA_API_KEY! The api key for ollama.
# @env LLM_OUTPUT=/dev/stdout The output path

main() {
    jq -n --arg q "$argc_query" --argjson m "$argc_max_results" '{query: $q, max_results: $m}' |
        curl -fsSL 'https://ollama.com/api/web_search' \
            --header "Authorization: Bearer $OLLAMA_API_KEY" \
            -d @- |
        jq -r '.results' >>"$LLM_OUTPUT"
}

eval "$(argc --argc-eval "$0" "$@")"
