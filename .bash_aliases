#
# Home
#
alias cfg='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

#
# Shortcuts
#
alias rr='. ~/.bash_profile'
alias g='google'
alias i='ipython'
alias i3='ipython3'
alias mm='mutmut'
alias bc='bc -l'
alias tree='tree -C'
alias p='poetry run python'
alias bs='brew services'
alias pip='python -m pip'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'


#
# Typo aliases
#
alias vmi='vim'
alias imv='vim'
alias gti='git'
alias tgi='git'


#
# Virtualenv
#
alias a='activate'
alias d='deactivate'
alias venv='python -m venv .venv && a'
alias venv38='python -m venv .venv --python python3.8 && a'
alias venv39='python -m venv .venv --python python3.9 && a'
alias venv310='python -m venv .venv --python python3.10 && a'
alias venv311='python -m venv .venv --python python3.11 && a'
alias pipenv-activate='. $(pipenv --venv)/bin/activate'
alias poetry-venv='poetry env info -p'
alias poetry-python='echo $(poetry-venv)/bin/python'
alias poetry-activate='. $(poetry-venv)/bin/activate'
alias disable-virtualenv-requirement='unset PIP_REQUIRE_VIRTUALENV'


#
# System
#
alias listen='sudo lsof -i -n -P | grep TCP | grep LISTEN'
alias sshp='ssh -o PreferredAuthentications=password -o PubkeyAuthentication=no'
alias grep='grep -I'

# Colorize ls
alias ls='ls -G'


#
# Helpers
#
alias rand='openssl rand -base64 32| head -c'
alias cdtmp='cd $(mktemp -d)'
alias ff='find . -not -path "*/\.*" -name'


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
alias cl='git clone --recurse-submodules -j8'
alias m='git switch $(git branch --list main master --format="%(refname:short)" | head -1)'
alias cleanup='git clean -fxfd'
alias gls='git ls-files'
alias gsu='git submodule update --init --recursive'
alias gsur='git submodule update --remote'
alias gsi='git submodule init'

# List of branches
alias brl="git for-each-ref --sort=-committerdate refs/remotes/origin --format='%(color:yellow)%(refname:lstrip=3)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"

alias grc='git rebase --continue'
alias grs='git rebase --skip'
alias gra='git rebase --abort'

alias ci='git commit'
alias cia='git commit --amend'
alias cian='git commit --amend --no-edit'
alias amend='git commit --amend -am'
alias co='git checkout'
alias cob='git checkout -b'
alias st='git status'
alias br='git branch'
alias dff='git diff'
alias dffc='git diff --cached'
alias add='git add'
alias pss='git push origin $(git rev-parse --abbrev-ref HEAD)'
alias pssf='git push origin -f $(git rev-parse --abbrev-ref HEAD)'

alias pll='git pull origin $(git rev-parse --abbrev-ref HEAD)'
alias pllr='git pull origin $(git rev-parse --abbrev-ref HEAD) --rebase'
alias ss='git show'
alias mrg='git merge --no-ff'
alias ll='git log --patch-with-stat'
alias gl='git log'
alias gll='git log --oneline --decorate --graph'
alias ups='git pull upstream $(git rev-parse --abbrev-ref HEAD)'
alias gg='git grep -n'
alias rst='git restore --staged'


#
# Development
#
alias devenv='pipx run tox --devenv .venv && a'
alias pytest='pytest --tb=native'
alias tto='pytest -k "not network"'
alias qa='pre-commit run --all-files'
alias pc='qa'
alias tt='pytest --disable-warnings -n0 --dist=no'

# Tox
alias t27='tox -e py27'
alias t35='tox -e py35'
alias t36='tox -e py36'
alias t37='tox -e py37'
alias t38='tox -e py38'

#
# Docker
#
alias dp27='docker run -h py27 --rm -it python:2.7 /bin/bash'
alias dp35='docker run -h py35 --rm -it python:3.5 /bin/bash'
alias dp36='docker run -h py36 --rm -it python:3.6 /bin/bash'
alias dp37='docker run -h py37 --rm -it python:3.7 /bin/bash'
alias dp38='docker run -h py38 --rm -it python:3.8 /bin/bash'
alias dp39='docker run -h py39 --rm -it python:3.9 /bin/bash'
alias dp310='docker run -h py310 --rm -it python:3.10 /bin/bash'
alias dp311='docker run -h py311 --rm -it python:3.11 /bin/bash'
alias d-c='docker-compose'
alias docker-cleanup-images='docker rmi $(docker images -f "dangling=true" -q)'
alias docker-stop-all='docker stop $(docker ps -q | awk "{print \$1}")'


# Misc
#

# Weather in current location
alias wtr='curl -s wttr.in | head -17'
alias xargs='xargs ' # aliased commands passed to xargs will be expanded
