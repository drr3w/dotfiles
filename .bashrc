#!/usr/bin/bash

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
alias cp='cp -iv'
alias h='history'
alias du='du -h'
alias df='df -h'
alias ls='ls -Gh'
alias grep='egrep --color=auto'
alias gvim='mvim'

#-------------------------------------------------------------
# Terminal colors
#-------------------------------------------------------------

GREEN="\[\033[0;32m\]"
RED="\[\033[0;31m\]"
RESET='\e[0m'

#-------------------------------------------------------------
# Change the prompt color based on where we're logged in
#-------------------------------------------------------------

if [ $HOSTNAME = "Echo.local" ]
then
	export COLOR="\[\033[0;32m\]" # Green
elif [ $HOSTNAME = "Quicksilver.local" ]
then
	export COLOR="\[\033[0;31m\]" # Red
else
	export COLOR="\[\033[0m\]" # No color
fi

#-------------------------------------------------------------
# Useful environmentals
#-------------------------------------------------------------

export PS1="[\u @ $COLOR\h$RESET: \W]\$> "
#export PS1="\$ "
export PATH=${PATH}:/Users/etch/android-sdk-macosx/platform-tools:/Users/etch/android-sdk-macosx/tools
export LSCOLORS='Fxgxfxfxcxdxdxhbadbxbx'
#-------------------------------------------------------------
# cdable_vars
#-------------------------------------------------------------

export source="~/Source"

#-------------------------------------------------------------
# Shell options
#-------------------------------------------------------------

shopt -s cdspell
shopt -s cdable_vars
shopt -s no_empty_cmd_completion
