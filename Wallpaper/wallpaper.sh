#!/bin/sh
picOpts="zoom"

curl -s -o $HOME/Wallpaper/wall.jpg -L https://unsplash.it/1920/1080/\?random

#Blur Image
#convert $HOME/Wallpaper/wall.jpg -blur 0x4 $HOME/Wallpaper/wall.jpg

#Add overlay
#composite -gravity Center $HOME/Wallpaper/overlay.png $HOME/Wallpaper/wall.jpg $HOME/Wallpaper/wallpaper.jpg
cp $HOME/Wallpaper/wall.jpg $HOME/Wallpaper/wallpaper.jpg

#Set Wallpaper
gsettings set org.gnome.desktop.background picture-uri '"file://'$HOME'/Wallpaper/wallpaper.jpg"'

gsettings set org.gnome.desktop.screensaver picture-uri '"file://'$HOME'/Wallpaper/wallpaper.jpg"'

#Cleanup
#rm $HOME/Wallpaper/wall.jpg
