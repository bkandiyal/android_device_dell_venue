adb shell dumpsys media.camera -v 1
adb shell setprop log.tag.Camera-JNI VERBOSE
adb shell chmod 0777 /dev/msm_camera/control0
adb shell chmod 0777 /dev/msm_camera/config0
adb shell chmod 0777 /dev/msm_camera/config1
adb shell chmod 0777 /dev/msm_camera/control1
adb shell chmod 0777 /dev/msm_camera/frame0
adb shell chmod 0777 /dev/msm_camera/frame1
adb shell chmod 0777 /dev/graphics/fb0
adb shell
