#!/bin/sh

# Copyright (C) 2011 The CyanogenMod Project
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

VENDOR=dell
DEVICE=venue

mkdir -p ../../../vendor/$VENDOR/$DEVICE

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__VENDOR__/$VENDOR/g > ../../../vendor/$VENDOR/$DEVICE/$DEVICE-vendor.mk
# Copyright (C) 2011 The CyanogenMod Project
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

# This file is generated by device/__VENDOR__/__DEVICE__/setup-makefiles.sh

# Live wallpaper packages
PRODUCT_PACKAGES := \\
    LiveWallpapers \\
    LiveWallpapersPicker \\
    VisualizationWallpapers \\
    librs_jni

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES := \\
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

\$(call inherit-product, vendor/__VENDOR__/__DEVICE__/__DEVICE__-vendor-blobs.mk)
EOF

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__VENDOR__/$VENDOR/g > ../../../vendor/$VENDOR/$DEVICE/$DEVICE-vendor-blobs.mk
# Copyright (C) 2011 The CyanogenMod Project
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

# This file is generated by device/__VENDOR__/__DEVICE__/setup-makefiles.sh

# HAL
# kibuuka jun 6 2012
# disabled these - built using cm9's hardware/qcom/display overlay + bionic/libc/kernel/common/linux headers patches
# found in device/dell/streak/headers.zip
#PRODUCT_COPY_FILES += \\
#    vendor/__VENDOR__/__DEVICE__/proprietary/lib/hw/gralloc.default.so:obj/lib/gralloc.default.so \\
#    vendor/__VENDOR__/__DEVICE__/proprietary/lib/hw/gralloc.default.so:system/lib/hw/gralloc.default.so \\
#    vendor/__VENDOR__/__DEVICE__/proprietary/lib/hw/gralloc.qsd8k.so:obj/lib/gralloc.qsd8k.so \\
#    vendor/__VENDOR__/__DEVICE__/proprietary/lib/hw/gralloc.qsd8k.so:system/lib/hw/gralloc.qsd8k.so \\
#    vendor/__VENDOR__/__DEVICE__/proprietary/lib/hw/copybit.qsd8k.so:obj/lib/copybit.qsd8k.so \\
#    vendor/__VENDOR__/__DEVICE__/proprietary/lib/hw/copybit.qsd8k.so:system/lib/hw/copybit.qsd8k.so

# 3D
# kibuuka jun 6 2012
# disabled - use adreno 200 ics drivers found at
# https://developer.qualcomm.com/download/adreno200-aulinuxandroidicschococs04000306001.targz
# instead
#PRODUCT_COPY_FILES += \\
#    vendor/__VENDOR__/__DEVICE__/proprietary/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \\
#    vendor/__VENDOR__/__DEVICE__/proprietary/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \\
#    vendor/__VENDOR__/__DEVICE__/proprietary/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \\
#    vendor/__VENDOR__/__DEVICE__/proprietary/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \\
#    vendor/__VENDOR__/__DEVICE__/proprietary/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \\
#    vendor/__VENDOR__/__DEVICE__/proprietary/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \\
#    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libgsl.so:system/lib/libgsl.so

#PRODUCT_COPY_FILES += \\
#    vendor/__VENDOR__/__DEVICE__/prebuilt/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \\
#    vendor/__VENDOR__/__DEVICE__/prebuilt/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \\
#    vendor/__VENDOR__/__DEVICE__/prebuilt/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \\
#    vendor/__VENDOR__/__DEVICE__/prebuilt/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \\
#    vendor/__VENDOR__/__DEVICE__/prebuilt/lib/egl/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \\
#    vendor/__VENDOR__/__DEVICE__/prebuilt/lib/egl/libGLES_android.so:system/lib/egl/libGLES_android.so \\
#    vendor/__VENDOR__/__DEVICE__/prebuilt/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \\
#    vendor/__VENDOR__/__DEVICE__/prebuilt/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \\
#    vendor/__VENDOR__/__DEVICE__/prebuilt/lib/libgsl.so:system/lib/libgsl.so


# GPS
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libcommondefs.so:system/lib/libcommondefs.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libloc_api-rpc-qc.so:system/lib/libloc_api-rpc-qc.so

# Sensor
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/bin/sensors_daemon:system/bin/sensors_daemon \\
    vendor/__VENDOR__/__DEVICE__/proprietary/bin/lightsensor:system/bin/lightsensor \\
    vendor/__VENDOR__/__DEVICE__/proprietary/bin/calibrate:system/bin/calibrate

# Wifi
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/etc/wlan/nvram.txt:system/etc/wlan/nvram.txt \\
    vendor/__VENDOR__/__DEVICE__/proprietary/etc/wlan/sdio-g-cdc-full11n-reclaim-roml-wme-aoe-pktfilter-keepalive-wapi.bin:system/etc/wlan/sdio-g-cdc-full11n-reclaim-roml-wme-aoe-pktfilter-keepalive-wapi.bin \\
    vendor/__VENDOR__/__DEVICE__/proprietary/etc/wlan/sdio-g-cdc-roml-reclaim-wme-apsta-idsup-idauth.bin:system/etc/wlan/sdio-g-cdc-roml-reclaim-wme-apsta-idsup-idauth.bin \\
    vendor/__VENDOR__/__DEVICE__/proprietary/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf
