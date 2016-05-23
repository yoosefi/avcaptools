#!/bin/bash

# sourced

VIDEO_DEVICE=$(v4l2-ctl --list-devices | awk '/USB2\.0 PC CAMERA/{getline; print}' | xargs)
v4l2-ctl -d "${VIDEO_DEVICE}" -c sharpness=50
v4l2-ctl -d /dev/video0 -c power_line_frequency=2

ALSA_ID=$(cat /proc/asound/cards | grep -m 1 'USB2.0 PC CAMERA' | xargs | cut -f1 -d' ')
ALSA_DEVICE="hw:${ALSA_ID},0"
