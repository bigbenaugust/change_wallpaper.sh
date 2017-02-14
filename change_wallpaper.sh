#!/bin/bash
# change_wallpaper.sh - a script to do this through cron because cinnamon has a bug and I like the feature.
FILENAME=`ls -1 /home/baugust/Pictures/wallpapers/ | shuf -n 1`
# just in case a jpeg or gif or png shows up
EXT=`echo $FILENAME | awk -F. '{print $NF}'`
cp /home/baugust/Pictures/wallpapers/$FILENAME /home/baugust/Pictures/cinnamon-wallpaper.foo
