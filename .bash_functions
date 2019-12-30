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
        . .venv/bin/activate
    elif [ -e ".tox/.venv/bin/activate" ]; then
        . .tox/.venv/bin/activate
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

tvenv() {
    tmpdir=`mktemp -d`
    cd $tmpdir
    virtualenv $tmpdir/.venv --python=/usr/local/bin/python3.7 && a
}
