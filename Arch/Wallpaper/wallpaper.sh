#!/bin/sh

# Directory containing my wallpaper 
WALLPAPER_DIR="/home/SabaNasser/wallpaper"

# Selecting random wallpaper
WALLPAPER=$(find "$WALLPAPER_DIR" -type f -name "*jpg" | shuf -n 1)

# Set the wallpaper using feh 

echo $WALLPAPER


hyprctl hyprpaper unload all
hyprctl hyprpaper preload "$WALLPAPER"
hyprctl hyprpaper wallpaper "eDP-1, $WALLPAPER"

# Apply Pywal to the new wallpaper
wal -i "$WALLPAPER"


