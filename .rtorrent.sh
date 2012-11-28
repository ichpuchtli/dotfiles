#!/bin/sh

# Start tmux server if not already running
pidof tmux || tmux start

# Create new session if need be 
if ! tmux has-session -t rtorrent; then
    tmux new -d -s rtorrent 'rtorrent'
    tmux select-window -t rtorrent:0
    tmux split-window -v -d 'man rtorrent'
fi

# Attach to rtorrent session
tmux attach -t rtorrent
