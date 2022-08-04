#!/bin/bash

killall plank
killall xfce4-panel
killall dunst
killall picom

xfce4-panel &
plank &
dunst &
picom --experimental-backends &