# 1b80:e302 Pinnacle Dazzle DVC 90/100/101/107

This device is fully functional.

## Also Known As
- Afatech
- Roxio EasyVHStoDVD
- Roxio Easy VHS to DVD
- Roxio Video Capture USB UB315-E

## Scripts
- `info` prints basic information
- `select` choose input and signal type. run without arguments for help.
- `preview` watch what would be captured
- `capture` record to an MPEG2 file. run without arguments for help.
- `debug` prints verbose information

## Troubleshooting
This device can be fussy. It sometimes likes to dump out garbage (green, monochrome, scrambled).
The device might also start responding very slowly.

For color issues, try stopping the tape, rewinding all the way, and playing again.

Otherwise, unplug it. Then:

```
sudo rmmod e28xx_v4l
sudo rmmod e28xx_alsa
sudo rmmod e28xx
```

And then plug it back in.

## Links
- https://www.linuxtv.org/wiki/index.php/Pinnacle
