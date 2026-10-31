# APK disalin apa adanya lewat modul kelas ETC.
# Kelas APPS/prebuilt akan menulis ulang APK (uncompress JNI) sehingga
# blok signature v2 hilang dan PackageManager Android 17 menolak memindainya.
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := MiuiCamera_apk
LOCAL_MODULE_STEM := MiuiCamera.apk
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := prebuilt/MiuiCamera.apk
LOCAL_MODULE_PATH := $(TARGET_OUT)/priv-app/MiuiCamera
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := MiuiExtraPhoto_apk
LOCAL_MODULE_STEM := MiuiExtraPhoto.apk
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := prebuilt/MiuiExtraPhoto.apk
LOCAL_MODULE_PATH := $(TARGET_OUT)/priv-app/MiuiExtraPhoto
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := MiuiScanner_apk
LOCAL_MODULE_STEM := MiuiScanner.apk
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := prebuilt/MiuiScanner.apk
LOCAL_MODULE_PATH := $(TARGET_OUT)/priv-app/MiuiScanner
include $(BUILD_PREBUILT)
