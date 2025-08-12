OS_NAME = "${PN}os"
OS_CONFIG_IN := "${THISDIR}/${PN}/${MACHINE}/${OS_NAME}.conf"

OS_CONFIG = "${WORKDIR}/${OS_NAME}.conf"
do_sign_guestos:prepend () {
    cp "${OS_CONFIG_IN}" "${OS_CONFIG}"
}
