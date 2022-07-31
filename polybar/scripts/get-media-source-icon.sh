#!/bin/bash
mediaStatus=$(playerctl --player=playerctld metadata 2>&1)

if [[ "$mediaStatus" == "No player could handle this command" ]]; then
    echo "ﱙ"
else
    trackid=$(playerctl --player=playerctld metadata --format '{{ mpris:trackid }}')

    if grep -q -i "chromium" <<< "$trackid"; then
        echo ""
    elif grep -q -i "vlc" <<< "$trackid"; then
        echo "嗢"
    elif grep -q -i "spotify" <<< "$trackid"; then
        echo ""
    else
        echo "﴾"
    fi
fi
