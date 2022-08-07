#!/bin/bash
mediaStatus=$(playerctl --player=playerctld metadata 2>&1)

if [[ "$mediaStatus" == "No player could handle this command" ]]; then
    echo "ﱙ"
else
    trackid=$(playerctl --player=playerctld metadata --format '{{ mpris:trackid }}')
    title=$(playerctl --player=playerctld metadata --format '{{ xesam:title }}')

    if grep -q -i "netflix" <<< "$title"; then
        echo "ﱄ"
    elif grep -q -i "hulu" <<< "$title"; then
        echo "ﴧ"
    elif grep -q -i "prime video" <<< "$title"; then
        echo ""
    elif grep -q -i "chromium" <<< "$trackid"; then
        echo ""
    elif grep -q -i "vlc" <<< "$trackid"; then
        echo "嗢"
    elif grep -q -i "spotify" <<< "$trackid"; then
        echo ""
    else
        echo "﴾"
    fi
fi
