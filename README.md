# ABANDONED

Use OBS for Linux, it's mature now, and can do nvenc.

I'll keep these hacks up for posterity.

# AVCapTools
A collection of scripts to aid A/V capturing on Linux.

If you have scripts you'd like to add for specific hardware, please send a pull request.

**HARDWARE DONATIONS ARE WELCOME**

Requirements:
- `bash`
- `ffmpeg`
- `mpv`
- `v4l-utils`

## Capturing and Transcoding
The device scripts here capture from A/V input devices to MP4 (8Mbps MPEG2 / 128kbps AAC), using ~4GB of disk space per hour of content.

The `transcode-ntsc` script deinterlaces and compresses captured files to a virtually identical MKV (x264), using ~1GB of disk space per hour of content.

## Project Structure
The `dev` directory houses subdirectories for each device.
The subdirectory names begin with the device's vendor, followed by the `lsusb` ID (with the colon replaced by a period).

In each device directory are scripts and a README.
The README includes general notes, as well as other names the device might be known under.

## Device Health
Device|Status|Notes
-|-|-
pinnacle-1b80.e302|Great|Works out of the box. 
somagic-1c88.0007|OK|Has a support project. Requires Windows XP driver. **UNMAINTAINED**
uvc-18ec.5850|Broken|Audio and video issues. **UNMAINTAINED**

## Reference Links
- https://ffmpeg.org/ffmpeg-filters.html
- https://ffmpeg.org/ffmpeg-formats.html
- https://linuxtv.org/wiki/index.php/Main_Page
- https://bavc.github.io/avaa/gallery.html
