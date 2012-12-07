#!/bin/bash

currwall=`cat ~/.config/nitrogen/currwall`
wallcount=`ls ~/.config/nitrogen/walls | wc -w`
filecount=0

if [ $1 = "--next" ]; then
    nextwall=$((currwall + 1))
elif [ $1 = "--prev" ]; then
    nextwall=$((currwall - 1))
else
    echo "Invalid Arguments"
    exit 1
fi

if [ $wallcount -eq 0 ]; then
    echo "No Walls"
    echo 2
fi

if [ $nextwall -gt $wallcount ] || [ $nextwall -lt 0 ]; then
    nextwall=0
fi

for file in ~/.config/nitrogen/walls/* 
do
    if [ "$filecount" -eq "$nextwall" ]; then
        
        img1=`head -1 $file`
        img2=`tail -1 $file`

        sed -i 's|^file.*$|file='$img1'|g' ~/.config/nitrogen/bg-saved.cfg
        sed -i 's|^file.*$|file='$img2'|g' ~/.config/nitrogen/bg-saved.cfg.night

        break

    fi

    filecount=$((filecount + 1))    

done

nitrogen --restore

echo $nextwall > ~/.config/nitrogen/currwall 
