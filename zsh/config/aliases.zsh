# Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# Modern replacements
alias ls='eza'
alias ll='eza -lh --git'
alias la='eza -lah --git'
alias lt='eza --tree --level=2'
alias cat='bat'
alias du='dust'
alias find='fd'

# Safety
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# Homebrew
alias bi='brew install'
alias bu='brew update'
alias bug='brew upgrade'
alias bs='brew search'
alias bc='brew cleanup'

# Python
alias py='python3'
alias pip='pip3'

# Git
alias g='git'
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git pull'
alias gd='git diff'
alias lg='lazygit'

# Utilities
alias ff='fastfetch'
alias cls='clear'
alias reload='exec zsh'