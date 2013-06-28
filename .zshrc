if [ "$COLORTERM" = "rxvt" ]; then
    alsi -u -l
fi

if [ "$COLORTERM" = "xfce4-terminal" ]; then
    alsi -a
fi

if [ -z "$COLORTERM" ]; then
    alsi
fi

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

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

