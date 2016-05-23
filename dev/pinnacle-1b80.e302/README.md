# 1b80:e302 Pinnacle Dazzle DVC 90/100/101/

## Also Known As
- Afatech
- Roxio EasyVHStoDVD
- Roxio Easy VHS to DVD
- Roxio Video Capture USB UB315-E

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
