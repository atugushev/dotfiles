# Bash completion
[[ -r ~/.bash_completion ]] && . ~/.bash_completion

# Personal important envs
export EDITOR=/usr/bin/vim
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export HISTCONTROL=ignoredups
export PYTHONSTARTUP=~/.pythonstartup.py
export PIP_REQUIRE_VIRTUALENV=true
export PIP_DISABLE_PIP_VERSION_CHECK=1
export COMPOSE_DOCKER_CLI_BUILD=1
export DOCKER_BUILDKIT=1

. $HOME/.bash_aliases
. $HOME/.bash_functions

# Iterm2 shell imtergration
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# Application paths
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/sbin:$PATH"

# My binaries
export PATH="$HOME/.local/bin:$PATH"

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

# Starship shell prompt
#eval "$(starship init bash)"

# Rust
. "$HOME/.cargo/env"

# Local config
[[ -r ~/.bash_local ]] && . ~/.bash_local
#eval "$(rtx activate bash)"

export TERMINFO_DIRS=$TERMINFO_DIRS:$HOME/.local/share/terminfo
#export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"
unset NO_COLOR
