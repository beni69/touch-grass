#!/bin/sh

GRASS_LIMIT=$1

LOG=$(git log --after="1 day ago" --pretty=oneline)
COUNT=$(echo "$LOG" | wc -l)

echo "$LOG"
echo "$COUNT"

if [ $COUNT -gt $GRASS_LIMIT ]; then
    echo "TOUCH GRASS LMAO"
else
    echo "fine for now"
fi
