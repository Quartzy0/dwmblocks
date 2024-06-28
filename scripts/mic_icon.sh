#!/bin/sh

case $BUTTON in
1)
  pactl set-source-mute 0 toggle || notify-send "Error occured"
  ;;
esac

if [ "$(pactl get-source-mute 0)" = "Mute: yes" ]; then
  echo "󰍭"
else
  echo ""
fi
