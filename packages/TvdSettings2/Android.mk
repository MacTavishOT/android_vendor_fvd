LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_JAVA_LIBRARIES := bouncycastle conscrypt telephony-common
LOCAL_STATIC_JAVA_LIBRARIES := android-support-v4 android-support-v13 jsr305 libksoap2

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := \
        $(call all-java-files-under, src) \
LOCAL_ASSET_DIR := $(LOCAL_PATH)/assets
LOCAL_PACKAGE_NAME := TvdSettings2
LOCAL_CERTIFICATE := platform

LOCAL_OVERRIDES_PACKAGES := Settings

LOCAL_PROGUARD_FLAG_FILES := proguard.flags

LOCAL_AAPT_FLAGS += -c mdpi -c xhdpi -c zz_ZZ

include $(BUILD_PACKAGE)

##################################################
include $(CLEAR_VARS)

LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := libksoap2:libs/ksoap2-android.jar

include $(BUILD_MULTI_PREBUILT)
# Use the folloing include to make our test apk.
# include $(call all-makefiles-under,$(LOCAL_PATH))
