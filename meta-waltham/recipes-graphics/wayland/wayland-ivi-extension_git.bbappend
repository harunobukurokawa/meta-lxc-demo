FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += " \
    file://0001-compatible-with-weston-7.0.0.patch \
"

SRC_URI_remove = " \
    file://0005-disable-EGLWLMockNavigation-example-build.patch \
"

