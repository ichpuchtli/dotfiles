#!/bin/bash

while read line; do
    echo $line | grep -v "^#" > /dev/null || continue
    size=`stat -c %s "${line}"`
    totalsize=$((totalsize + size/1024))
done < $1

echo "Music: $(($totalsize / 1024))M"

while read line; do
    echo $line | grep -v "^#" && cp "${line}" "$2" && exit 1
done < $1
