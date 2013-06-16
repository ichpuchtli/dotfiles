#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

# for terminus font in Archlinux :(

#xmodmap ~/.Xmodmap

guake &

xcompmgr &

urxvtd -q -o &

feh --bg-scale ~/pics/arch/hyPiL.png&

conky | while read -r; do xsetroot -name "$REPLY"; done &

xset +fp /usr/share/fonts/local/
xset fp rehash

xrdb -merge ~/.Xresources

exec ~/.dwm/start.sh
