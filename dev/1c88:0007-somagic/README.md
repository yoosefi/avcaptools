# 1c88:0007 Somagic, Inc.

## Also Known As
- SIIG USB 2.0 Video Capture Device JU-AV0012-S1

## Support Project
https://code.google.com/archive/p/easycap-somagic-linux

## Installation
64-bit Debian Packages
- https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/easycap-somagic-linux/somagic-easycap-tools_1.1_amd64.deb
- https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/easycap-somagic-linux/somagic-easycap_1.1_amd64.deb

You also need the 64-bit Windows XP driver `SmiUsbGrabber3C.sys`. You can get this on the CD the device comes with.
It isn't included in this repo due to copyright (sorry!)

The official instructions include the use of WINE to get the driver. You don't actually need WINE. Just locate the driver and copy it.

Then run:
```
sudo apt-get install libusb-1.0-0 libgcrypt11 mplayer usbutils
sudo dpkg -i somagic-easycap_1.1_amd64.deb

sudo apt-get install libgcrypt11
sudo dpkg -i somagic-easycap-tools_1.1_amd64.deb

sudo somagic-extract-firmware SmiUsbGrabber3C.sys
```

## Initialize to 1c88:003c
If `lsusb` says it's `1c88:0007` (no firmware), the firmware must be loaded.
Initialization will change the device ID to `1c88:003c`.

```
lsusb | grep 1c88:0007
sudo somagic-init
lsusb | grep 1c88:003c
```

This is safe to do multiple times; it does not affect the device. There is also a script here to do this for you, called `initialize`.

All scripts here automatically initialize the device.

## Notes
Interacting with the hardware requires root permissions. All scripts here use `sudo`.

This is a cheap device, and sometimes has tiny video glitches.
I am not sure if these are sync artifacts that can be remedied by increasing `--iso-transfers`.

The manual can be read via:

```
man somagic-capture
```

The preview/capture scripts here use the best sharpness options available.

Sound is currently not supported. The audio must be adapted into the microphone jack.
