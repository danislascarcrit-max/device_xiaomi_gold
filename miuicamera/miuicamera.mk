# Lib MIUI prebuilt disalin apa adanya; cek ELF/timestamp dimatikan
# MIUI Camera 5.0 Leica — APK via modul ETC (byte-exact), lib & XML via copy files.
MIUICAMERA_PATH := device/xiaomi/gold/miuicamera

MIUICAM_CAM_LIBS   := $(wildcard $(MIUICAMERA_PATH)/prebuilt/libs/MiuiCamera/*.so)
MIUICAM_EXTRA_LIBS := $(wildcard $(MIUICAMERA_PATH)/prebuilt/libs/MiuiExtraPhoto/*.so)

PRODUCT_PACKAGES += \
    MiuiCamera_apk \
    MiuiExtraPhoto_apk \
    MiuiScanner_apk

PRODUCT_COPY_FILES += \
    $(foreach f,$(MIUICAM_CAM_LIBS),$(f):system/priv-app/MiuiCamera/lib/arm64/$(notdir $(f))) \
    $(foreach f,$(MIUICAM_EXTRA_LIBS),$(f):system/priv-app/MiuiExtraPhoto/lib/arm64/$(notdir $(f))) \
    $(MIUICAMERA_PATH)/permissions/privapp-permissions-miuicamera.xml:system/etc/permissions/privapp-permissions-miuicamera.xml \
    $(MIUICAMERA_PATH)/permissions/miuicamera-hiddenapi-package-whitelist.xml:system/etc/sysconfig/miuicamera-hiddenapi-package-whitelist.xml \
    $(MIUICAMERA_PATH)/permissions/default-permissions-miuicamera.xml:system/etc/default-permissions/default-permissions-miuicamera.xml
