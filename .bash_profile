export GOPATH=$HOME
export SCALA_HOME=/usr/local/share/scala-2.11.4/
export PATH=$PATH:/opt/apache-maven-3.3.9/bin:$GOPATH/bin:$SCALA_HOME/bin
#if [[ ${EUID} == 0 ]] ; then
#        PS1='\[\033[01;31m\]\h\[\033[01;34m\] \W \$\[\033[00m\] '
#else
#        PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] '
#fi
# get current git branch name
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.
source ~/.bashrc
