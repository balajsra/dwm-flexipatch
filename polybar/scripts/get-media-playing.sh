#!/usr/bin/env bash
mediaStatus=$(playerctl --player=playerctld metadata 2>&1)

if [[ "$mediaStatus" == "No player could handle this command" ]]; then
        echo "N/A"
else
        artist=$(playerctl --player=playerctld metadata --format '{{ artist }}')
        title=$(playerctl --player=playerctld metadata --format '{{ title }}')

        if [[ $artist == "" ]]; then
            artist="N/A"
        fi

        if [[ $title == "" ]]; then
            title="N/A"
        fi

        echo "󰝚 $title | 󰠃 $artist"
fi
