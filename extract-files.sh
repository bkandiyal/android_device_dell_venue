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

rm -rf ../../../vendor/$VENDOR/$DEVICE
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/etc
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/wlan
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/bt
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/dhcpcd
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/firmware
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/kaf
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/hw
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/egl
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/modules
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/usr
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/usr/keychars
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/usr/keylayout


#kibuuka jun 6 2012
# HAL - disabling pull - these are being successfully built using cm9 hardware/qcom/display overlay + little headers magic
# display overlay - > https://github.com/CyanogenMod/android_hardware_qcom_display
# header patches - > can't remember source, so including them in headers.zip in  device/dell/streak/
# extract -> bionic/libc/kernel/common/linux replacing existing ones (if any)
#adb pull /system/lib/hw/copybit.qsd8k.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/hw/copybit.qsd8k.so
#adb pull /system/lib/hw/gralloc.default.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/hw/gralloc.default.so
#adb pull /system/lib/hw/gralloc.qsd8k.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/hw/gralloc.qsd8k.so

#kibuuka jun 6 2012
# 3D - disabling pulling it - using adreno200 ICS drivers instead
# get these from here - >  https://developer.qualcomm.com/file/10127
#adb pull /system/lib/egl/libEGL_adreno200.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/egl/libEGL_adreno200.so
#adb pull /system/lib/egl/libGLESv1_CM_adreno200.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/egl/libGLESv1_CM_adreno200.so
#adb pull /system/lib/egl/libq3dtools_adreno200.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/egl/libq3dtools_adreno200.so
#adb pull /system/lib/egl/libGLESv2_adreno200.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/egl/libGLESv2_adreno200.so
#adb pull /system/lib/egl/egl.cfg ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/egl/egl.cfg
#adb pull /system/etc/firmware/yamato_pfp.fw ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/firmware/yamato_pfp.fw
#adb pull /system/etc/firmware/yamato_pm4.fw ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/firmware/yamato_pm4.fw
#adb pull /system/lib/libgsl.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libgsl.so

# GPS
adb pull /system/lib/libcommondefs.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libcommondefs.so
adb pull /system/lib/libloc_api-rpc-qc.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libloc_api-rpc-qc.so

# Lights
adb pull /system/lib/hw/lights.qsd8k.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/hw/lights.qsd8k.so

# Sensor
adb pull /system/bin/sensors_daemon ../../../vendor/$VENDOR/$DEVICE/proprietary/bin/sensors_daemon
adb pull /system/bin/lightsensor ../../../vendor/$VENDOR/$DEVICE/proprietary/bin/lightsensor
adb pull /system/bin/calibrate ../../../vendor/$VENDOR/$DEVICE/proprietary/bin/calibrate

# qmuxd
adb pull /system/bin/qmuxd ../../../vendor/$VENDOR/$DEVICE/proprietary/bin/qmuxd

#busybox & su
adb pull /system/xbin/busybox ../../../vendor/$VENDOR/$DEVICE/proprietary/xbin/buysybox
adb pull /system/xbin/su ../../../vendor/$VENDOR/$DEVICE/proprietary/xbin/su

# Wifi
adb pull /system/etc/wlan/nvram.txt ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/wlan/nvram.txt
#adb pull /system/etc/wlan/fw_bcm4325_apsta.bin ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/wlan/fw_bcm4325_apsta.bin
#adb pull /system/etc/wlan/sdio-g-cdc-reclaim-idsup-wme-pktfilter-keepalive-aoe-toe-ccx-wapi.bin ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/wlan/sdio-g-cdc-reclaim-idsup-wme-pktfilter-keepalive-aoe-toe-ccx-wapi.bin
#adb pull /system/etc/wlan/sdio-g-cdc-reclaim-idsup-wme-pktfilter-keepalive-aoe-toe-ccx-wapi-nowps.bin ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/wlan/sdio-g-cdc-reclaim-idsup-wme-pktfilter-keepalive-aoe-toe-ccx-wapi-nowps.bin
#adb pull /system/etc/wlan/sdio-g-cdc-reclaim-idsup-wme-pktfilter-keepalive-aoe-toe-ccx-wapi_rc63.1.bin ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/wlan/sdio-g-cdc-reclaim-idsup-wme-pktfilter-keepalive-aoe-toe-ccx-wapi_rc63.1.bin
#adb pull /system/etc/wlan/sdio-mfgtest-g-cdc-seqcmds.bin ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/wlan/sdio-mfgtest-g-cdc-seqcmds.bin
adb pull /system/etc/wlan/sdio-g-cdc-full11n-reclaim-roml-wme-aoe-pktfilter-keepalive-wapi.bin ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/wlan/sdio-g-cdc-full11n-reclaim-roml-wme-aoe-pktfilter-keepalive-wapi.bin
adb pull /system/etc/wlan/sdio-g-cdc-roml-reclaim-wme-apsta-idsup-idauth.bin ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/wlan/sdio-g-cdc-roml-reclaim-wme-apsta-idsup-idauth.bin
adb pull /system/etc/dhcpcd/dhcpcd.conf ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/dhcpcd/dhcpcd.conf

