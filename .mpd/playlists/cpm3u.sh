#!/bin/bash

while read line; do
    echo "$line" | grep -v "^#" > /dev/null || continue
    size=`stat -c %s "${line}"`
    totalsize=$((totalsize + size/1024))
done < $1

echo "Music: $(($totalsize / 1024))M"

while read line; do
    echo "$line" | grep -v "^#" && cp -u "${line}" "$2"
done < $1
