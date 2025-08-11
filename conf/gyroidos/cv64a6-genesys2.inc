MACHINE = "cv64a6-genesys2"

PREFERRED_PROVIDER_virtual/kernel:cv64a6-genesys2 ?= "linux-rolling-stable"
PREFERRED_PROVIDER_virtual/kernel:cml-base ?= "linux-rolling-stable"

INITRAMFS_IMAGE_BUNDLE = "0"
INITRAMFS_IMAGE = "gyroidos-cml-initramfs"

GYROIDOS_PARTTABLE_TYPE = "gpt"
GYROIDOS_HARDWARE = "riscv"
GYROIDOS_LOGTTY = "ttyS0"
GYROIDOS_GUESTOS_ARCH = "qemuriscv64"
GYROIDOS_FSTYPES = "wic wic.gz wic.bmap"

GYROIDOS_TARGET_ALIGN = "4096"

PKI_UEFI_KEYS = "n"

PACKAGE_CLASSES = "package_ipk"
BBMULTICONFIG = "guestos"

INITRAMFS_MODULES = ""

INITRAMFS_MAXSIZE = "150000"

PACKAGE_INSTALL:append:pn-gyroidos-cml-initramfs = "${INITRAMFS_MODULES}"

RISCV_SBI_FDT:pn-opensbi = "${KERNEL_DEPLOYSUBDIR}/cv64a6_genesysII.dtb"

KERNEL_CLASSES:append = " kernel-fitimage "
KERNEL_IMAGETYPE:cv64a6-genesys2 = "fitImage"

IMAGE_BOOT_FILES = " \
    fw_payload.bin \
    ${KERNEL_DEPLOYSUBDIR}/fitImage-gyroidos-cml-initramfs-${MACHINE}-${MACHINE};fitImage \
    ${KERNEL_DEPLOYSUBDIR}/${RISCV_SBI_FDT};${RISCV_SBI_FDT} \
"

WKS_FILE:cv64a6-genesys2 = "gyroidos-cml.cva6-genesys2.wks.in"

EXTRA_IMAGEDEPENDS:remove = "opensbi"

#SERIAL_CONSOLES = "115200;ttyS0 115200;ttyS1"
