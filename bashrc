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
#alias du='du -h'
#alias df='df -h'
alias ls='ls -Gh'
alias grep='egrep --color=auto'
alias gvim='mvim'

#-------------------------------------------------------------
# Terminal colors
#-------------------------------------------------------------

GREEN="\[\033[0;32m\]"
YELLOW="\[\033[1;33m\]"
RED="\[\033[0;31m\]"
RESET='\e[0m'

#-------------------------------------------------------------
# Change the prompt color based on where we're logged in
#-------------------------------------------------------------

if [ $HOSTNAME = "Echo.local" ]
then
	export COLOR="\[\033[1;36m\]" # Green
elif [ $HOSTNAME = "Quicksilver.local" ]
then
	export COLOR="\[\033[0;31m\]" # Red
else
	export COLOR="\[\033[0m\]" # No color
fi

#-------------------------------------------------------------
# Useful environmentals
#-------------------------------------------------------------

export PS1="[\u @ $COLOR\h$RESET \W]\$> "
#export PS1="\$ "
export PATH=${PATH}:/Users/etch/android-sdk-macosx/platform-tools:/Users/etch/android-sdk-macosx/tools:/opt/subversion/bin
export LSCOLORS='Fxgxfxfxcxdxdxhbadbxbx'

# Less Colorization for Man Pages
export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
export LESS_TERMCAP_me=$'\E[0m'           # end mode
#export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
export LESS_TERMCAP_se=$'\E[38;5;255m'           # end standout-mode
export LESS_TERMCAP_so=$'\E[38;5;172m'    # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'           # end underline
export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline

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

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
