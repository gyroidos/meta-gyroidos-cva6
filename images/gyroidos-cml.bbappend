KERNEL_IMAGE_FILE:cv64a6-genesys2 = "cml-kernel/fitImage-gyroidos-cml-initramfs-${MACHINE}-${MACHINE}"
KERNEL_IMAGE_FILE:cv32a6-genesys2 = "cml-kernel/fitImage-gyroidos-cml-initramfs-${MACHINE}-${MACHINE}"

OS_CONFIG_IN:${MACHINE} := "${THISDIR}/${PN}/${OS_NAME}-${MACHINE}.conf"

do_sign_guestos:prepend:${MACHINE} () {
        mkdir -p "${UPDATE_OUT}"
        cp ${DEPLOY_DIR_IMAGE}/fw_payload.bin ${UPDATE_OUT}/fw_payload.bin.img
        cp ${DEPLOY_DIR_IMAGE}/${KERNEL_DEPLOYSUBDIR}/cv64a6_genesysII.dtb ${UPDATE_OUT}/cv64a6_genesysII.dtb.img
}
