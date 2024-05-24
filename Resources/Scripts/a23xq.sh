#!/bin/bash

# Build an Android kernel that is actually UEFI disguised as the Kernel
cat ./BootShim/AARCH64/BootShim.bin "./Build/a23xqPkg/${_TARGET_BUILD_MODE}_CLANGDWARF/FV/A23XQ_UEFI.fd" > "./Build/a23xqPkg/${_TARGET_BUILD_MODE}_CLANGDWARF/FV/A23XQ_UEFI.fd-bootshim"||exit 1
gzip -c < "./Build/a23xqPkg/${_TARGET_BUILD_MODE}_CLANGDWARF/FV/A23XQ_UEFI.fd-bootshim" > "./Build/a23xqPkg/${_TARGET_BUILD_MODE}_CLANGDWARF/FV/A23XQ_UEFI.fd-bootshim.gz"||exit 1
cat "./Build/a23xqPkg/${_TARGET_BUILD_MODE}_CLANGDWARF/FV/A23XQ_UEFI.fd-bootshim.gz" ./Resources/DTBs/a23xq.dtb > ./Resources/bootpayload.bin||exit 1

# Create bootable Android boot.img
python3 ./Resources/Scripts/mkbootimg.py \
  --kernel ./Resources/bootpayload.bin \
  --ramdisk ./Resources/ramdisk \
  --kernel_offset 0x00000000 \
  --ramdisk_offset 0x00000000 \
  --tags_offset 0x00000000 \
  --os_version 13.0.0 \
  --os_patch_level "$(date '+%Y-%m')" \
  --header_version 1 \
  -o recovery.img \
  ||_error "\nFailed to create Android Boot Image!\n"

# Make flashable .tar file for Odin/Heimdall
tar -c recovery.img -f Mu-a23xq.tar||exit 1
mv recovery.img Mu-a23xq.img||exit 1
