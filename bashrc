
### ENVIRONMENT VARIABLES ###

LOCALRC='localrc'
BLUE='\e[0;34m'
GREEN='\e[0;32m'
WHITE='\e[0m'



### EXPORTED ENVIRONMENT VARIABLES ###

export PS1="\[${BLUE}\]\t \[${GREEN}\]\h\[${WHITE}\]:\[${BLUE}\]\W \[${WHITE}\]\$ "
export HISTIGNORE="&:ls:[bf]g:history:exit" # & supresses duplicate entries
export HISTSIZE=1000
export EDITOR=vim



### ALIASES ###

# n: no swap file used
# p: gives each file its own tab
alias vim='vim -np'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias w='w|sort'
alias ls='ls -Gp'
alias ll='ls -GplhF'
alias l='ls -la'
alias cd..="cd .."
alias c="clear"
alias e="exit"
alias ..="cd .."

alias bashrc='$EDITOR ~/.bashrc; source ~/.bashrc'
alias $LOCALRC='$EDITOR ~/.$LOCALRC; source ~/.bashrc'

# development
alias ms='mojito start --context "environment:localhost"'
alias mt='mojito test app .'
alias jsl='find . -name "*.js" -print0 | xargs -0 jslint | more'
alias gs="git status"
alias gp="git pull upstream master"
alias gf='git diff '
alias gc='git commit -m '
alias gr='git svn rebase'
alias gd='git svn dcommit'
alias ga='git add '

### MISCELLANEOUS ###

# source local settings
[[ -e ~/.$LOCALRC ]] && source ~/.$LOCALRC

# vim bindings for bash
set -o vi

### Laptop SPECIFIC SETTINGS ###

if [ "$(hostname)" == 'speakspend-lm' ]; then
	. ~/.bash_laptop
fi

### Y! SPECIFIC SETTINGS ###

if [ -e /home/y/ ] || [ "$(hostname)" == 'speakspend-lm' ]; then
	. ~/.ybashrc
fi

### LOCAL BASH SETTINGS ###

if [ -f ~/.bash_local ]; then
  source ~/.bash_local
fi

export PATH=$HOME/local/bin:$PATH

