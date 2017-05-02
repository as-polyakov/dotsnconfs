export GOPATH=$HOME/dev/go
export SCALA_HOME=/usr/local/share/scala-2.11.4/
export PATH=$PATH:/opt/apache-maven-3.3.9/bin:$GOPATH/bin:$SCALA_HOME/bin
alias ll='ls -la'
if [[ ${EUID} == 0 ]] ; then
        PS1='\[\033[01;31m\]\h\[\033[01;34m\] \W \$\[\033[00m\] '
else
        PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] '
fi


##
# Your previous /Users/myst/.bash_profile file was backed up as /Users/myst/.bash_profile.macports-saved_2015-05-16_at_13:41:59
##

# MacPorts Installer addition on 2015-05-16_at_13:41:59: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

alias vim=/opt/local/bin/vim
