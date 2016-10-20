LOCAL_PATH := $(call my-dir)

common_cflags := \
	-DANDROID \
	-DHAVE_CONFIG_H
	

include $(CLEAR_VARS)
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/src \
	$(LOCAL_PATH)/../pcsc/src/PCSC \
	$(LOCAL_PATH)/../pcsc/src/ \

LOCAL_SRC_FILES:= \
	src/ccid.c \
        src/commands.c \
        src/ifdhandler.c \
        src/utils.c \
        src/ccid_usb.c \
        src/towitoko/atr.c \
        src/towitoko/pps.c \
        src/openct/buffer.c \
        src/openct/checksum.c \
        src/openct/proto-t1.c \
        src/tokenparser.c \
        src/strlcpy.c \
        src/debug.c \

LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../libusb

LOCAL_MODULE_TAGS = eng
LOCAL_MODULE:= libccid
LOCAL_SHARED_LIBRARIES := libusb1.0 libpcsclite 
LOCAL_PRELINK_MODULE := false
include $(BUILD_SHARED_LIBRARY)



