#!/bin/bash

killall vala-panel
killall plank
killall xfce4-panel

vala-panel &
plank &