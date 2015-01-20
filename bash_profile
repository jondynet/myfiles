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

# Java
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_25.jdk/Contents/Home
export JRE_HOME=${JAVA_HOME}/jre
export CLASSPATH=${JAVA_HOME}/lib:${JRE_HOME}/lib:.
export PATH=${JAVA_HOME}/bin:$PATH 

alias rm='rm -iv'
alias cp='cp -iv'
alias mv='mv -iv'

alias commsen='ssh root@commsen.cn'
alias zhack='ssh root@zhack.com'
alias mindtreepharmatech='ssh root@69.85.87.144'
