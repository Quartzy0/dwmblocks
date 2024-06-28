#!/bin/sh

killall -q dwmblocks; dwmblocks &
BLOCKS_PID=$!
echo -n "$BLOCKS_PID" > ~/.local/etc/.dwmblocks.pid
