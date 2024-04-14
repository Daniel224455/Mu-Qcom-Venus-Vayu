## @file
#
#  Copyright (c) 2011-2015, ARM Limited. All rights reserved.
#  Copyright (c) 2014, Linaro Limited. All rights reserved.
#  Copyright (c) 2015 - 2016, Intel Corporation. All rights reserved.
#  Copyright (c) 2018, Bingxing Wang. All rights reserved.
#
#  SPDX-License-Identifier: BSD-2-Clause-Patent
#
##

################################################################################
#
# Defines Section - statements that will be processed to create a Makefile.
#
################################################################################
[Defines]
  PLATFORM_NAME                  = vayu
  PLATFORM_GUID                  = 3F9D5C75-EE51-4E90-A2A0-3654F5D880FB
  PLATFORM_VERSION               = 0.1
  DSC_SPECIFICATION              = 0x00010005
  OUTPUT_DIRECTORY               = Build/vayuPkg
  SUPPORTED_ARCHITECTURES        = AARCH64
  BUILD_TARGETS                  = DEBUG|RELEASE
  SKUID_IDENTIFIER               = DEFAULT
  FLASH_DEFINITION               = vayuPkg/vayu.fdf
  DISPLAY_USES_RGBA              = 0
  USE_DISPLAYDXE                 = 0
  AB_SLOT_SUPPORT                = 1

  # 0 = SM8150
  # 1 = SM8150-AB
  # 2 = SM8150-AC
  SOC_TYPE                       = 2

# If your SoC has multimple variants keep this Build Option
# If not don't add this Build Option
[BuildOptions.common]
  *_*_*_CC_FLAGS = -DSOC_TYPE=$(SOC_TYPE) -DDISPLAY_USES_RGBA=$(DISPLAY_USES_RGBA)

[LibraryClasses.common]
  DeviceMemoryMapLib|vayuPkg/Library/DeviceMemoryMapLib/DeviceMemoryMapLib.inf
  DeviceConfigurationMapLib|vayuPkg/Library/DeviceConfigurationMapLib/DeviceConfigurationMapLib.inf


[PcdsFixedAtBuild.common]
  gArmTokenSpaceGuid.PcdSystemMemoryBase|0x80000000         # Starting address

  gEfiMdeModulePkgTokenSpaceGuid.PcdFirmwareVendor|L"Daniel6745"

  gArmTokenSpaceGuid.PcdCpuVectorBaseAddress|0x9FF8C000

  gEmbeddedTokenSpaceGuid.PcdPrePiStackBase|0x9FF90000
  gEmbeddedTokenSpaceGuid.PcdPrePiStackSize|0x00040000

  # SmBios
  gQcomPkgTokenSpaceGuid.PcdSmbiosSystemVendor|"Xiaomi"
  gQcomPkgTokenSpaceGuid.PcdSmbiosSystemModel|"Poco X3 Pro"
  gQcomPkgTokenSpaceGuid.PcdSmbiosSystemRetailModel|"vayu"
  gQcomPkgTokenSpaceGuid.PcdSmbiosSystemRetailSku|"PocoX3Pro_vayu"
  gQcomPkgTokenSpaceGuid.PcdSmbiosBoardModel|"PocoX3Pro"

  # Simple FrameBuffer
  gQcomPkgTokenSpaceGuid.PcdMipiFrameBufferWidth|1080 
  gQcomPkgTokenSpaceGuid.PcdMipiFrameBufferHeight|2400 
  gQcomPkgTokenSpaceGuid.PcdMipiFrameBufferColorDepth|32

  # Power Services
  gQcomPkgTokenSpaceGuid.PcdIsPowerOkImplemented|FALSE

  # Dynamic RAM
  gQcomPkgTokenSpaceGuid.PcdRamPartitionBase|0xB9400000
  
  # SD Card
  gQcomPkgTokenSpaceGuid.PcdSDCardSlotPresent|FALSE

  # Usb Init
  gQcomPkgTokenSpaceGuid.PcdUSBInitOnBoot|TRUE

[PcdsDynamicDefault.common]
  gEfiMdeModulePkgTokenSpaceGuid.PcdVideoHorizontalResolution|1080 
  gEfiMdeModulePkgTokenSpaceGuid.PcdVideoVerticalResolution|2400 
  gEfiMdeModulePkgTokenSpaceGuid.PcdSetupVideoHorizontalResolution|1080 
  gEfiMdeModulePkgTokenSpaceGuid.PcdSetupVideoVerticalResolution|2400 
  gEfiMdeModulePkgTokenSpaceGuid.PcdSetupConOutColumn|135
  gEfiMdeModulePkgTokenSpaceGuid.PcdSetupConOutRow|126
  gEfiMdeModulePkgTokenSpaceGuid.PcdConOutColumn|135
  gEfiMdeModulePkgTokenSpaceGuid.PcdConOutRow|126

!include SM8150Pkg/SM8150Pkg.dsc.inc
