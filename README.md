# AVCapTools
A collection of scripts to aid A/V capturing on Linux.

If you have scripts you'd like to add for specific hardware, please send a pull request.

Requirements:
- `bash` for scripts.
- `mpv` for previewing output.
- `ffmpeg` for encoding.

## Capturing and Transcoding
The device scripts here capture MP2/MPEG2 at an average bitrate of 8Mb/s, producing an MPG of ~4GB/hr (huge and raw).

The `transcode-ntsc` script deinterlaces and compresses to AAC/x264, producing a visually identical video of ~1GB/hr (nice).

## Project Structure
The `dev` directory houses subdirectories for each device.
The subdirectory names begin with the device's vendor, followed by the `lsusb` ID (with the colon replaced by a period).

In each device directory are scripts and a README.
The README includes general notes, as well as other names the device might be known under.

## Device Health
Name|Status|Notes
-|-|-
pinnacle-1b80.e302|Great|Works out of the box. 
somagic-1c88.0007|OK|Has a support project. Requires Windows XP driver.
uvc-18ec.5850|Broken|Audio and video issues.

## Reference Links
- https://ffmpeg.org/ffmpeg-filters.html
- https://ffmpeg.org/ffmpeg-formats.html
- https://linuxtv.org/wiki/index.php/Main_Page
- https://bavc.github.io/avaa/gallery.html
