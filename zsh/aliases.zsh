# Aliases #
###########

# Most aliases defined in ../shell/bash_aliases.symlink
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Reload ZSH rc file
alias reload!='. ~/.zshrc'
alias reload~='reload!'

