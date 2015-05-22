autoload -Uz compinit
compinit

autoload colors


HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

setopt hist_ignore_dups
setopt share_history

alias ls="ls --color"

