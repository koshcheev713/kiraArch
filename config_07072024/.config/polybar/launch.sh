#!/bin/bash

killall -q polybar

while grep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar kiraBar &

echo "Polybar start succesful!"
