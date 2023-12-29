#!/bin/sh
NVIDIA_GPU_NUMBER=1

export __NV_PRIME_RENDER_OFFLOAD=$NVIDIA_GPU_NUMBER

if xrandr | grep "HDMI-1-0 connected"; then
	xrandr --output eDP-1 --mode 1920x1080 --pos 0x0 --rotate normal \
		--output HDMI-1-0 --primary --mode 1920x1080 --pos 1920x0 --rotate normal
else
	echo "HDMI não encontrado."
fi

unset __NV_PRIME_RENDER_OFFLOAD
