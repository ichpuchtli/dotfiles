#!/bin/sh

# Stop ncmpcpp to prevent song being resumed on start up
ncmpcpp stop

# kill mpd
mpd --kill
