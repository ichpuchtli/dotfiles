#!/bin/sh

# Uncomment both lines to auto mount music storage device
#stat /run/media/sam/Storage > /dev/null && sudo mkdir -p /run/media/sam/Storage 
#mount | grep Storage > /dev/null || sudo mount -U 7C449E17449DD46C /run/media/sam/Storage

# Start mpd if not already running
pidof mpd > /dev/null || mpd

# Start ncmpcpp
ncmpcpp --screen playlist
