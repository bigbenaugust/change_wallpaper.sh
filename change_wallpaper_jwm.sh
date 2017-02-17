#!/bin/bash
# change_wallpaper_jwm.sh - a script to do this in jwm
# requires feh
WALLPAPERDIR=$1
INTERVAL=$2

while [ 1 ] ; do
    FILENAME=`ls -1 $WALLPAPERDIR | shuf -n 1`
    feh --no-fehbg --bg-max $WALLPAPERDIR/$FILENAME
    sleep $INTERVAL
done
