#!/bin/sh

#Stop ncmpcpp to prevent song being resumed on start up
ncmpcpp stop

# Finally kill mpd
mpd --kill
