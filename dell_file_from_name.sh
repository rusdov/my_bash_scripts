#!/bin/bash
DIR="$HOME/my files"
cd "$DIR"
cat ../list.txt | while read
do
    rm -Rf "$REPLY"
done
