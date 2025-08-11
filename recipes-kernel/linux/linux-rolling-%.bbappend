FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI:append = " file://0001-cva6-genesys2-add-32-and-64-bits-dts.patch \
                   file://0002-cva6-genesys2-added-Makefile-for-dtb-files.patch \
                   file://0001-Incorporate-lowrisc-drivers-for-kernel-6.14.patch \
                   file://genesys2.cfg \
                   file://lowrisc-network.cfg \
                  "

SRC_URI:append:cv32a6-genesys2 = " file://cv32a6-fragment.cfg \
                                 "
KBUILD_DEFCONFIG:${MACHINE} = "defconfig"
KCONFIG_MODE="--alldefconfig"

COMPATIBLE_MACHINE:append:cv64a6-genesys2 = "|cv64a6-genesys2"
COMPATIBLE_MACHINE:append:cv32a6-genesys2 = "|cv32a6-genesys2"
COMPATIBLE_MACHINE = "${MACHINE}"
