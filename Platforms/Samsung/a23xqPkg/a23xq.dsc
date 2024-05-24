##
#
#  Copyright (c) 2011 - 2022, ARM Limited. All rights reserved.
#  Copyright (c) 2014, Linaro Limited. All rights reserved.
#  Copyright (c) 2015 - 2020, Intel Corporation. All rights reserved.
#  Copyright (c) 2018, Bingxing Wang. All rights reserved.
#  Copyright (c) Microsoft Corporation.
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
  PLATFORM_NAME                  = a23xq
  PLATFORM_GUID                  = 91F43F1D-3354-461E-B38F-77F5474207E1
  PLATFORM_VERSION               = 0.1
  DSC_SPECIFICATION              = 0x00010005
  OUTPUT_DIRECTORY               = Build/a23xqPkg
  SUPPORTED_ARCHITECTURES        = AARCH64
  BUILD_TARGETS                  = RELEASE|DEBUG
  SKUID_IDENTIFIER               = DEFAULT
  FLASH_DEFINITION               = a23xqPkg/a23xq.fdf
  USE_CUSTOM_DISPLAY_DRIVER      = 0
  AB_SLOT_SUPPORT                = 0
  HAS_BUILD_IN_KEYBOARD          = 0

[BuildOptions]
  *_*_*_CC_FLAGS = -DAB_SLOT_SUPPORT=$(AB_SLOT_SUPPORT) -DHAS_BUILD_IN_KEYBOARD=$(HAS_BUILD_IN_KEYBOARD)

[LibraryClasses]
  DeviceMemoryMapLib|a23xqPkg/Library/DeviceMemoryMapLib/DeviceMemoryMapLib.inf
  DeviceConfigurationMapLib|a23xqPkg/Library/DeviceConfigurationMapLib/DeviceConfigurationMapLib.inf

[PcdsFixedAtBuild]
  # DDR Start Address
  gArmTokenSpaceGuid.PcdSystemMemoryBase|0x80000000        

  # Device Maintainer
  gEfiMdeModulePkgTokenSpaceGuid.PcdFirmwareVendor|L"Daniel6745"

  # CPU Vector Address
  gArmTokenSpaceGuid.PcdCpuVectorBaseAddress|0x9FF8C000

  # UEFI Stack Addresses
  gEmbeddedTokenSpaceGuid.PcdPrePiStackBase|0x9FF90000
  gEmbeddedTokenSpaceGuid.PcdPrePiStackSize|0x00040000        

  # SmBios
  gSiliciumPkgTokenSpaceGuid.PcdSmbiosSystemVendor|"Samsung Inc"
  gSiliciumPkgTokenSpaceGuid.PcdSmbiosSystemModel|"Galaxy A23 5G"
  gSiliciumPkgTokenSpaceGuid.PcdSmbiosSystemRetailModel|"a23xq"
  gSiliciumPkgTokenSpaceGuid.PcdSmbiosSystemRetailSku|"Galaxy A23 5G"
  gSiliciumPkgTokenSpaceGuid.PcdSmbiosBoardModel|"Galaxy A23 5G"

  # Simple FrameBuffer
  gSiliciumPkgTokenSpaceGuid.PcdMipiFrameBufferWidth|1080
  gSiliciumPkgTokenSpaceGuid.PcdMipiFrameBufferHeight|2408
  gSiliciumPkgTokenSpaceGuid.PcdMipiFrameBufferColorDepth|32

  # Dynamic RAM Start Address
  gQcomPkgTokenSpaceGuid.PcdRamPartitionBase|0xB8900000

  # SD Card Slot
  gQcomPkgTokenSpaceGuid.PcdSDCardSlotPresent|FALSE

  # USB Controller
  gQcomPkgTokenSpaceGuid.PcdStartUsbController|TRUE
  
[PcdsDynamicDefault]
  gEfiMdeModulePkgTokenSpaceGuid.PcdVideoHorizontalResolution|1080
  gEfiMdeModulePkgTokenSpaceGuid.PcdVideoVerticalResolution|2408
  gEfiMdeModulePkgTokenSpaceGuid.PcdSetupVideoHorizontalResolution|1080
  gEfiMdeModulePkgTokenSpaceGuid.PcdSetupVideoVerticalResolution|2408
  gEfiMdeModulePkgTokenSpaceGuid.PcdSetupConOutColumn|135
  gEfiMdeModulePkgTokenSpaceGuid.PcdSetupConOutRow|127
  gEfiMdeModulePkgTokenSpaceGuid.PcdConOutColumn|135
  gEfiMdeModulePkgTokenSpaceGuid.PcdConOutRow|127

!include SM6375Pkg/SM6375.dsc.inc
