#!/usr/bin/env bash
set -e

DIR="${1:-'./tests/'}"

FILES=$(find $DIR -name '*in*' -type f | sort -n)

for infile in $FILES; do
    outfile=$(echo $infile | sed 's/in/out/g')
    echo $infile
    if diff -b <(./sol <$infile 2>/dev/null) $outfile
    then
        echo "ACK"
    else
        echo "WA"
        exit 1
    fi
done
