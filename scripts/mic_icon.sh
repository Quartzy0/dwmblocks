#!/bin/sh

if [ "$(pactl get-source-mute 0)" = "Mute: yes" ]; then
  echo "󰍭"
else
  echo ""
fi

echo "checked" > ./tester