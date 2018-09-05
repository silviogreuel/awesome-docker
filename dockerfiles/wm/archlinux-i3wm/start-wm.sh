#!/usr/bin/env bash
docker run \
	-it \
	--rm \
	-e DISPLAY=:1 \
	--device /dev/snd \ 
	-v /tmp/.X11-unix:/tmp/.X11-unix \ 
	wm/archlinux:i3wm /usr/bin/i3
