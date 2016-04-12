#!/bin/bash

# MySQL
MYSQL_HOME=/usr/local/mysql

# Path
PATH=${MYSQL_HOME}/bin:$PATH
export PATH

# Editor
EDITOR=/usr/bin/emacs
# EDITOR="/usr/local/bin/mate -w"
export EDITOR

# Nice git completion.
GIT_PS1_SHOWDIRTYSTATE=true
source ~/.git_completion
# PS1='λ(\W$(__git_ps1 "@%s")): '
# export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'
PS1='\[\033[32m\]\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '

# Git log --graph --pretty
alias glgp="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
