#!/bin/sh

echo "$(expr 100 - $(vmstat 1 2|tail -1|awk '{print $15}'))%"
