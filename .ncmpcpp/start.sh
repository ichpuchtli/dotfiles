#!/bin/sh

# Start mpd if not already running
pidof mpd > /dev/null || mpd

ncmpcpp
