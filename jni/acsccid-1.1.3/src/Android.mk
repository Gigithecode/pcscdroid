# Android.mk.  Manually derived by running 'configure' using options
#     --disable-libhal --disable-libusb
# on Ubuntu 9.10 and capturing the actions taken by make.
#

# Copyright (C) 2010  Free Software Foundation, Inc.
# This Android.mk is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY, to the extent permitted by law; without
# even the implied warranty of MERCHANTABILITY or FITNESS FOR A
# PARTICULAR PURPOSE.

LOCAL_ARM_MODE := arm
LOCAL_ARM_NEON := true
LOCAL_PATH := $(call my-dir)
common_cflags := \
	-DANDROID \
	-DHAVE_CONFIG_H

common_c_includes := \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/../ \
	$(LOCAL_PATH)/openct \
	$(LOCAL_PATH)/../../pcsc/src/ \
	$(LOCAL_PATH)/../../pcsc/src/PCSC/ \
$(LOCAL_PATH)/../../ccid-1.4.7/



#include $(CLEAR_VARS)

#LOCAL_SRC_FILES := \
#	src/debug.c \
#	src/error.c \
#	src/simclist.c \
#	src/strlcat.c \
#	src/strlcpy.c \
#	src/sys_unix.c \
#	src/utils.c \
#	src/winscard_msg.c \
#	src/winscard_clnt.c \
#	src/spy/libpcscspy.c

#LOCAL_CFLAGS		:= $(common_cflags) \
#	-DLIBPCSCLITE

#LOCAL_C_INCLUDES	:= $(common_c_includes)
#LOCAL_PRELINK_MODULE	:= false
#LOCAL_MODULE		:= libpcsclite

#include $(BUILD_STATIC_LIBRARY)




include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
ccid.c \
	commands.c \
	acr38cmd.c \
	ifdhandler.c \
	utils.c \
ccid_usb.c \
	openct/buffer.c \
	openct/checksum.c \
	openct/proto-t1.c \
	strlcpy.c \
	simclist.c \

	
LOCAL_CFLAGS		:= $(common_cflags) \
	-DLIBACSCCID
LOCAL_LDLIBS		:= -ldl
#LOCAL_STATIC_LIBRARIES := libusb
LOCAL_SHARED_LIBRARIES := libccid libusb1.0
LOCAL_C_INCLUDES	:= $(common_c_includes)
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../libusb
LOCAL_PRELINK_MODULE	:= false
LOCAL_MODULE		:= libacsccid
LOCAL_MODULE_TAGS	:= eng

include $(BUILD_SHARED_LIBRARY)

