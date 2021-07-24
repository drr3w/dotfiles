#-------------------------------------------------------------------------------
# File:   $HOME/.zshrc
# Author: Andrew Hersh <etch.himself@gmail.com>
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
# .oh-my-zsh specific configuration
#-------------------------------------------------------------------------------

ZSH=$HOME/.oh-my-zsh
ZSH_THEME="simple"

# how often before auto-updates occur? (in days)
export UPDATE_ZSH_DAYS=30


#-------------------------------------------------------------------------------
# plugins 
#-------------------------------------------------------------------------------
# Required for auto suggest
# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
plugins=(git tmux python golang jira zsh-autosuggestions)

export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=109'

export JIRA_URL="https://myjira.llnl.gov" # required for jira plugin

source $ZSH/oh-my-zsh.sh

#-------------------------------------------------------------------------------
# Go specifics
#-------------------------------------------------------------------------------

export GOPATH=$HOME/Code/go

#-------------------------------------------------------------------------------
# k8s stuff
#-------------------------------------------------------------------------------

export KUBECONFIG=$KUBECONFIG:$HOME/.kube/config:$HOME/.kube/kubeconfig-ss 

#-------------------------------------------------------------------------------
# User configuration
#-------------------------------------------------------------------------------

# lets set a good TERM value for when we ssh, most things dont like xterm-termite
export TERM='xterm-256color'

# This is for stats printouts like mpstat
export S_COLORS='H=31;1:I=32;22:M=35;1:N=34;1:Z=34;22'

export PATH=/home/etch/.local/bin:/usr/local/go/bin:$GOPATH:$PATH

# fix for git commait -a issue if $EDITOR is unset
export EDITOR=`which vim` 

# Sane ls colors (remove the 1 before the ; if not using transparent terminal background)
# For dark terminals
# export LS_COLORS='di=1;35:ln=1;36:so=32:pi=33:ex=1;32:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43'
# Light terminals
# export LS_COLORS='di=35:ln=33:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43'
# LS_COLORS is for linux not BSD (macOS)
export LSCOLORS='fxdxcxdxbxegedabagacad'

# colorize man pages
export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;65m'  # begin bold
export LESS_TERMCAP_me=$'\E[0m'           # end mode
export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\E[48;5;88m'    # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'           # end underline
export LESS_TERMCAP_us=$'\E[04;38;5;222m' # begin underline

export GOPATH=$HOME/Code/go
export GOBIN=$HOME/Code/go/bin
#-------------------------------------------------------------------------------
# Aliases
#-------------------------------------------------------------------------------
if ls --color=auto &> /dev/null
then
    # GNU ls
    alias ls='ls -F --color=auto'
else
    # BSD ls
    alias ls='ls -GF'
fi

alias vi='vim'
alias shazaam="curl -s https://httpbin.org/ip | grep origin | cut -d '\"' -f4 | pbcopy && echo 'IP copied to clipboard'"
alias ssh='TERM=xterm-256color ssh'
alias pivs='/usr/bin/ssh-add -s /usr/lib/ssh-keychain.dylib'
alias pive='/usr/bin/ssh-add -e /usr/lib/ssh-keychain.dylib'
alias pivl='/usr/bin/ssh-add -l'
