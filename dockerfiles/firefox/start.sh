#!/usr/bin/env bash
horny () {
	docker run -it --rm \
		-e DISPLAY=unix$DISPLAY \
		--device /dev/dri \
		--device /dev/snd \
		-v /tmp/.X11-unix:/tmp/.X11-unix \
		--privileged  local/arch-firefox:latest \
		https://pornhub.com 
}
