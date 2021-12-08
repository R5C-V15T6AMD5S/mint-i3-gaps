#!/bin/bash

# see man zscroll for documentation of the following parameters
zscroll -l 65 \
        --delay 0.08 \
        --scroll-padding " >--< " \
        --match-command "$HOME/.config/polybar/colorblocks/scripts/get_spotify_status1.sh --status" \
        --match-text "Playing" "--scroll 1" \
        --match-text "Paused" "--scroll 0" \
        --update-check true "$HOME/.config/polybar/colorblocks/scripts/get_spotify_status1.sh" &

wait
