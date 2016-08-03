# Aliases #
###########

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# zsh
alias reload!='. ~/.zshrc'
alias reload~='reload!'

# privileged access
if [ $UID -ne 0 ]; then
  alias sudo='sudo '
  alias scat='sudo cat'
  alias svim='sudo vim'
  alias svi='sudo vi'
  alias snano='sudo nano'
  alias root='sudo -s'
  alias reboot='sudo reboot'
  alias netcfg='sudo netcfg2'
fi


# colouring man/less (http://wiki.archlinux.org/index.php/Man_Page#Colored_man_pages)
export LESS_TERMCAP_mb=$(printf "\e[1;37m")
export LESS_TERMCAP_md=$(printf "\e[1;37m")
export LESS_TERMCAP_me=$(printf "\e[0m")
export LESS_TERMCAP_se=$(printf "\e[0m")
export LESS_TERMCAP_so=$(printf "\e[1;47;30m")
export LESS_TERMCAP_ue=$(printf "\e[0m")
export LESS_TERMCAP_us=$(printf "\e[0;36m")
function env() {
  exec /usr/bin/env "$@" | grep -v ^LESS_TERMCAP_
}

# make sure tmux is always run with 256 colours
alias tmux="tmux -2"

# ls
alias ls='ls -hF --color=auto'
alias lr='ls -R'                    # recursive ls
alias ll='ls -alh'
alias la='ll -A'
alias lA='ls -d .??*'               # show only hidden files
alias lx='ll -BX'                   # sort by extension
alias lz='ll -rS'                   # sort by size
alias lt='ll -rt'                   # sort by date
alias lm='la | more'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
