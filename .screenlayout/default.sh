#!/bin/sh

xrandr --newmode "1280x1080" 115.00 1280 1368 1496 1712 1080 1083 1093 1120 -hsync +vsync

xrandr --addmode DVI-I-1 1280x1080

xrandr --output VGA-1 --mode 1920x1080 --pos 1280x0 --rotate normal --output TV-1 --off --output DVI-I-1 --mode 1280x1080 --pos 0x0 --rotate normal
