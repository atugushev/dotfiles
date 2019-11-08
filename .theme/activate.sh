# Default theme is dark
theme=$(cat ~/.theme/current || true)
if [ "$theme" == "light" ]; then
    export CURRENT_THEME=light
else
    export CURRENT_THEME=dark
fi

# Activate theme on iTerm2
echo -ne "\033]50;SetProfile=$CURRENT_THEME\a"

# Store current theme
echo $CURRENT_THEME > ~/.theme/current

# Activate themeon Powerline
rm -f ~/.config/powerline/colorschemes/default.json
cp ~/.config/powerline/colorschemes/default.json.$CURRENT_THEME ~/.config/powerline/colorschemes/default.json
