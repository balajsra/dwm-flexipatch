#!/usr/bin/env bash
mediaStatus=$(~/.config/dwm-flexipatch/polybar/scripts/get-media-status.sh)

if [[ "$mediaStatus" == "N/A" ]]; then
    echo "󰐎"
else
    if [[ "$mediaStatus" == "Playing" ]]; then
        echo "󰏤"
    elif [[ "$mediaStatus" == "Paused" ]]; then
        echo "󰐊"
    fi
fi
