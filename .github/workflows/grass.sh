#!/bin/sh

GRASS_LIMIT=3

COUNT=$(git log --after=yesterday --pretty=oneline | wc -l)

if [ COUNT -gt GRASS_LIMIT ]; then
    echo "TOUCH GRASS LMAO"
fi
