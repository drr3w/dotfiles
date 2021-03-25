#-------------------------------------------------------------------------------
# File:   $HOME/.zshrc
# Author: Andrew Hersh <etch.himself@gmail.com>
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
# .oh-my-zsh specific configuration
#-------------------------------------------------------------------------------

ZSH=$HOME/.oh-my-zsh
ZSH_THEME="simple"
DISABLE_AUTO_UPDATE="false"
ENABLE_CORRECTION="false"

# how often before auto-updates occur? (in days)
export UPDATE_ZSH_DAYS=30


#-------------------------------------------------------------------------------
# plugins 
#-------------------------------------------------------------------------------
# Required for auto suggest
# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
plugins=(git tmux python go jira zsh-autosuggestions)

export JIRA_URL="https://1mojio.atlassian.net" # required for jira plugin

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

# TODO: add some logic to set the PATH based on osx/linux
export PATH=/usr/local/share/dotnet:/usr/local/go/bin:$PATH
export LINUX_PATH='/home/etch/.local/bin':$GOPATH:$PATH:'/usr/local/go/bin'

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
alias gk="cat ~/.ssh/keys/mojioadmin.pub | pbcopy && echo 'mojioadmin pub key copied to clipboard'" 
alias ssh='TERM=xterm-256color ssh'
alias azenv='source ~/Code/.virtualenvs/azure-cli/bin/activate'

#-------------------------------------------------------------------------------
# User functions
#-------------------------------------------------------------------------------

function spectrum_ls() {
   for code in {000..255}; do
       print -P -- "$code: %{$FG[$code]%}$ZSH_SPECTRUM_TEXT%{$reset_color%}"
   done
}
