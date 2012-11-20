# Copyright (c) 2009, Code Aurora Forum.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# config.mk
#
# Product-specific compile-time definitions.
#
USE_CAMERA_STUB := false

# inherit from the proprietary version
-include vendor/dell/venue/BoardConfigVendor.mk


#---
TARGET_GLOBAL_CFLAGS +=-mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS +=-mfpu=neon -mfloat-abi=softfp

COMMON_GLOBAL_CFLAGS += -DMISSING_EGL_EXTERNAL_IMAGE -DMISSING_EGL_PIXEL_FORMAT_YV12 -DMISSING_GRALLOC_BUFFERS
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60 -DQCOM_HARDWARE -DDECIDE_TEXTURE_TARGET -DSURFACEFLINGER_FORCE_SCREEN_RELEASE
COMMON_GLOBAL_CFLAGS += -DBINDER_COMPAT
COMMON_GLOBAL_CFLAGS += -DCOPYBIT_QSD8K
COMMON_GLOBAL_CFLAGS += -DEGL_TRACE

USE_OPENGL_RENDERER := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/usb_mass_storage/lun0/file
TARGET_FORCE_CPU_UPLOAD := true

PRODUCT_LOCALES += hdpi
PRODUCT_AAPT_CONFIG := normal nodpi mdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi mdpi

# Gpu specific stuff
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
USE_OPENGL_RENDERER := true
TARGET_USE_OVERLAY := false
TARGET_HAVE_BYPASS := false
TARGET_USES_C2D_COMPOSITION := false
TARGET_USES_GENLOCK := true
TARGET_GRALLOC_USES_ASHMEM := true
TARGET_FORCE_CPU_UPLOAD := true

TARGET_SPECIFIC_HEADER_PATH := device/dell/venue/include

BOARD_EGL_CFG := device/dell/venue/files/egl.cfg

# Avoid glitch. Essential config! <--need to check this //kib
BOARD_NO_RGBX_8888 := true
BOARD_NO_32BPP := true
###

# Webkit specific stuff
JS_ENGINE := v8
HTTP := chrome
###

# Board description
TARGET_CPU_ABI  := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_NEON := true
TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
TARGET_BOARD_PLATFORM := qsd8k
TARGET_BOOTLOADER_BOARD_NAME := venue
BOARD_USE_OPENSSL_ENGINE := true
TARGET_PROVIDES_INIT_RC := false
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true
###

# Bluetooth specific stuff
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
###

# GPS specific stuff
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := venue
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
###

# Screen and TS
BOARD_USE_LEGACY_TOUCHSCREEN := true
BOARD_HAS_FLIPPED_SCREEN := true
###


# Venue Camera
BOARD_CAMERA_USE_GETBUFFERINFO := true
BOARD_USE_CAF_LIBCAMERA_GB_REL := true
BOARD_USE_CAF_LIBCAMERA := true
###

# -- WhizKins --
# TARGET_PROVIDES_LIBAUDIO := true
BOARD_USES_GENERIC_AUDIO := false
# --


# WiFi specific stuff
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION      := VER_0_5_X
BOARD_WLAN_DEVICE := bcm4329
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_MODULE_ARG := "firmware_path=/system/etc/wlan/sdio-g-cdc-full11n-reclaim-roml-wme-aoe-pktfilter-keepalive-wapi.bin nvram_path=/etc/wlan/nvram.txt"
WIFI_DRIVER_MODULE_NAME := "dhd"
WIFI_DRIVER_FW_STA_PATH := "/system/etc/wlan/sdio-g-cdc-reclaim-idsup-wme-pktfilter-keepalive-aoe-toe-ccx-wapi_rc63.1.bin"
#WIFI_DRIVER_FW_AP_PATH := "/system/etc/wlan/fw_bcm4325_apsta.bin"
###

TARGET_NO_BOOTLOADER := true
TARGET_NO_RECOVERY := false
TARGET_NO_RADIOIMAGE := true

BOARD_KERNEL_BASE    := 0x20000000
BOARD_NAND_PAGE_SIZE := 2048

BOARD_KERNEL_CMDLINE := androidboot.hardware=venue no_console_suspend=1 console=null
BOARD_KERNEL_BASE := 0x20000000
BOARD_PAGE_SIZE := 0x00000800

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00500000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00600000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x10400000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_KERNEL_CONFIG := dell_venue_defconfig
TARGET_KERNEL_SOURCE := kernel/dell/venue
#TARGET_PREBUILT_KERNEL := device/dell/venue/kernel
#TARGET_PREBUILT_RECOVERY_KERNEL := device/dell/venue/recovery_kernel


# Oh well, let's try and see if it will work (GET TO CAMERA ISSUE NOW (OR AT LEAST AFTER TRYING THIS ONE), KIBU!!! )
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
BOARD_FM_DEVICE := bcm4329
BOARD_USE_BROADCOM_FM_VOLUME_HACK := true
