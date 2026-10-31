# Ganti kamera bawaan (Aperture) dengan MIUI Camera
PRODUCT_NO_CAMERA := true
#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

TARGET_REQUIRES_HIDL_CAS_HAL := false

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/gold/device.mk)

# Inherit some common Infinity X stuff.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

PRODUCT_NAME := infinity_gold
PRODUCT_DEVICE := gold
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 2312DRAABG

# Maintainer
INFINITY_MAINTAINER := "Asnalstan"

# Fingerprint on display
TARGET_HAS_UDFPS := false

# Google apps (false dulu untuk build pertama)
WITH_GAPPS := false

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Dolby app is the audio effects panel, so leave AudioFX out
TARGET_EXCLUDES_AUDIOFX := true

PRODUCT_PACKAGES += \
    LauncherOverlayGold \
    UpdaterOverlayGold

# MIUI Camera 5.0 Leica (prebuilt)
$(call inherit-product, device/xiaomi/gold/miuicamera/miuicamera.mk)
