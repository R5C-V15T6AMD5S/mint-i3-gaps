#!/usr/bin/env bash

dir="~/.config/polybar/colorblocks/scripts/rofi"

rofi_command="rofi -theme $dir/powermenu1.rasi"

# Options
scpwiki=" SCP Wiki"
creepypasta=" Creepypasta"
speedrun=" Speedrun.com"

# Variable passed to rofi
options="$scpwiki\n$creepypasta\n$speedrun"

chosen="$(echo -e "$options" | $rofi_command -p "You shouldn't have done that!" -dmenu -selected-row 0)"
case $chosen in

    $scpwiki)
		exec firefox https://scp-wiki.wikidot.com/
        ;;

    $creepypasta)
		exec firefox https://creepypasta.fandom.com/wiki/Creepypasta_Wiki
        ;;

    $speedrun)
		exec firefox https://www.speedrun.com
        ;;
esac
