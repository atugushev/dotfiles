# Auto switch to profile
theme=$(cat ~/.theme/current||true)
if [ "$theme" == "light" ]; then
    . ~/.theme/light
else
    . ~/.theme/dark
fi

# Bash completion
. /usr/local/share/bash-completion/bash_completion

# Personal important envs
export EDITOR=/usr/bin/vim
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export HISTCONTROL=ignoredups

. $HOME/.bash_aliases
. $HOME/.bash_functions

# Powerline
powerline-daemon -q
. /usr/local/lib/python3.7/site-packages/powerline/bindings/bash/powerline.sh

# Iterm2 shell imtergration
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# Application paths
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/gettext/bin:$PATH"
export PATH="/usr/local/opt/postgresql@10/bin:$PATH"
export PATH="/usr/local/opt/node@10/bin:$PATH"

# My binaries
export PATH="$HOME/Bin:$PATH"

# Console scripts installed by pip3 --user
export PATH="$HOME/Library/Python/3.7/bin:$PATH"

# pyenv setup
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# Install Ruby Gems on Mac OS X without sudo
# https://www.michaelehead.com/2016/02/06/installing-gems-without-sudo.html
export GEM_HOME="$HOME/.gem"
export PATH="$GEM_HOME/bin:$PATH"

# Scroll by word
# https://apple.stackexchange.com/a/29037
bind '"\e[5C": forward-word'
bind '"\e[5D": backward-word'
bind '"\e[1;5C": forward-word'
bind '"\e[1;5D": backward-word'
