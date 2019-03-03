eval $(dircolors)

bindkey -e

autoload -Uz promptinit
promptinit
prompt adam1

HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=10000
setopt EXTENDED_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_VERIFY
setopt INC_APPEND_HISTORY_TIME

autoload -Uz compinit
compinit
setopt ALWAYS_TO_END
setopt COMPLETE_IN_WORD
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors ''
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

alias gdb='gdb -q'
alias ls='ls --color'
