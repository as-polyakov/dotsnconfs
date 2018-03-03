[ -z "$PS1" ] && return

# Uncomment to turn on programmable completion enhancements.
# Any completions you add in ~/.bash_completion are sourced last.
[[ -f /etc/bash_completion ]] && . /etc/bash_completion


# Whenever displaying the prompt, write the previous line to disk
# export PROMPT_COMMAND="history -a"

# Aliases
#
# Some people use a different file for aliases
if [ -f "${HOME}/.bash_aliases" ]; then
  source "${HOME}/.bash_aliases"
fi
# Default to human readable figures
function git_branch {
    export gitbranch=[$(git rev-parse --abbrev-ref HEAD 2>/dev/null)]
    if [ "$?" -ne 0 ]
    then gitbranch=
    fi
    if [[ "${gitbranch}" == "[]" ]]
    then gitbranch=
    fi
}

# set usercolor based on whether we are running with Admin privs
function user_color {
    id | grep "wheel" > /dev/null
    RETVAL=$?
    if [[ $RETVAL == 0 ]]; then
        usercolor="[0;35m";
    else
        usercolor="[0;32m";
    fi
}

# set TTYNAME
function ttyname() { export TTYNAME=$@; }

# Set prompt and window title
inputcolor='[0;37m'
cwdcolor='[0;34m'
gitcolor='[1;31m'

# Setup for window title
export TTYNAME=$$
function settitle() {
    p=$(pwd);
    let l=${#p}-25
    if [ "$l" -gt "0" ]; then
        p=..${p:${l}}
    fi
    printf "\e[2m[%s]" "$p"
}

PROMPT_COMMAND='user_color; git_branch; history -a;'
export PS1='\[\e${usercolor}\][\u]\[\e${gitcolor}\]${gitbranch}\[\e${cwdcolor}\][$PWD]\[\e${inputcolor}\] $ '
export PATH=$BRAZIL_CLI_BIN:$PATH
alias ssh2rds="sudo /apollo/env/RDSOperationalTools/bin/ssh2rds $1"
