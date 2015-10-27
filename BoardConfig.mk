#USE_CAMERA_STUB := false
LOCAL_PATH := device/zte/N958St

# inherit from the proprietary version
-include vendor/zte/N958St/BoardConfigVendor.mk

TARGET_SPECIFIC_HEADER_PATH := device/zte/N958St/include

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "vfs-prerelease"

# Platform
TARGET_BOARD_PLATFORM := msm8916
TARGET_BOARD_PLATFORM_GPU := qcom-adreno306
#add suffix variable to uniquely identify the board
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true
TARGET_BOARD_SUFFIX := _32

# Architecture
TARGET_ARCH := arm
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_CPU_ABI  := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := msm8916

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "vfs-prerelease"

# Audio
AUDIO_FEATURE_ENABLED_KPI_OPTIMIZE := true
AUDIO_FEATURE_LOW_LATENCY_PRIMARY := true
AUDIO_FEATURE_ENABLED_VOICE_CONCURRENCY := true
AUDIO_FEATURE_ENABLED_WFD_CONCURRENCY := true
BOARD_USES_ALSA_AUDIO := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true
BOARD_USES_LEGACY_MMAP := true
#TARGET_USE_VENDOR_CAMERA_EXT := true
BOARD_QTI_CAMERA_32BIT_ONLY := true

# charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_SHOW_PERCENTAGE := true

# Enables CSVT
TARGET_USES_CSVT := true

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# GPS
TARGET_GPS_HAL_PATH := $(DEVICE_PATH)/gps
TARGET_NO_RPC := true

# Graphics
BOARD_EGL_CFG := $(LOCAL_PATH)/egl.cfg
TARGET_USES_OVERLAY := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_HARDWARE_3D := false
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_ENTRY_SIZE:= 1024*1024
MAX_EGL_CACHE_SIZE := 2048*1024
TARGET_USES_ION := true
TARGET_USES_NEW_ION_API :=true
TARGET_CONTINUOUS_SPLASH_ENABLED := true
TARGET_USES_C2D_COMPOSITION := true
USE_OPENGL_RENDERER := true

# Logging
TARGET_USES_LOGD := false

# Encryption
TARGET_HW_DISK_ENCRYPTION := true

# Liblight
TARGET_PROVIDES_LIBLIGHT := true

# Kernel
TARGET_NO_KERNEL := false
#BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci androidboot.selinux=permissive
BOARD_KERNEL_CMDLINE := console=null androidboot.console=ttyHSL0 boot_cpus=0,3,4,7 androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 sched_enable_hmp=1 androidboot.selinux=permissive
BOARD_KERNEL_SEPARATED_DT := true
BOARD_KERNEL_BASE        := 0x80000000
BOARD_KERNEL_PAGESIZE    := 2048
BOARD_KERNEL_TAGS_OFFSET := 0x01e00000
BOARD_RAMDISK_OFFSET     := 0x02000000
TARGET_KERNEL_SOURCE := kernel/zte/msm8916
TARGET_KERNEL_CONFIG := msm8916-N958St_defconfig
BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/mkbootimg.mk

#WLAN_MODULES:
#	mkdir -p $(KERNEL_MODULES_OUT)/pronto
#	mv $(KERNEL_MODULES_OUT)/wlan.ko $(KERNEL_MODULES_OUT)/pronto/pronto_wlan.ko
#	ln -sf /system/lib/modules/pronto/pronto_wlan.ko $(TARGET_OUT)/lib/modules/wlan.ko

#TARGET_KERNEL_MODULES += WLAN_MODULES
TARGET_HAVE_OMX_HEVC := true

# Partitions
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x04000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x04000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
BOARD_USERDATAIMAGE_PARTITION_SIZE := 10737418240
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)


# MKHW
BOARD_HARDWARE_CLASS := $(LOCAL_PATH)/mkhw/

# Power
TARGET_POWERHAL_VARIANT := qcom

# Qualcomm Hardware
BOARD_USES_QCOM_HARDWARE := true
#TARGET_USES_QCOM_BSP := true
#COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DQCOM_BSP -DQCOM_MEDIA_DISABLE_BUFFER_SIZE_CHECK

# Vendor Init
TARGET_UNIFIED_DEVICE := true
TARGET_INIT_VENDOR_LIB := libinit_msm
TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/

# RIL
TARGET_RIL_VARIANT := caf
PROTOBUF_SUPPORTED := true

# Time services
BOARD_USES_QC_TIME_SERVICES := true

# malloc
MALLOC_IMPL := dlmalloc

# Recovery"
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/recovery.fstab
TARGET_RECOVERY_INITRC := $(LOCAL_PATH)/recovery/init.rc
DEVICE_RESOLUTION := 720x1280
RECOVERY_GRAPHICS_USE_LINELENGTH := true
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_RECOVERY_SWIPE := true
BOARD_HAS_LARGE_FILESYSTEM := true
TW_INCLUDE_L_CRYPTO := true
RECOVERY_USE_VIRTUAL_KEY := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
BOARD_SUPPRESS_SECURE_ERASE := true
TW_NO_SCREEN_TIMEOUT := true


# Vold
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_MAX_PARTITIONS := 65
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

# SELinux
-include device/qcom/sepolicy/sepolicy.mk

# Wifi
BOARD_HAS_QCOM_WLAN := true
BOARD_HAS_QCOM_WLAN_SDK := true
BOARD_WLAN_DEVICE := qcwcn
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
TARGET_USES_QCOM_WCNSS_QMI := true
WPA_SUPPLICANT_VERSION := VER_0_8_X
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_MODULE_NAME := "wlan"
TARGET_USES_WCNSS_CTRL := true
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_AP := "ap"
