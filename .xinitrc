#!/bin/sh

~/.fehbg &
~/.local/bin/dwmbar	&
picom	&
mpd	&
sxhkd	&
redshift	&
xinput --set-prop 9 'libinput Accel Profile Enabled' 0, 1 
xset m 1/1 0
nvidia-settings --assign CurrentMetaMode="nvidia-auto-select+0+0 {ForceFullCompositionPipeline = On }" 
xset s off
xset -dpms
exec dwm
