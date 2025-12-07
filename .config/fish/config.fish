if status is-interactive
    # Commands to run in interactive sessions can go here
end

source ~/.bash_aliases

# Application paths
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/sbin:$PATH"
export PATH="/Users/albert/.docker/bin:$PATH"
export PATH="/Users/albert/.local/bin:$PATH"

# Disable greetings
set -g fish_greeting

# https://github.com/Addisonbean/Vim-Xcode-Theme/issues/1#issuecomment-510547754
set -x SHELL /bin/bash


function t
  # usage: work 10m my custom message
  set duration (if test -n "$argv[1]"; echo "$argv[1]"; else; echo "20m"; end)
  set message 'Done!'

  # Check if message arguments are provided and set message
  set -l arg_count (count $argv)
  if test $arg_count -gt 1
    set message (string join ' ' $argv[2..-1])
  end

  timer $duration --fullscreen -n "$message"
  and osascript -e "display notification \"$message\" with title \"Timer is up\""
  and say "$message"
end


alias vv="source .venv/bin/activate.fish"
alias cbt="/opt/homebrew/share/google-cloud-sdk/bin/cbt"

bind ctrl-w backward-kill-bigword

