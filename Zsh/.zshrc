setopt AUTO_CD
setopt EXTENDED_HISTORY
setopt NO_BEEP
setopt SHARE_HISTORY

alias ls='ls -G'

typeset -U path
path=(~/.npm-global/bin $path)

export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43'

export PGDATA=/Library/PostgreSQL/12/data
export PGUSER=postgres

autoload -U compinit
compinit
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' menu select
