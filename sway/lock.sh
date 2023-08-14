#!/bin/sh
LOCK="swaylock"
pgrep -x "$LOCK"
if [ $? -ne 0 ]
then
swaymsg "input * xkb_layout 'us'"
swayidle \
    timeout 10 'swaymsg "output * dpms off"' \
    resume 'swaymsg "output * dpms on"' &
swaylock -C ~/.config/swaylock/config; killall swayidle; swaymsg "input * xkb_layout 'us,ua'"
fi


kill %%
