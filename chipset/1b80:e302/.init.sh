# sourced

VIDEO_DEVICE=$(v4l2-ctl --list-devices | awk '/Pinnacle/{getline; print}' | xargs)
v4l2-ctl -d ${VIDEO_DEVICE} -c sharpness=5
