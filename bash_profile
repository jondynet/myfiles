export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

#export CLICOLOR=1
#export LSCOLORS=Fxbxaxdxcxegedabagacad

export PS1="\[\e[32;1m\]\W\\$ \[\e[0m\]"

export PATH=/usr/local/sbin:$PATH
#This makes sure homebrew stuff is used
export PATH=/usr/local/bin:$PATH
#Point OSX to Cellar python 
export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH

alias rm='rm -iv'
alias cp='cp -iv'
alias mv='mv -iv'

alias commsen='ssh root@commsen.cn'
alias zhack='ssh root@zhack.com'
alias mindtreepharmatech='ssh root@69.85.87.144'
