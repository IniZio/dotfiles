#!/bin/bash
ICON=$HOME/Wallpaper/locked.png
TMPBG=/tmp/screen.png
scrot /tmp/screen.png
convert $TMPBG -scale 5% -scale 2000% $TMPBG
convert $TMPBG $ICON -gravity center -composite -matte $TMPBG
i3lock -i $TMPBG
