# disable warnings for cast align on RISC-V builds
WCAST_ALIGN_cv32a6-genesys2 = "n"
WCAST_ALIGN_cv64a6-genesys2 = "n"

EXTRA_OEMAKE += "WCAST_ALIGN=${WCAST_ALIGN}"
