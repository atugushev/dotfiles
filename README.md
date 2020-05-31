Dotfiles
=========

My personal dotfiles.

## Init

```shell
git init --bare $HOME/.dotfiles
alias cfg='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
cfg remote add origin git@github.com:atugushev/dotfiles.git
cfg commit -m "Init repo" --allow-empty
cfg push
```

## Setup a new computer

```shell
git clone --bare git@github.com:atugushev/dotfiles.git $HOME/.dotfiles
alias cfg='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
cfg checkout
```
