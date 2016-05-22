# AVCapTools
A collection of scripts to aid A/V capturing on Linux.

If you have scripts you'd like to add for specific hardware, please send a pull request.

Requirements:
- `bash` for scripts.
- `mplayer` for previewing output.
- `ffmpeg` for encoding.

## Capturing and Transcoding
The capture scripts here encode to MPEG-TS files at a bitrate of 5M.
This way, for example, a two-hour NTSC capture will result in a video file that will fit on a DVD.

There are also transcoding scripts in the root directory for the various formats to create h.264 MP4 files.

## Project Structure
The `dev` directory houses subdirectories for each device.
The subdirectory names begin with the device's `lsusb` id, followed by the best name for the device.

In each device directory are scripts and a README.
The README includes general notes, as well as other names the device might be known under.

## Links
- https://ffmpeg.org/ffmpeg-filters.html
- https://ffmpeg.org/ffmpeg-formats.html
- https://linuxtv.org/wiki/index.php/Main_Page
- http://avaa.bavc.org/artifactatlas/index.php/Image_Gallery
