LOCAL_PATH := $(call my-dir)

common_cflags := \
	-DANDROID \
	-DHAVE_CONFIG_H
	

include $(CLEAR_VARS)
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/../pcsc/src/PCSC \
	$(LOCAL_PATH)/../pcsc/src/ \

LOCAL_SRC_FILES:= \
pcsc_scan.c

LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../libusb

LOCAL_CFLAGS += -O0 -g

LOCAL_MODULE_TAGS := eng
LOCAL_LDLIBS := -lperl
LOCAL_MODULE := pcsc_scan
LOCAL_CFLAGS := $(common_cflags)
#LOCAL_STATIC_LIBRARIES := libpcsclite
LOCAL_SHARED_LIBRARIES := PCSC libpcsclite
LOCAL_PRELINK_MODULE := false
include $(BUILD_EXECUTABLE)



