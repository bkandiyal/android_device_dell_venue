LOCAL_PATH := $(call my-dir)
LIBCAMERA_BUILD := venue
include $(call all-subdir-makefiles)

include $(CLEAR_VARS)

LOCAL_C_FLAGS += -O3
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw
LOCAL_MODULE := camera.venue
LOCAL_SRC_FILES := cameraHal.cpp
LOCAL_PRELINK_MODULE := false
CAMERA_LIB := camera-inc

ifeq ($(LIBCAMERA_BUILD),venue)
CAMERA_LIB := camera-venue
endif

TARGET_GLOBAL_LD_DIRS += -L$(LOCAL_PATH) -l${CAMERA_LIB}
LOCAL_SHARED_LIBRARIES := liblog libdl libutils libcamera_client libbinder libcutils libhardware
LOCAL_C_INCLUDES := frameworks/base/services/ frameworks/base/include
LOCAL_C_INCLUDES += hardware/libhardware/include/ hardware/libhardware/modules/gralloc/

include $(BUILD_SHARED_LIBRARY)
