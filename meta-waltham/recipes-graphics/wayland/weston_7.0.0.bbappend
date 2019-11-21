SRC_URI = "git://gitlab.freedesktop.org/VKadasani/weston.git;branch=waltham-transmitter-backend;protocol=http \
"
SRCREV = "bc1832a34f0dcc4903cbd1d7417a6410850c28ac"
SRC_URI[md5sum] = "658a5af9ef643b02cc14d95da90f4caf"
SRC_URI[sha256sum] = "fa55cad806527c1fc0233a847c20a404394ceef2523c2ff93ec472e1f3ac683c"
S ="${WORKDIR}/git"

DEPENDS += "waltham gstreamer1.0 gstreamer1.0-plugins-base"

EXTRA_OEMESON += " -Dsimple-dmabuf-drm=freedreno"

# Clients support
PACKAGECONFIG[clients] = "-Dsimple-clients=all -Ddemo-clients=true,-Dsimple-clients= -Ddemo-clients=false -Dsimple-dmabuf-drm=false"
PACKAGECONFIG[pipewire] = "-Dpipewire=true,-Dpipewire=false"
