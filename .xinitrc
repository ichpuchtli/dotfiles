#!/bin/bash
export BROWSER=chromium
export DE=openbox
exec dbus-launch openbox-session
xset +fp /usr/share/fonts/local
xset fp rehash
