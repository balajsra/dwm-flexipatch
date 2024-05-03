#!/usr/bin/env bash
isPaused=$(dunstctl is-paused)

if [[ "$isPaused" == "true" ]]; then
    echo "󰂛"
else
    echo "󰂚"
fi
