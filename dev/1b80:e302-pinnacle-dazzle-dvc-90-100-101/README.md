# Pinnacle Dazzle DVC 90/100/101/

## Also Known As
- Afatech
- Roxio EasyVHStoDVD
- Roxio Easy VHS to DVD
- Roxio Video Capture USB UB315-E

## Notes
This device can be fussy. It sometimes likes to dump out garbage (green, monochrome, scrambled).

For color issues, try stopping the tape, rewinding all the way, and playing again.

As a last measure, close everything using it and unplug it. Then:

```
sudo rmmod e28xx_v4l
sudo rmmod e28xx_alsa
sudo rmmod e28xx
```

And then plug it back in.

## Links
- https://www.linuxtv.org/wiki/index.php/Pinnacle
- https://www.linuxtv.org/wiki/index.php/RoxioEasyVHStoDVD
