FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

DEPENDS_remove = " gstreamer "
DEPENDS += " virtual/mesa"

SRC_URI_append = " \
   file://0001-CMakeLists-remove-transmitter-to-build-target.patch \
"

#WALTHAM_PIPELINE_TRANSMITTER_ulcb ?= "waltham-transmitter/waltham-renderer/pipeline_example_rcar.cfg"
#WALTHAM_PIPELINE_RECEIVER_ulcb ?= "waltham-receiver/receiver_pipeline_example_rcar.cfg"
WALTHAM_RECIEVER_IP = "10.0.3.87"
WALTHAM_RECEIVER_PORT = "5005"

