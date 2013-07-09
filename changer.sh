#!/bin/bash

cd ~/Pictures
while [  1 ]; do
    COUNTER=0
    while [  $COUNTER -lt 60 ]; do
        wget http://www.opentopia.com/images/data/sunlight/world_sunlight_map_rectangular.jpg -O world.jpg
        temp=$(stat -c%s world.jpg)
        if [[ $temp > 1000 ]]
            then mv world.jpg world_sunlight_Wallpaper.jpg
				break
		fi
		sleep 5
        	let COUNTER=COUNTER+1 
	done
	sleep 3600
    gsettings set org.gnome.desktop.background picture-uri "file:///home/maf/Pictures/world_sunlight_Wallpaper.jpg"
    echo "Done\n"
done
