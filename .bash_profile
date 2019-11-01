# Auto switch to profile
theme=$(cat ~/.theme/current||true)
if [ "$theme" == "light" ]; then
    source ~/.theme/light
else
    source ~/.theme/dark
fi

. /usr/local/share/bash-completion/bash_completion

export EDITOR=/usr/bin/vim
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

. /Users/albert/.bash_aliases

# Powerline
powerline-daemon -q
. /usr/local/lib/python3.7/site-packages/powerline/bindings/bash/powerline.sh

activate(){
    activate_file=.venv/bin/activate
    if [ -e "$activate_file" ]; then
        . $activate_file
        return
    fi
}

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

export PATH="/usr/local/sbin:$PATH"
export HISTCONTROL=ignoredups
export PIPENV_VENV_IN_PROJECT="1"
export PATH="/usr/local/opt/gettext/bin:$PATH"
export PATH="/usr/local/opt/postgresql@10/bin:$PATH"
export PATH="/Users/albert/Projects/bin:$PATH"

# Console scripts installed by pip3 --user
export PATH="/Users/albert/Library/Python/3.7/bin:$PATH"

# pyenv integration
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi


# Install Ruby Gems on Mac OS X without sudo
# https://www.michaelehead.com/2016/02/06/installing-gems-without-sudo.html
export GEM_HOME=/Users/albert/.gem
export PATH="$GEM_HOME/bin:$PATH"


# Scroll by word
# https://apple.stackexchange.com/a/29037
bind '"\e[5C": forward-word'
bind '"\e[5D": backward-word'
bind '"\e[1;5C": forward-word'
bind '"\e[1;5D": backward-word'


FAV_BROWSER="Safari"

google(){
    open -a $FAV_BROWSER "https://google.com/search?q=$*"
}

dict(){
    open -a $FAV_BROWSER "https://dictionary.cambridge.org/dictionary/english/$*"
}

gh-url(){
    echo https://`git remote -v | egrep '(upstream|origin)' | sort -r | head -1 | awk '{print $2}' | awk -F@ '{print $2}' | tr ':' '/' | rev | cut -c5- | rev`
}

gh-ci(){
    url=`gh-url`
    commit=$*
    open -a $FAV_BROWSER "$url/commit/$commit"
}

gh-issue(){
    url=`gh-url`
    number=$*
    open -a $FAV_BROWSER "$url/issues/$number"
}


cdp() {
    project=$1
    cd ~/Projects/$project
    a
}

alias p='cdp pip'
alias pt='cdp pip-tools'


git-switch() {
    branch=$1
    if [[ $branch =~ ":" ]] ; then
        branch=`echo $branch | awk -F: '{print $2}'`
    fi
    git checkout $branch

}
alias sw='git-switch'
export PATH="/usr/local/opt/node@10/bin:$PATH"


tvenv() {
    tmpdir=`mktemp -d`
    cd $tmpdir
    virtualenv $tmpdir/.venv --python=/usr/local/bin/python3.7 && a
}


