#!/bin/sh

CMD_OUT=$(mpstat)
PERCENT_UNUSED=$(echo "$CMD_OUT" | awk '{ if ($13 ~ /[0-9,]/) print $13}')
PERCENT_USED=$(echo "100.0 - $PERCENT_UNUSED" | sed -r 's/,/\./g' | bc) # sed is used to replace , in decimal with . because that is what bc accepts
echo "${PERCENT_USED}%"
