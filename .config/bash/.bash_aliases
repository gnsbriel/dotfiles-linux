# shellcheck shell=bash

# Aliases
alias sudo='sudo -v; sudo '  # Auto refresh sudo and expand to aliases
alias e='exit'               # Exit terminal;
alias p='pfetch'             # Run pfetch;
alias c='clear'              # Clear terminal;
alias h='history'            # View commands history;
alias ..='cd ..'             # Go back one folder;
alias wget='wget --hsts-file=$HOME/.dotfiles/.linux/.config/wget/.wget-hsts'
alias sc='shellcheck -x -o require-variable-braces'
alias ft='xdg-mime query filetype'

# enable color support and shorten some commands of ls;
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias diff='diff --color=auto'
    alias ls='ls -lah --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'
    alias ip='ip -color=auto'
    alias grep='grep --color=auto'
fi

# Add an "alert" alias for long running commands. Use like so => "sleep 10; alert";
alias alert='notify-send --urgency=critical -a "Hey, your command has finished !" -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
