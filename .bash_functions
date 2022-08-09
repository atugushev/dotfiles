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

activate(){
    if [ -e ".venv/bin/activate" ]; then
        echo "Activate venv ..."
        . .venv/bin/activate
    elif [ -e "venv/bin/activate" ]; then
        echo "Activate venv ..."
        . venv/bin/activate
    elif [ -e "poetry.lock" ]; then
        echo "Activate poetry venv ..."
        poetry-activate
    elif [ -e "Pipfile.lock" ]; then
        echo "Activate pipenv venv ..."
        pipenv-activate
    fi
}

cdp() {
    project=$1
    cd ~/Projects/$project
    a
}

git-switch() {
    branch=$1
    if [[ $branch =~ ":" ]] ; then
        branch=`echo $branch | awk -F: '{print $2}'`
    fi
    git checkout $branch

}

git-co-pr() {
    branch=pr/$1
    git fetch -fu upstream refs/pull/$1/head:$branch
    git checkout $branch
    git reset --hard @
}

tmpdir() {
    dir=`mktemp -d`
    cd $dir
}

tvenv() {
    tmpdir
    ver=$1
    eval venv$ver

}

gr(){
    num=$*
    if [[ -z "$num" ]] ; then
        echo "Usage: gr [number]"
        return 1
    fi
    git rebase -i head~$num
}

lc() {
    last_command=$(fc -nl -1 | awk '{print $1}')
    eval "$last_command $@"
}
