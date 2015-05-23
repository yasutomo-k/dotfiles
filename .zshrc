autoload -Uz compinit
compinit

autoload colors
colors

local p_cdir="%B%F{blue}[%~]%f%b"$'\n'
local p_info="%n@%m"
local p_mark="%B%(?,%F{green},%F{red})%(!,#,>)%f%b"
PROMPT=" $p_cdir$p_info $p_mark "


HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

setopt hist_ignore_dups
setopt share_history

alias ls="ls --color"

