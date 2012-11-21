#Append History from multiple zsh sessions, cd by name
setopt appendhistory autocd extendedglob

# Set up the prompt
autoload -Uz promptinit
promptinit
prompt walters

# Use modern completion system
autoload -Uz compinit
compinit

# Use vi keybindings 
bindkey -v

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

export EDITOR=vim

[ ! "$UID" = "0" ] && archbey -c white
[  "$UID" = "0" ] && archbey -c green

if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

source /usr/share/doc/pkgfile/command-not-found.zsh