# Bluetoooth
adb pull /system/etc/bt/4329B1_002.002.023.0505.0522.hcd ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/bt/4329B1_002.002.023.0505.0522.hcd
adb pull /system/lib/libbluedroid.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libbluedroid.so
adb pull /system/bin/patchram_only ../../../vendor/$VENDOR/$DEVICE/proprietary/bin/patchram_only

# Camera
adb pull /system/lib/libcamera.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libcamera.so
adb pull /system/lib/liboemcamera.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/liboemcamera.so
adb pull /system/lib/libmmipl.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libmmipl.so
adb pull /system/lib/libmmjpeg.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libmmjpeg.so

# RIL
adb pull /system/lib/libril.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libril.so
adb pull /system/lib/libril-qc-1.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libril-qc-1.so
adb pull /system/lib/libril-qcril-hook-oem.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libril-qcril-hook-oem.so
adb pull /system/lib/liboncrpc.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/liboncrpc.so
adb pull /system/lib/libdsm.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libdsm.so
adb pull /system/lib/libqueue.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libqueue.so
adb pull /system/lib/libdiag.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libdiag.so
adb pull /system/lib/libauth.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libauth.so
adb pull /system/lib/libcm.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libcm.so
adb pull /system/lib/libmmgsdilib.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libmmgsdilib.so
adb pull /system/lib/libgsdi_exp.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libgsdi_exp.so
adb pull /system/lib/libgstk_exp.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libgstk_exp.so
adb pull /system/lib/libnv.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libnv.so
adb pull /system/lib/libpbmlib.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libpbmlib.so
adb pull /system/lib/libwms.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libwms.so
adb pull /system/lib/libwmsts.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libwmsts.so
adb pull /system/lib/libqmi.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libqmi.so
adb pull /system/lib/libdsutils.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libdsutils.so
adb pull /system/lib/libidl.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libidl.so
adb pull /system/lib/liboem_rapi.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/liboem_rapi.so
adb pull /system/lib/libdss.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libdss.so
adb pull /system/bin/rild ../../../vendor/$VENDOR/$DEVICE/proprietary/bin/rild

# Key
adb pull /system/usr/keychars/synaptics_capsensor.kcm.bin ../../../vendor/$VENDOR/$DEVICE/proprietary/usr/keychars/synaptics_capsensor.kcm.bin
adb pull /system/usr/keychars/qwerty.kcm.bin ../../../vendor/$VENDOR/$DEVICE/proprietary/usr/keychars/qwerty.kcm.bin
adb pull /system/usr/keylayout/synaptics_capsensor.kl ../../../vendor/$VENDOR/$DEVICE/proprietary/usr/keylayout/synaptics_capsensor.kl
adb pull /system/usr/keylayout/Austin_headset.kl ../../../vendor/$VENDOR/$DEVICE/proprietary/usr/keylayout/Austin_headset.kl
adb pull /system/usr/keylayout/surf_keypad.kl ../../../vendor/$VENDOR/$DEVICE/proprietary/usr/keylayout/surf_keypad.kl
adb pull /system/usr/keylayout/8k_handset.kl ../../../vendor/$VENDOR/$DEVICE/proprietary/usr/keylayout/8k_handset.kl

# Quick Office
#adb pull /system/app/Quickoffice.apk: ../../../vendor/$VENDOR/$DEVICE/proprietary/app/Quickoffice.apk

# Etc
adb pull /system/etc/01_qcomm_omx.cfg ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/01_qcomm_omx.cfg
adb pull /system/etc/vold.fstab ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/vold.fstab
adb pull /system/etc/init.venue.fm.sh ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/init.venue.fm.sh
