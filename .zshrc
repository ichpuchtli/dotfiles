#Append History from multiple zsh sessions, cd by name
setopt appendhistory autocd extendedglob

# Set up the prompt
autoload -Uz promptinit
promptinit
prompt walters

# Use vi keybindings 
bindkey -v

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history


[ ! "$UID" = "0" ] && archbey -c white
[  "$UID" = "0" ] && archbey -c green

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

source /usr/share/doc/pkgfile/command-not-found.zsh

man() {
        env \
                LESS_TERMCAP_mb=$(printf "\e[1;31m") \
                LESS_TERMCAP_md=$(printf "\e[1;31m") \
                LESS_TERMCAP_me=$(printf "\e[0m") \
                LESS_TERMCAP_se=$(printf "\e[0m") \
                LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
                LESS_TERMCAP_ue=$(printf "\e[0m") \
                LESS_TERMCAP_us=$(printf "\e[1;32m") \
                        man "$@"
}

export EDITOR=vim

export C_INCLUDE_PATH=/usr/include/i386-linux-gnu
export CPLUST_INCLUDE_PATH=$C_INCLUDE_PATH
export LIBRARY_PATH=/usr/lib/i386-linux-gnu

export TOSROOT=/home/sam/src/tinyos-main-wsn-course
export TOSDIR=$TOSROOT/tos
export PATH=$PATH:$TOSROOT/support/sdk/c/sf
export CLASSPATH=$TOSROOT/support/sdk/java/tinyos.jar
export PYTHONPATH=$PYTHONPATH:$TOSROOT/support/sdk/python
export MAKERULES=$TOSROOT/support/make/Makerules


export PATH=$PATH:$HOME/src/gcc-arm-none-eabi/bin

