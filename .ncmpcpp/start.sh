#!/bin/sh

# Uncomment both lines to auto mount music storage device
#stat /run/media/sam/Storage > /dev/null && sudo mkdir -p /run/media/sam/Storage 
#mount | grep Storage > /dev/null || sudo mount -U 7C449E17449DD46C /run/media/sam/Storage

SESH=ncmpcpp

# Start mpd if not already running
pidof mpd > /dev/null || mpd

# Create new session if need be 
tmux has-session -t $SESH

if [ ! $? -eq 0 ]; then

    tmux new-session -d -s $SESH 
    tmux new-window -t $SESH 'ncmpcpp --screen browser'
    tmux split-window -h -d -p 70 -t $SESH 'ncmpcpp --screen playlist'

fi

# Select our default window
tmux select-window -t $SESH:0

# Attach to ncmpcpp session
tmux attach -t $SESH
