#!/bin/bash

VIDEO_DEVICE=($(v4l2-ctl --list-devices | awk '/Pinnacle/{getline; print}'))
v4l2-ctl -d ${VIDEO_DEVICE} -c sharpness=5,mute=0

ALSA_ID=($(cat /proc/asound/cards | grep 'USB 2861 Device'))
