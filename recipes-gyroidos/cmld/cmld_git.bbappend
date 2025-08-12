# disable warnings for cast align on RISC-V builds
WCAST_ALIGN_cv32a6-genesys2 = "n"
WCAST_ALIGN_cv64a6-genesys2 = "n"

EXTRA_OEMAKE += "WCAST_ALIGN=${WCAST_ALIGN}"

# disable full image checking in background, rely on dm-verity check only
# since mmc is slow on cva6 corev-apu reference bitstream.
EXTRA_OEMAKE += "DM_LAZY_CHECK_ONLY=y"
