#!/bin/sh
# newsk-desktop - start the Newsk Full Openbox session.
# Needs host X: podman run -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix newsk-full
set -e
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
mkdir -p "$XDG_CONFIG_HOME/openbox"
[ -f "$XDG_CONFIG_HOME/openbox/autostart" ] || cp /etc/newsk/openbox-autostart "$XDG_CONFIG_HOME/openbox/autostart"
[ -f "$XDG_CONFIG_HOME/openbox/rc.xml" ] || cp /etc/newsk/openbox-rc.xml "$XDG_CONFIG_HOME/openbox/rc.xml" 2>/dev/null || true
feh --bg-fill /usr/share/newsk/wallpapers/wp-01.jpg 2>/dev/null || true
exec openbox-session