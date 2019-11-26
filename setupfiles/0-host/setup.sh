
export XDG_RUNTIME_DIR=/run/platform/display
export WAYLAND_DISPLAY=wayland-1

lxc-create -n guest -t none -f config.ivi
lxc-create -n cluster -t none -f config.cluster
lxc-create -n waltham -t none -f config.waltham

