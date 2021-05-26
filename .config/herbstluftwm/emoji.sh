ls ~/.emojis/ | sed -n 's/\.png$//p' | rofi -dmenu -p emoji -theme slate | .config/herbstluftwm/copy_emoji.sh
