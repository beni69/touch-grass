#!/bin/sh

GRASS_LIMIT=$1

LOG=$(git log --after="1 day ago" --pretty=oneline)
COUNT=$(echo "$LOG" | wc -l)

echo "$LOG"
echo "$COUNT"

if [ "$COUNT" -lt "$GRASS_LIMIT" ]; then
    echo "fine for now"
else
    echo "TOUCH GRASS LMAO"
fi
