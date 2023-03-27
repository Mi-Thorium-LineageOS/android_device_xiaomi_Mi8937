LOCAL_PATH := $(call my-dir)

# ------------------------------------------------------------------------------
#                Make the shared library (libqomx_core)
# ------------------------------------------------------------------------------

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional

LOCAL_CFLAGS := -Werror \
                   -g -O0

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../qexif

LOCAL_HEADER_LIBRARIES := libutils_headers
LOCAL_HEADER_LIBRARIES += media_plugin_headers

LOCAL_INC_FILES := qomx_core.h \
                   QOMX_JpegExtensions.h

LOCAL_SRC_FILES := qomx_core.c

LOCAL_MODULE           := libqomx_core
LOCAL_ODM_MODULE := true
LOCAL_PRELINK_MODULE   := false
LOCAL_SHARED_LIBRARIES := libcutils libdl liblog

LOCAL_32_BIT_ONLY := true

MI8937_CAM_QOMXCORE_32_BIT_ONLY := $(LOCAL_32_BIT_ONLY)
MI8937_CAM_QOMXCORE_CFLAGS := $(LOCAL_CFLAGS)
MI8937_CAM_QOMXCORE_C_INCLUDES := $(LOCAL_C_INCLUDES)
MI8937_CAM_QOMXCORE_HEADER_LIBRARIES := $(LOCAL_HEADER_LIBRARIES)
MI8937_CAM_QOMXCORE_INC_FILES := $(LOCAL_INC_FILES)
MI8937_CAM_QOMXCORE_MODULE := $(LOCAL_MODULE)
MI8937_CAM_QOMXCORE_MODULE_TAGS := $(LOCAL_MODULE_TAGS)
MI8937_CAM_QOMXCORE_PATH := $(LOCAL_PATH)
MI8937_CAM_QOMXCORE_PRELINK_MODULE := $(LOCAL_PRELINK_MODULE)
MI8937_CAM_QOMXCORE_SHARED_LIBRARIES := $(LOCAL_SHARED_LIBRARIES)
MI8937_CAM_QOMXCORE_SRC_FILES := $(LOCAL_SRC_FILES)
MI8937_CAM_QOMXCORE_ODM_MODULE := $(LOCAL_ODM_MODULE)
include $(CLEAR_VARS)

include $(CLEAR_VARS)
LOCAL_32_BIT_ONLY := $(MI8937_CAM_QOMXCORE_32_BIT_ONLY)
LOCAL_CFLAGS := $(MI8937_CAM_QOMXCORE_CFLAGS)
LOCAL_C_INCLUDES := $(MI8937_CAM_QOMXCORE_C_INCLUDES)
LOCAL_HEADER_LIBRARIES := $(MI8937_CAM_QOMXCORE_HEADER_LIBRARIES)
LOCAL_INC_FILES := $(MI8937_CAM_QOMXCORE_INC_FILES)
LOCAL_MODULE_TAGS := $(MI8937_CAM_QOMXCORE_MODULE_TAGS)
LOCAL_PRELINK_MODULE := $(MI8937_CAM_QOMXCORE_PRELINK_MODULE)
LOCAL_SHARED_LIBRARIES := $(MI8937_CAM_QOMXCORE_SHARED_LIBRARIES)
LOCAL_SRC_FILES := $(MI8937_CAM_QOMXCORE_SRC_FILES)
LOCAL_ODM_MODULE := $(MI8937_CAM_QOMXCORE_ODM_MODULE)

ifeq ($(MI8937_CAM_USE_RENAMED_BLOBS_W),true)
LOCAL_CFLAGS += -DRENAME_BLOBS
endif

LOCAL_CFLAGS += -DODM_WINGTECH
LOCAL_MODULE := libWomx_core
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_32_BIT_ONLY := $(MI8937_CAM_QOMXCORE_32_BIT_ONLY)
LOCAL_CFLAGS := $(MI8937_CAM_QOMXCORE_CFLAGS)
LOCAL_C_INCLUDES := $(MI8937_CAM_QOMXCORE_C_INCLUDES)
LOCAL_HEADER_LIBRARIES := $(MI8937_CAM_QOMXCORE_HEADER_LIBRARIES)
LOCAL_INC_FILES := $(MI8937_CAM_QOMXCORE_INC_FILES)
LOCAL_MODULE_TAGS := $(MI8937_CAM_QOMXCORE_MODULE_TAGS)
LOCAL_PRELINK_MODULE := $(MI8937_CAM_QOMXCORE_PRELINK_MODULE)
LOCAL_SHARED_LIBRARIES := $(MI8937_CAM_QOMXCORE_SHARED_LIBRARIES)
LOCAL_SRC_FILES := $(MI8937_CAM_QOMXCORE_SRC_FILES)
LOCAL_ODM_MODULE := $(MI8937_CAM_QOMXCORE_ODM_MODULE)

ifeq ($(MI8937_CAM_USE_RENAMED_BLOBS_U),true)
LOCAL_CFLAGS += -DRENAME_BLOBS
endif

LOCAL_CFLAGS += -DDEVICE_ULYSSE
LOCAL_MODULE := libUomx_core
include $(BUILD_SHARED_LIBRARY)
