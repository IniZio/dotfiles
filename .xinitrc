#!/bin/bash
CMD=`xinput list | grep pointer | grep -vi 'touchpad' | grep -o 'id=[0-9][0-9]' | sed 's/id=//'`

for i in $CMD; do
    xinput set-prop $i 'Device Accel Profile' "-1"
done

xset 0 0
