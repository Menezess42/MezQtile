#!/bin/sh
# xrandr --output eDP-1 --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI-1-0 --primary --mode 1920x1080 --pos 1920x0 --rotate normal

# Verifica se o HDMI está conectado
if xrandr | grep "HDMI-1-0 connected"; then
    # Executa o comando xrandr com a configuração desejada para HDMI conectado
    xrandr --output eDP-1 --mode 1920x1080 --pos 0x0 --rotate normal \
           --output HDMI-1-0 --primary --mode 1920x1080 --pos 1920x0 --rotate normal
else
    echo "HDMI não está conectado."
fi
