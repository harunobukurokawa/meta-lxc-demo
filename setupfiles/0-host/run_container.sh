export XDG_RUNTIME_DIR=/run/platform/display
export WAYLAND_DISPLAY=wayland-1

#systemctl start lxc-net
/bin/umount /media/*

/usr/bin/lxc-start -n cluster
/usr/bin/layer-add-surfaces -s 1 -l 2 -d HDMI-A-2

sleep 1 

/bin/rm /lxc/guest/home/0/c13\:*
/bin/rm /lxc/guest/home/0/b8\:*

/bin/cp /run/udev/data/c13\:* /lxc/guest/home/0
/bin/cp /run/udev/data/c226\:* /lxc/guest/home/0
/bin/cp /run/udev/data/b8\:* /lxc/guest/home/0

/usr/bin/lxc-start -n guest 

/bin/sleep 4
/home/0/start-ivi.sh
#/usr/bin/layer-add-surfaces -s 1 -l 1 -d HDMI-A-1
/usr/bin/lxc-device -n guest add /dev/sda1

#/usr/bin/lxc-attach -n guest
#/bin/mount /dev/sda1 /media