#    vendor/__VENDOR__/__DEVICE__/proprietary/etc/wlan/fw_bcm4325_apsta.bin:system/etc/wlan/fw_bcm4325_apsta.bin \\

# Bluetoooth
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/etc/bt/4329B1_002.002.023.0505.0522.hcd:system/etc/bt/4329B1_002.002.023.0505.0522.hcd \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libbluedroid.so:system/lib/libbluedroid.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/bin/patchram_only:system/bin/patchram_only

# Camera
PRODUCT_COPY_FILES += \\
   vendor/__VENDOR__/__DEVICE__/proprietary/lib/libcamera.so:obj/lib/libcamera.so \\
   vendor/__VENDOR__/__DEVICE__/proprietary/lib/libcamera.so:system/lib/libcamera.so \\
   vendor/__VENDOR__/__DEVICE__/proprietary/lib/liboemcamera.so:system/lib/liboemcamera.so \\
   vendor/__VENDOR__/__DEVICE__/proprietary/lib/libmmipl.so:system/lib/libmmipl.so \\
   vendor/__VENDOR__/__DEVICE__/proprietary/lib/libmmjpeg.so:system/lib/libmmjpeg.so

# qmuxd
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/bin/qmuxd:system/bin/qmuxd

# RIL
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libril.so:system/lib/libril.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libril-qc-1.so:system/lib/libril-qc-1.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/liboncrpc.so:system/lib/liboncrpc.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libdsm.so:system/lib/libdsm.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libqueue.so:system/lib/libqueue.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libdiag.so:system/lib/libdiag.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libauth.so:system/lib/libauth.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libcm.so:system/lib/libcm.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libmmgsdilib.so:system/lib/libmmgsdilib.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libgsdi_exp.so:system/lib/libgsdi_exp.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libgstk_exp.so:system/lib/libgstk_exp.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libnv.so:system/lib/libnv.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libpbmlib.so:system/lib/libpbmlib.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libwms.so:system/lib/libwms.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libwmsts.so:system/lib/libwmsts.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libqmi.so:system/lib/libqmi.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libdsutils.so:system/lib/libdsutils.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libidl.so:system/lib/libidl.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/liboem_rapi.so:system/lib/liboem_rapi.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libdss.so:system/lib/libdss.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/bin/rild:system/bin/rild

# Key
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/usr/keychars/qwerty.kcm.bin:system/usr/keychars/surf_keypad.kcm.bin \\
    vendor/__VENDOR__/__DEVICE__/proprietary/usr/keylayout/Austin_headset.kl:system/usr/keylayout/Austin_headset.kl \\
    vendor/__VENDOR__/__DEVICE__/proprietary/usr/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl \\
    vendor/__VENDOR__/__DEVICE__/proprietary/usr/keylayout/8k_handset.kl:system/usr/keylayout/8k_handset.kl
#    vendor/__VENDOR__/__DEVICE__/proprietary/usr/keychars/synaptics_capsensor.kcm.bin:system/usr/keychars/synaptics_capsensor.kcm.bin \\
#    vendor/__VENDOR__/__DEVICE__/proprietary/usr/keylayout/synaptics_capsensor.kl:system/usr/keylayout/synaptics_capsensor.kl \\

# OMX
#PRODUCT_COPY_FILES += \\
#    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libOmxCore.so:obj/lib/libOmxCore.so \\
#    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libOmxCore.so:system/lib/libOmxCore.so \\
#    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libOmxVidEnc.so:obj/lib/libOmxVidEnc.so \\
#    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \\
#    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libOmxVdec.so:obj/lib/libOmxVdec.so \\
#    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libOmxVdec.so:system/lib/libOmxVdec.so \\
#    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libOmxEvrcDec.so:system/lib/libOmxEvrcDec.so \\
#    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libOmxEvrcEnc.so:system/lib/libOmxEvrcEnc.so \\
#    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libOmxQcelp13Dec.so:system/lib/libOmxQcelp13Dec.so \\
#    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libOmxQcelp13Enc.so:system/lib/libOmxQcelp13Enc.so

# Quick Office
#PRODUCT_COPY_FILES += \\
#    vendor/__VENDOR__/__DEVICE__/proprietary/app/Quickoffice.apk:system/app/Quickoffice.apk

# Etc
PRODUCT_COPY_FILES += \\
     vendor/__VENDOR__/__DEVICE__/proprietary/etc/01_qcomm_omx.cfg:system/etc/01_qcomm_omx.cfg \\
     vendor/__VENDOR__/__DEVICE__/proprietary/etc/vold.fstab:system/etc/vold.fstab \\
     vendor/__VENDOR__/__DEVICE__/proprietary/etc/init.venue.fm.sh:system/etc/init.venue.fm.sh

EOF

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__VENDOR__/$VENDOR/g > ../../../vendor/$VENDOR/$DEVICE/BoardConfigVendor.mk
# Copyright (C) 2011 The CyanogenMod Project
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

# This file is generated by device/__VENDOR__/__DEVICE__/setup-makefiles.sh

USE_CAMERA_STUB := false
EOF

