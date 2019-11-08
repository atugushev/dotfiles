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
    activate_file=.venv/bin/activate
    if [ -e "$activate_file" ]; then
        . $activate_file
        return
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

tvenv() {
    tmpdir=`mktemp -d`
    cd $tmpdir
    virtualenv $tmpdir/.venv --python=/usr/local/bin/python3.7 && a
}
