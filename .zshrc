alsi -l -u

#Append History from multiple zsh sessions, cd by name
setopt appendhistory autocd extendedglob

# Set up the prompt
autoload -Uz promptinit
promptinit
prompt walters

parse_git_branch ()
{
    git branch 2> /dev/null | grep "*" | sed -e 's/* \(.*\)/\1/g'
}

function precmd() {
    export PROMPT="%B%(?..[%?] )%b%n@%U$(parse_git_branch)%u> "
}

# Use vi keybindings 
bindkey -v

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

export EDITOR=vim
export BROWSER=firefox

# Use modern completion system
autoload -Uz compinit
compinit

# aliases

alias ls='ls --color=auto'
alias l='ls'
alias ll='ls -hl --group-directories-first'
alias la='ls -a'
alias lla='ls -hla'
alias grep='grep -n --color=auto'
alias del='rm -rf'
alias vi='vim'
alias tree='tree -C'
