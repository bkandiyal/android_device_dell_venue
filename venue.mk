#
# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit non-open-source blobs.
$(call inherit-product-if-exists, vendor/dell/venue/venue-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/dell/venue/overlay

PROPERTY_PRODUCT_OVERRIDES += \
          ro.sf.hwrotation = 180

# Set usb type
ADDITIONAL_DEFAULT_PROPERTIES += \
	persist.sys.usb.config=mass_storage \
	persist.service.adb.enable=1
# Wifi
PRODUCT_COPY_FILES += \
    device/dell/venue/files/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
#    device/dell/venue/files/dhd.ko:system/lib/modules/dhd.ko
#    device/dell/venue/files/dhd_test.ko:system/lib/modules/dhd_test.ko

# Sensor and lights
PRODUCT_COPY_FILES += \
    device/dell/venue/files/sensors.venue.so:system/lib/hw/sensors.venue.so \
    device/dell/venue/files/lights.qsd8k.so:system/lib/hw/lights.qsd8k.so

# Init
PRODUCT_COPY_FILES += \
    device/dell/venue/files/initlogo.rle:root/initlogo.rle \
    device/dell/venue/files/install-recovery.sh:system/etc/install-recovery.sh \
    device/dell/venue/init.venue.rc:root/init.venue.rc \
    device/dell/venue/init.venue.usb.rc:root/init.venue.usb.rc \
    device/dell/venue/ueventd.venue.rc:root/ueventd.venue.rc
#    device/dell/venue/init.rc:root/init.rc

# Permissions
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/base/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml

# Adreno200 Libraries
PRODUCT_COPY_FILES += \
    device/dell/venue/prebuilt/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    device/dell/venue/prebuilt/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    device/dell/venue/prebuilt/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    device/dell/venue/prebuilt/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    device/dell/venue/prebuilt/lib/egl/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \
    device/dell/venue/prebuilt/lib/egl/libGLES_android.so:system/lib/egl/libGLES_android.so \
    device/dell/venue/prebuilt/lib/libsc-a2xx.so:system/lib/libsc-a2xx.so \
    device/dell/venue/prebuilt/lib/libC2D2.so:system/lib/egl/libC2D2.so \
    device/dell/venue/prebuilt/lib/libOpenVG.so:system/lib/egl/libOpenVG.so \
    device/dell/venue/prebuilt/etc/firmware/a225p5_pm4.fw:system/etc/firmware/a225p5_pm4.fw \
    device/dell/venue/prebuilt/etc/firmware/a225_pfp.fw:system/etc/firmware/a225_pfp.fw \
    device/dell/venue/prebuilt/etc/firmware/a225_pm4.fw:system/etc/firmware/a225_pm4.fw \
    device/dell/venue/prebuilt/etc/firmware/a300_pfp.fw:system/etc/firmware/a300_pfp.fw \
    device/dell/venue/prebuilt/etc/firmware/a300_pm4.fw:system/etc/firmware/a300_pm4.fw \
    device/dell/venue/prebuilt/etc/firmware/leia_pfp_470.fw:system/etc/firmware/leia_pfp_470.fw \
    device/dell/venue/prebuilt/etc/firmware/leia_pm4_470.fw:system/etc/firmware/leia_pm4_470.fw \
    device/dell/venue/prebuilt/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/dell/venue/prebuilt/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \
    device/dell/venue/prebuilt/lib/libgsl.so:system/lib/libgsl.so


# Apks
#PRODUCT_COPY_FILES += \
#    device/dell/venue/files/RootExplorer.apk:system/app/RootExplorer.apk \
#    device/dell/venue/files/Quickoffice.apk:system/app/Quickoffice.apk \

# SetCpu
#PRODUCT_COPY_FILES += \
#    device/dell/venue/files/libsetcpu-native.so:system/lib/libsetcpu-native.so \
#    device/dell/venue/files/SetCpu.apk:system/app/SetCpu.apk

# Media Profile
PRODUCT_COPY_FILES += \
    device/dell/venue/media_profiles.xml:system/etc/media_profiles.xml

# GPS
PRODUCT_COPY_FILES += \
    device/dell/venue/files/gps.venue.so:system/lib/hw/gps.venue.so
PRODUCT_COPY_FILES += \
    device/dell/venue/files/gps.conf:system/etc/gps.conf

# APN
PRODUCT_COPY_FILES += \
    device/dell/venue/files/apns-conf.xml:system/etc/apns-conf.xml

# Vsync
#PRODUCT_COPY_FILES += \
#    device/dell/venue/files/vsync.ko:system/lib/modules/vsync.ko

# KoreanIME
#PRODUCT_COPY_FILES += \
#    device/dell/venue/files/libjni_koreanime.so:system/lib/libjni_koreanime.so \
#    device/dell/venue/files/KoreanIME.apk:system/app/LatinIME.apk

# Touchscreen and Keypad
PRODUCT_COPY_FILES += \
    device/dell/venue/files/mXT224_touchscreen.idc:system/usr/idc/mXT224_touchscreen.idc \
    device/dell/venue/files/mXT224_touchscreen_keyarray.kl:system/usr/keylayout/mXT224_touchscreen_keyarray.kl

PRODUCT_PACKAGES += \
    camera.qsd8k \
    gralloc.qsd8k \
    copybit.qsd8k \
    hwcomposer.qsd8k \
    libgenlock \
    liboverlay \
    libtilerenderer \
    libQcomUI \
    audio.primary.venue \
    audio.primary.qsd8k \
    audio.a2dp.default \
    libOmxCore \
    libOmxVenc \
    libOmxVidEnc \
    gps.qsd8k \
    libcamera \
    Mms \
    Camera \
    Galaxy4 \
    PhaseBeam \
    HoloSpiralWallpaper \
    rild \
    PhaseBeam \
    iptables \
    Superuser

PRODUCT_LOCALES += mdpi

ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/dell/venue/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full_base.mk)

PRODUCT_NAME := dell_venue
PRODUCT_BRAND := dell
PRODUCT_DEVICE := venue
PRODUCT_MODEL := DELL VENUE 
PRODUCT_MANUFACTURER := dell
