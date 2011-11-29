#-------------------------------------------------------------
# Source global definitions (if any)
#-------------------------------------------------------------


if [ -f /etc/bashrc ]; then
        . /etc/bashrc   # --> Read /etc/bashrc, if present.
fi

#-------------------------------------------------------------
# Aliases
#-------------------------------------------------------------

alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias h='history'
alias du='du -h'
alias ls='ls -G'
alias grep='egrep --color=auto'
alias vi='vim'
#-------------------------------------------------------------
# Useful environmentals
#-------------------------------------------------------------

export PS1="[\u @ \h: \W]\$>"
export PATH=${PATH}:/Users/etch/android-sdk-macosx/platform-tools
export LSCOLORS='Fxgxfxfxcxdxdxhbadbxbx'

#-------------------------------------------------------------
# Shell options
#-------------------------------------------------------------

shopt -s cdspell
shopt -s cdable_vars
shopt -s no_empty_cmd_completion
