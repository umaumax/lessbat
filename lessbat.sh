#!/usr/bin/env bash
# for bat 0.7.0 (bat 0.9.0 OK)
BAT_PAGER='bash -c "awk -v lines=$(tput lines) '"'"'{print $0;}END{for(i=NR; i<lines-1;i++)printf \"\\n\";}'"'"' | less -RF"' bat --paging=always "$@"

# for bat 0.9.0
# bat --paging=always --pager='bash -c "awk -v lines=$(tput lines) '"'"'{print $0;}END{for(i=NR; i<lines-1;i++)printf \"\\n\";}'"'"' | less -RF"' "$@"
