#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

# For dbus
if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# for terminus font in Archlinux :(
#xmodmap ~/.Xmodmap

xcompmgr &

urxvtd -q -o &

thunar --daemon &

feh --bg-scale ~/pics/arch/hyPiL.png&

conky | while read -r; do xsetroot -name "$REPLY"; done &

redshift -l -27:153 -m randr -v -g 0.8 &

xset +fp /usr/share/fonts/local/
xset fp rehash

xrdb -merge ~/.Xresources

exec ~/.dwm/start.sh
