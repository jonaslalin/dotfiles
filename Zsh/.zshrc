setopt AUTO_CD
setopt AUTO_PUSHD
setopt EXTENDED_HISTORY
setopt NO_BEEP
setopt PUSHD_IGNORE_DUPS
setopt SHARE_HISTORY

alias ls='ls -G'

alias python3=/Library/Frameworks/Python.framework/Versions/3.8/bin/python3
alias pip3=/Library/Frameworks/Python.framework/Versions/3.8/bin/pip3

typeset -U path
path=(~/.npm-global/bin $path)

export EDITOR='subl -w'

export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43'

export PGDATA=/Library/PostgreSQL/12/data
export PGUSER=postgres

autoload -U compinit
compinit
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' menu select
