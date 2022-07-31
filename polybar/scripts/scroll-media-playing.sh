#!/bin/bash
zscroll \
    --length $(xrdb -get polybar.maxlen) \
    --delay 0.2 \
    --scroll-padding " | " \
    --match-command "`dirname $0`/get-media-status.sh" \
    --match-text "Playing" "--scroll 1" \
    --match-text "Paused" "--scroll 0" \
    --update-check true "`dirname $0`/get-media-playing.sh" &

wait
