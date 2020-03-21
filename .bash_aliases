#
# Home
#
alias cfg='/usr/bin/git --git-dir=$HOME/.home/ --work-tree=$HOME'

#
# Shortcuts
#
alias rr='. ~/.bash_profile'
alias g='google'
alias i='ipython'
alias i3='ipython3'


#
# Virtualenv
#
alias a='activate'
alias d='deactivate'
alias venv='virtualenv .venv --python python3.8 && a'
alias venv27='virtualenv .venv --python python2.7 && a'
alias venv35='virtualenv .venv --python python3.5 && a'
alias venv36='virtualenv .venv --python python3.6 && a'
alias venv37='virtualenv .venv --python python3.7 && a'
alias venv38='virtualenv .venv --python python3.8 && a'
alias pipenv-activate='. $(pipenv --venv)/bin/activate'


#
# System
#
alias listen='sudo lsof -i -n -P | grep TCP | grep LISTEN'
complete -F _complete_alias listen

alias sshp='ssh -o PreferredAuthentications=password -o PubkeyAuthentication=no'
complete -F _complete_alias sshp

alias grep='grep -I'
complete -f _complete_alias grep

# Colorize ls
alias ls='ls -G'


#
# Helpers
#
alias rand='openssl rand -base64 32| head -c'
alias cdtmp='cd $(mktemp -d)'

alias ff='find . -not -path "*/\.*" -name'
complete -f _complete_alias ff


#
# Navigation
#
alias cdpt='cdp pip-tools'
alias cdpp='cdp pip'
alias cdd='cd ~/Downloads'
alias cdk='cd ~/Desktop'
alias cdw='cd ~/Work'


#
# Git
#
alias sw='git-switch'
alias cl='git clone'
alias m='git checkout master'
alias cleanup='git clean -fxfd'
alias gls='git ls-files'

# List of branches
alias brl="git for-each-ref --sort=-committerdate refs/remotes/origin --format='%(color:yellow)%(refname:lstrip=3)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"

alias grc='git rebase --continue'
alias grs='git rebase --skip'
alias gra='git rebase --abort'

alias ci='git commit'
complete -F _complete_alias ci

alias cia='git commit --amend'
complete -F _complete_alias cia

alias amend='git commit --amend -am'
complete -F _complete_alias amend

alias co='git checkout'
complete -F _complete_alias co

alias st='git status'
complete -F _complete_alias st

alias br='git branch'
complete -F _complete_alias br

alias dff='git diff'
complete -F _complete_alias dff

alias dffc='git diff --cached'
complete -F _complete_alias dffc

alias add='git add'
complete -F _complete_alias add

alias pss='git push origin $(git rev-parse --abbrev-ref HEAD)'
alias pssf='git push origin -f $(git rev-parse --abbrev-ref HEAD)'

alias pll='git pull origin $(git rev-parse --abbrev-ref HEAD)'
complete -F _complete_alias pll

alias ss='git show'
complete -F _complete_alias ss

alias mrg='git merge --no-ff'
complete -F _complete_alias mrg

alias ll='git log --patch-with-stat'
complete -F _complete_alias ll

alias gl='git log'
complete -f _complete_alias gl

alias gll='git log --oneline --decorate --graph'
complete -f _complete_alias gll

alias ups='git pull upstream $(git rev-parse --abbrev-ref HEAD)'
complete -f _complete_alias ups

alias gg='git grep'
complete -f _complete_alias gg

alias rst='git restore --staged'
complete -f _complete_alias rst

#
# Development
#
alias devenv='tox -e py37 --devenv .tox/.venv && a'
alias pytest='pytest --tb=native'
alias tto='pytest -k "not network"'
alias qa='pre-commit run --all-files'
alias pc='qa'

alias tt='pytest --disable-warnings'
complete -F _complete_alias pytest


#
# Docker
#
alias dp27='docker run --rm -it python:2.7-slim /bin/bash'
alias dp35='docker run --rm -it python:3.5-slim /bin/bash'
alias dp36='docker run --rm -it python:3.6-slim /bin/bash'
alias dp37='docker run --rm -it python:3.7-slim /bin/bash'
alias dp38='docker run --rm -it python:3.8-slim /bin/bash'
alias d-c='docker-compose'; complete -f _complete_alias rst


#
# Theme
#
alias dark="echo dark > ~/.theme/current && . ~/.theme/activate.sh"
alias light="echo light > ~/.theme/current && . ~/.theme/activate.sh"


# Misc
#

# Weather in current location
alias wtr='curl -s wttr.in | head -17'
