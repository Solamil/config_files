#!/bin/bash
xrandr | grep 'HDMI-1 connected' && xrandr --output eDP-1 --off
xset dpms 0 0 0
xset -dpms
xset s off
setterm -balnk 0
