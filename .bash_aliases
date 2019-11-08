alias rand='openssl rand -base64 32| head -c'

alias listen='sudo lsof -i -n -P | grep TCP | grep LISTEN'
complete -F _complete_alias listen

alias sshp='ssh -o PreferredAuthentications=password -o PubkeyAuthentication=no'
complete -F _complete_alias sshp

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
complete -F _complete_alias pss

alias pll='git pull origin $(git rev-parse --abbrev-ref HEAD)'
complete -F _complete_alias pll

alias ss='git show'
complete -F _complete_alias ss

alias mrg='git merge --no-ff'
complete -F _complete_alias mrg

alias ll='git log --patch-with-stat'
complete -F _complete_alias ll

alias tt='pytest --disable-warnings'
complete -F _complete_alias pytest

alias tto='pytest -k "not network"'

alias gl='git log'
complete -f _complete_alias gl

alias gll='git log --oneline --decorate --graph'
complete -f _complete_alias gll


alias grep='grep -I'
complete -f _complete_alias grep

alias ups='git pull upstream $(git rev-parse --abbrev-ref HEAD)'
complete -f _complete_alias ups

alias ff='find . -not -path "*/\.*" -name'
complete -f _complete_alias ff

alias g='google'
alias a='activate'
alias d='deactivate'
alias ch='docker run -it --rm --link clickhouse:clickhouse-server yandex/clickhouse-client --host clickhouse-server'
alias cc='isort -rc .; black .; flake8'
alias m='git checkout master'
alias cl='git clone'
alias rr='. ~/.bash_profile'
alias dexec='docker exec -it'
alias venv27='virtualenv .venv --python /usr/local/bin/python2.7 && a'
alias venv36='virtualenv .venv --python ~/.pyenv/versions/3.6.5/bin/python && a'
alias venv37='virtualenv .venv --python /usr/local/bin/python3.7 && a'
alias venv38='virtualenv .venv --python ~/.pyenv/versions/3.8.0/bin/python && a'
alias py27='/usr/local/bin/python2.7'
alias py35='~/.pyenv/versions/3.5.0/bin/python'
alias py36='~/.pyenv/versions/3.6.5/bin/python'
alias py37='/usr/local/bin/python3.7'
alias py38='~/.pyenv/versions/3.8.0/bin/python'
alias venv='virtualenv .venv --python /usr/local/bin/python3.7 && a'
alias dp27='docker run --rm -it python:2.7 /bin/bash'
alias dp37='docker run --rm -it python:3.7 /bin/bash'

# List of branches
alias brl="git for-each-ref --sort=-committerdate refs/remotes/origin --format='%(color:yellow)%(refname:lstrip=3)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"

# Colorize ls
alias ls='ls -G'

# Weather in current location
alias wtr='curl -s wttr.in | head -17'

# ipython
alias i='ipython'
alias i3='ipython3'

# Tox
alias devenv='tox -e py37 --devenv .venv && a'

alias gg='git grep'
complete -f _complete_alias gg


alias cdpt='cdp pip-tools'
alias cdpp='cdp pip'
alias cdd='cd ~/Downloads'
alias cdk='cd ~/Desktop'

alias grc='git rebase --continue'
alias grs='git rebase --skip'
alias gra='git rebase --abort'


alias pytest='pytest --tb=native'


alias ii="sed 's/^ *//g' | isort -"


# Theme
alias dark=". ~/.theme/dark"
alias light=". ~/.theme/light"


alias qa='pre-commit run --all-files --show-diff-on-failure'

alias v='vim'

alias pc='pre-commit run --all-files'

alias cfg='/usr/bin/git --git-dir=$HOME/.home/ --work-tree=$HOME'

alias cdtmp='cd $(mktemp -d)'

alias sw='git-switch'
