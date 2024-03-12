#!/usr/bin/env bash

set -e

for((i=1;i>0;i++))
do
    ./gen >.gin
    ./sol <.gin >.so
    ./brute <.gin >.bo
    
    if diff --tabsize=1 -b .so .bo > dontshow; then
        echo "\rACK $i"
    else
        echo "\rWA $i"
        break
    fi
done
