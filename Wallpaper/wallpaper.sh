#!/bin/sh
picOpts="zoom"

#URL='https://unsplash.it/1920/1080/\?random'
URL='https://source.unsplash.com/random/1920x1080'
#URL=$(curl -s 'https://wall.alphacoders.com/api2.0/get.php?auth=cca3ef22b757d25401524545a4981c25&method=newest&height=1080&width=1920' | jq -r '.wallpapers[0].url_image') 

curl -s -o "$HOME/Wallpaper/wallpaper-$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 10 | head -n 1).jpg" -L https://unsplash.it/1920/1080/\?random
#curl -s -o $HOME/Wallpaper/wall.jpg -L https://source.unsplash.com/random/1920x1080 
#curl -s -o $HOME/Wallpaper/wall.jpg -L $URL

#python $HOME/Wallpaper/Daily-Reddit-Wallpaper/change_wallpaper_reddit.py

randWall="$(find $HOME/Wallpaper -type f | grep '.jpg' | shuf -n 1)"
cp "$randWall" $HOME/Wallpaper/wall.jpg

#Blur Image
#convert $HOME/Wallpaper/wall.jpg -blur 0x4 $HOME/Wallpaper/wall.jpg

#Add overlay
#composite -gravity Center $HOME/Wallpaper/overlay.png $HOME/Wallpaper/wall.jpg $HOME/Wallpaper/wallpaper.jpg
cp $HOME/Wallpaper/wall.jpg $HOME/Wallpaper/wallpaper.jpg

#Set Wallpaper
#gsettings set org.gnome.desktop.background picture-uri '"file://'$HOME'/Wallpaper/wallpaper.jpg"'

#gsettings set org.gnome.desktop.screensaver picture-uri '"file://'$HOME'/Wallpaper/wallpaper.jpg"'

#feh --bg-scale "$HOME/Wallpaper/wallpaper.jpg"

#Cleanup
#rm $HOME/Wallpaper/wall.jpg
