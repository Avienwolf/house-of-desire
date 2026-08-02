# ============================================================
# Powerlevel10k Instant Prompt (keep at top)
# ============================================================

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ============================================================
# PATH
# ============================================================

path=(
  /opt/homebrew/bin
  /opt/homebrew/sbin
  $path
)

export PATH

# ============================================================
# Environment
# ============================================================

export EDITOR="code --wait"
export VISUAL="$EDITOR"

export PAGER="bat"
export BAT_THEME="OneHalfDark"

export GIT_PAGER="delta"

# ============================================================
# Shell Options
# ============================================================

setopt AUTO_CD
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_SILENT

setopt APPEND_HISTORY
setopt SHARE_HISTORY

setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt HIST_FIND_NO_DUPS
setopt HIST_EXPIRE_DUPS_FIRST

setopt COMPLETE_IN_WORD
setopt EXTENDED_GLOB
setopt INTERACTIVE_COMMENTS

setopt NO_BEEP

# ============================================================
# History
# ============================================================

HISTFILE="$HOME/.zsh_history"
HISTSIZE=100000
SAVEHIST=100000

# ============================================================
# Colours
# ============================================================

autoload -Uz colors
colors

# ============================================================
# Completion
# ============================================================

autoload -Uz compinit

if [[ -n ~/.zcompdump(#qN.mh+24) ]]; then
  compinit
else
  compinit -C
fi

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# ============================================================
# fzf
# ============================================================

[[ -f ~/.fzf.zsh ]] && source ~/.fzf.zsh

export FZF_DEFAULT_COMMAND='fd --type f --hidden --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

export FZF_CTRL_T_OPTS="
--preview 'bat --style=numbers --color=always {}'
"

export FZF_ALT_C_COMMAND='fd --type d --hidden --exclude .git'

export FZF_ALT_C_OPTS="
--preview 'eza --tree --level=2 --color=always {}'
"

# ============================================================
# zoxide
# ============================================================

eval "$(zoxide init zsh)"

# ============================================================
# atuin
# ============================================================

eval "$(atuin init zsh)"

# ============================================================
# Plugins
# ============================================================

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

# ============================================================
# User Configuration
# ============================================================

[[ -f ~/.config/zsh/aliases.zsh ]] && source ~/.config/zsh/aliases.zsh
[[ -f ~/.config/zsh/functions.zsh ]] && source ~/.config/zsh/functions.zsh

# ============================================================
# Prompt
# ============================================================

source ~/.powerlevel10k/powerlevel10k.zsh-theme
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh