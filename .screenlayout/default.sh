#!/bin/sh
xrandr --newmode "1280x1023"  109.00  1280 1368 1496 1712  1024 1027 1034 1063 -hsync +vsync

xrandr --addmode DVI-I-1 1280x1023

xrandr --output VGA-1 --mode 1280x1024 --pos 1280x0 --rotate normal --output TV-1 --off --output DVI-I-1 --mode 1280x1023 --pos 0x0 --rotate normal
