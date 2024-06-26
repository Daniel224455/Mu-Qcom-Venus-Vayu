APRIORI DXE {

  # First, install the PCD driver and call DxeInit
  INF MdeModulePkg/Core/Dxe/DxeMain.inf
  INF MdeModulePkg/Universal/PCD/Dxe/Pcd.inf

  #INF MdeModulePkg/Universal/ReportStatusCodeRouter/RuntimeDxe/ReportStatusCodeRouterRuntimeDxe.inf
  #INF MdeModulePkg/Universal/StatusCodeHandler/RuntimeDxe/StatusCodeHandlerRuntimeDxe.inf
  INF MdeModulePkg/Core/RuntimeDxe/RuntimeDxe.inf

  # Next, install cpu protocol and enable the interrupt controller
  INF ArmPkg/Drivers/CpuDxe/CpuDxe.inf
  INF ArmPkg/Drivers/ArmGic/ArmGicDxe.inf

  # Core Drivers
  INF EmbeddedPkg/MetronomeDxe/MetronomeDxe.inf
  INF ArmPkg/Drivers/TimerDxe/TimerDxe.inf
  INF ArmPkg/Drivers/ArmPsciMpServicesDxe/ArmPsciMpServicesDxe.inf

  INF Binaries/a23xq/QcomPkg/Drivers/SmemDxe/SmemDxe.inf

  INF QcomPkg/Drivers/DynamicRamDxe/DynamicRamDxe.inf

  INF Binaries/a23xq/QcomPkg/Drivers/DALSYSDxe/DALSYSDxe.inf
  INF Binaries/a23xq/QcomPkg/Drivers/HWIODxe/HWIODxe.inf
  INF Binaries/a23xq/QcomPkg/Drivers/ChipInfoDxe/ChipInfoDxe.inf
  INF Binaries/a23xq/QcomPkg/Drivers/PlatformInfoDxe/PlatformInfoDxe.inf
  INF Binaries/a23xq/QcomPkg/Drivers/HALIOMMUDxe/HALIOMMUDxe.inf
  INF Binaries/a23xq/QcomPkg/Drivers/ULogDxe/ULogDxe.inf
  INF Binaries/a23xq/QcomPkg/Drivers/NpaDxe/NpaDxe.inf
  INF Binaries/a23xq/QcomPkg/Drivers/VcsDxe/VcsDxe.inf
  INF Binaries/a23xq/QcomPkg/Drivers/ClockDxe/ClockDxe.inf

  INF QcomPkg/Drivers/ClockSpeedUpDxe/ClockSpeedUpDxe.inf

  INF Binaries/a23xq/QcomPkg/Drivers/ShmBridgeDxe/ShmBridgeDxeLA.inf
  INF Binaries/a23xq/QcomPkg/Drivers/TzDxe/ScmDxeLA.inf
  INF Binaries/a23xq/QcomPkg/Drivers/TLMMDxe/TLMMDxe.inf
  INF Binaries/a23xq/QcomPkg/Drivers/I2CDxe/I2CDxe.inf
  INF Binaries/a23xq/QcomPkg/Drivers/SPMIDxe/SPMIDxe.inf
  INF Binaries/a23xq/QcomPkg/Drivers/PmicDxe/PmicDxeLa.inf

  INF MdeModulePkg/Universal/Disk/DiskIoDxe/DiskIoDxe.inf
  INF MdeModulePkg/Universal/Disk/PartitionDxe/PartitionDxe.inf
  INF MdeModulePkg/Universal/Disk/UnicodeCollation/EnglishDxe/EnglishDxe.inf

  #INF Binaries/a23xq/QcomPkg/Drivers/SdccDxe/SdccDxe.inf
  #INF Binaries/a23xq/QcomPkg/Drivers/UFSDxe/UFSDxe.inf

  INF FatPkg/EnhancedFatDxe/Fat.inf

  INF Binaries/a23xq/QcomPkg/Drivers/TzDxe/TzDxeLA.inf

  INF MdeModulePkg/Universal/Variable/RuntimeDxe/VariableRuntimeDxe.inf

  INF Binaries/a23xq/QcomPkg/Drivers/QcomWDogDxe/QcomWDogDxe.inf
  INF Binaries/a23xq/QcomPkg/Drivers/DDRInfoDxe/DDRInfoDxe.inf

  INF MdeModulePkg/Universal/ResetSystemRuntimeDxe/ResetSystemRuntimeDxe.inf

!if $(USE_CUSTOM_DISPLAY_DRIVER) == 1
  INF Binaries/a23xq/QcomPkg/Drivers/DisplayDxe/DisplayDxe.inf
!else
  INF SiliciumPkg/Drivers/SimpleFbDxe/SimpleFbDxe.inf
!endif

  INF Binaries/a23xq/QcomPkg/Drivers/PILDxe/PILDxe.inf
  INF Binaries/a23xq/QcomPkg/Drivers/QcomBds/QcomBds.inf
  INF Binaries/a23xq/QcomPkg/Drivers/GLinkDxe/GLinkDxe.inf

  INF MdeModulePkg/Universal/WatchdogTimerDxe/WatchdogTimer.inf
  INF MdeModulePkg/Universal/SecurityStubDxe/SecurityStubDxe.inf
  INF EmbeddedPkg/EmbeddedMonotonicCounter/EmbeddedMonotonicCounter.inf
  INF EmbeddedPkg/RealTimeClockRuntimeDxe/RealTimeClockRuntimeDxe.inf
  INF MdeModulePkg/Universal/PrintDxe/PrintDxe.inf
  INF MdeModulePkg/Universal/DevicePathDxe/DevicePathDxe.inf
  INF MdeModulePkg/Universal/CapsuleRuntimeDxe/CapsuleRuntimeDxe.inf
  INF MdeModulePkg/Universal/HiiDatabaseDxe/HiiDatabaseDxe.inf

  INF Binaries/a23xq/QcomPkg/Drivers/FontDxe/FontDxe.inf

  INF MdeModulePkg/Universal/BdsDxe/BdsDxe.inf

  INF Binaries/a23xq/QcomPkg/Drivers/SPIDxe/SPIDxe.inf
  INF Binaries/a23xq/QcomPkg/Drivers/UsbPwrCtrlDxe/UsbPwrCtrlDxe.inf
  INF Binaries/a23xq/QcomPkg/Drivers/UsbfnDwc3Dxe/UsbfnDwc3Dxe.inf

  INF MdeModulePkg/Bus/Usb/UsbBusDxe/UsbBusDxe.inf
  INF MdeModulePkg/Bus/Usb/UsbKbDxe/UsbKbDxe.inf
  INF MdeModulePkg/Bus/Usb/UsbMassStorageDxe/UsbMassStorageDxe.inf

  INF Binaries/a23xq/QcomPkg/Drivers/UsbMsdDxe/UsbMsdDxe.inf
  INF Binaries/a23xq/QcomPkg/Drivers/UsbDeviceDxe/UsbDeviceDxe.inf
  INF Binaries/a23xq/QcomPkg/Drivers/UsbConfigDxe/UsbConfigDxe.inf
  INF Binaries/a23xq/QcomPkg/Drivers/ButtonsDxe/ButtonsDxe.inf
!if $(USE_CUSTOM_DISPLAY_DRIVER) == 1
  INF Binaries/a23xq/QcomPkg/Drivers/CipherDxe/CipherDxe.inf
!endif
  INF Binaries/a23xq/QcomPkg/Drivers/GpiDxe/GpiDxe.inf
  INF Binaries/a23xq/QcomPkg/SocPkg/StraitPkg/Drivers/RNGDxe/RngDxe.inf
  INF Binaries/a23xq/QcomPkg/Drivers/SamsungDxe/CcicDxe/CcicDxe.inf
  INF Binaries/a23xq/QcomPkg/Drivers/SamsungDxe/MuicDxe/MuicDxe.inf
  INF Binaries/a23xq/QcomPkg/Drivers/SamsungDxe/ChgDxe/ChgDxe.inf
  INF Binaries/a23xq/QcomPkg/Drivers/SamsungDxe/VibDxe/VibDxe.inf
  INF Binaries/a23xq/QcomPkg/Drivers/SamsungDxe/GuidedFvDxe/GuidedFvDxe.inf
  INF Binaries/a23xq/QcomPkg/Drivers/SamsungDxe/BoardInfoDxe/BoardInfoDxe.inf

  INF EmbeddedPkg/SimpleTextInOutSerial/SimpleTextInOutSerial.inf
  INF MdeModulePkg/Universal/Console/ConPlatformDxe/ConPlatformDxe.inf
  INF MdeModulePkg/Universal/Console/ConSplitterDxe/ConSplitterDxe.inf
  INF MdeModulePkg/Universal/Console/GraphicsConsoleDxe/GraphicsConsoleDxe.inf
}
