# AVCapTools
A collection of scripts to aid A/V capturing on Linux.

If you have scripts you'd like to add for specific hardware, please send a pull request.

Requirements:
- `bash` for scripts.
- `mplayer` for previewing output.
- `ffmpeg` for encoding.

## Capturing and Transcoding
The capture scripts here encode to MPEG-TS files with a bitrate of 8MB. In order to fit a two-hour capture on a DVD, the average bitrate must be reduced to 4.5MB-5MB. Most DVD authoring software will do this for you.

There are also transcoding scripts in the root directory for the various formats to create H.264 MP4 files. The bitrate is reduced to 5MB without noticeable quality loss.

## Project Structure
The `dev` directory houses subdirectories for each device.
The subdirectory names begin with the device's vendor, followed by the `lsusb` id (with the colon replaced by a period).

In each device directory are scripts and a README.
The README includes general notes, as well as other names the device might be known under.

## Links
- https://ffmpeg.org/ffmpeg-filters.html
- https://ffmpeg.org/ffmpeg-formats.html
- https://linuxtv.org/wiki/index.php/Main_Page
- http://avaa.bavc.org/artifactatlas/index.php/Image_Gallery
