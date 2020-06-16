# Configure monitors
xrandr --output DVI-I-1 --right-of HDMI-0
xrandr --output DVI-I-1 --rotate left

#Applets
/usr/bin/bluetooth-applet >& /dev/null &
/usr/bin/gnome-volume-control-applet >& /dev/null &

# Invert keys
$HOME/programs/xmodmap2.sh
