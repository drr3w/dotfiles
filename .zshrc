#----------------------------------------------------------------------------------------------------------------------
# File:   $HOME/.zshrc
# Author: Andrew Hersh <etch.himself@gmail.com>
#----------------------------------------------------------------------------------------------------------------------

#----------------------------------------------------------------------------------------------------------------------
# .oh-my-zsh specific configuration
#----------------------------------------------------------------------------------------------------------------------

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

ZSH_THEME="simple"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
export UPDATE_ZSH_DAYS=30

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(git jira python tmux)

export JIRA_URL='https://jira.accellion.net' # URL for the JIRA zsh plugin
export PHAB_URL='https://review.pa.dev' # URL for the Phabricator server

source $ZSH/oh-my-zsh.sh

#----------------------------------------------------------------------------------------------------------------------
# User configuration
#----------------------------------------------------------------------------------------------------------------------

# Source aliases
source ~/.dotfiles/zsh/zsh-aliases

export EDITOR=`which vim` # fix for git commait -a issue if $EDITOR is unset
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin/arcanist_install/arcanist/bin"
#export TERM="screen-256color"

# colorize man pages
export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;65m'  # begin bold
export LESS_TERMCAP_me=$'\E[0m'           # end mode
export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\E[48;5;88m'    # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'           # end underline
export LESS_TERMCAP_us=$'\E[04;38;5;222m' # begin underline

#----------------------------------------------------------------------------------------------------------------------
# functions?
#----------------------------------------------------------------------------------------------------------------------

function phab() { open "$PHAB_URL/$@" }

