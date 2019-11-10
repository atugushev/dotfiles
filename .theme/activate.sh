DEFAULT_THEME="dark"

# Get the current theme
current_theme_filename="$HOME/.theme/current"
if [ -f $current_theme_filename ] ; then
    export CURRENT_THEME=$(cat $current_theme_filename)
else
    export CURRENT_THEME=$DEFAULT_THEME
    echo $CURRENT_THEME > $current_theme_filename
fi

# Activate theme on iTerm2
echo -ne "\033]50;SetProfile=$CURRENT_THEME\a"

# Activate themeon Powerline
rm -f ~/.config/powerline/colorschemes/default.json
cp ~/.config/powerline/colorschemes/default.json.$CURRENT_THEME ~/.config/powerline/colorschemes/default.json
