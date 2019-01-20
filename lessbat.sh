#!/usr/bin/env bash
bat --paging=always --pager='bash -c "awk -v lines=$(tput lines) '"'"'{print $0;}END{for(i=NR; i<lines-1;i++)printf \"\\n\";}'"'"' | less -RF"' "$@"
