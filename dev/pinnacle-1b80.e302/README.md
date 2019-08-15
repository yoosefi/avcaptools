# 1b80:e302 Pinnacle Dazzle DVC 90/100/101/107

This device is fully functional.

## Also Known As
- Afatech
- Roxio EasyVHStoDVD
- Roxio Easy VHS to DVD
- Roxio Video Capture USB UB315-E

## Scripts
- `info` prints basic information.
- `select` chooses input and signal type. Run without arguments for help.
- `preview` shows what would be captured.
- `capture` records to an MPG file. Run without arguments for help.
- `debug` print verbose information.

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
