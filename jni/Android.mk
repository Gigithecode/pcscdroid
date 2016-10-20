LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
#LOCAL_ARM_MODE := arm
#LOCAL_ARM_NEON := true
#LOCAL_MODULE     := msc
#LOCAL_SRC_FILES  := libmsc.so
LOCAL_LDLIBS     := -llog -L$(SYSROOT)/usr/lib 

#include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)

include $(LOCAL_PATH)/pcsc/Android.mk \
	$(LOCAL_PATH)/libusb/android/jni/Android.mk \
	$(LOCAL_PATH)/ccid-1.4.7/Android.mk \
	$(LOCAL_PATH)/acsccid-1.1.3/Android.mk \
	$(LOCAL_PATH)/pcsc-tools/Android.mk \
	$(LOCAL_PATH)/pcsc-perl-1.4.14/Android.mk

