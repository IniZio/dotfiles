#!/bin/sh -e
ICON=$HOME/Wallpaper/locked.png
TMPBG=/tmp/screen.png
scrot $TMPBG
convert $TMPBG -scale 5% -scale 2000% $TMPBG
convert $TMPBG $ICON -gravity center -composite -matte $TMPBG
i3lock -i $TMPBG
# Turn the screen off after a delay.
sleep 60; pgrep i3lock && xset dpms force off
