#!/bin/bash
mediaStatus=$(/home/sravan/.config/dwm-flexipatch/polybar/scripts/get-media-status.sh)

if [[ "$mediaStatus" == "N/A" ]]; then
    echo "懶"
else
    if [[ "$mediaStatus" == "Playing" ]]; then
        echo ""
    elif [[ "$mediaStatus" == "Paused" ]]; then
        echo "契"
    fi

    echo $status
fi
