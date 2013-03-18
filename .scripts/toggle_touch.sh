#!/bin/sh

TOUCHPADSTATUS=`synclient | grep TouchpadOff | egrep -o "[0-9]"`

if [ "$TOUCHPADSTATUS" -eq "1" ]; then
    synclient TouchpadOff=0
else
    synclient TouchpadOff=1
fi
