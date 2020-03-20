#-------------------------------------------------------------------------------
# File:   $HOME/.zshrc
# Author: Andrew Hersh <etch.himself@gmail.com>
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
# .oh-my-zsh specific configuration
#-------------------------------------------------------------------------------

ZSH=$HOME/.oh-my-zsh
ZSH_THEME="simple"
# DISABLE_AUTO_UPDATE="true"
ENABLE_CORRECTION="true"
export UPDATE_ZSH_DAYS=30

#-------------------------------------------------------------------------------
# plugins 
#-------------------------------------------------------------------------------
# Required for auto suggest
# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
plugins=(git tmux python go jira zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh
#-------------------------------------------------------------------------------
# Go specifics
#-------------------------------------------------------------------------------

export GOPATH=$HOME/Code/go

#-------------------------------------------------------------------------------
# User configuration
#-------------------------------------------------------------------------------

export PATH='/home/etch/.local/bin':$GOPATH:$PATH:'/usr/local/go/bin'

# fix for git commait -a issue if $EDITOR is unset
export EDITOR=`which vim` 

# Sane ls colors (remove the 1 before the ; if not using transparent terminal background)
export LS_COLORS='di=1;35:ln=1;36:so=32:pi=33:ex=1;32:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43'

# Source aliases
source ~/.dotfiles/zsh/zsh-aliases

# colorize man pages
export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;65m'  # begin bold
export LESS_TERMCAP_me=$'\E[0m'           # end mode
export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\E[48;5;88m'    # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'           # end underline
export LESS_TERMCAP_us=$'\E[04;38;5;222m' # begin underline

# JIRA config
export JIRA_URL='https://jira.moj.io'


#-------------------------------------------------------------------------------
# User functions
#-------------------------------------------------------------------------------

function spectrum_ls() {
   for code in {000..255}; do
       print -P -- "$code: %{$FG[$code]%}$ZSH_SPECTRUM_TEXT%{$reset_color%}"
   done
}
