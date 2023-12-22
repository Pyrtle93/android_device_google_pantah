#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/pantah/aosp_cheetah.mk)
$(call inherit-product, device/google/gs201/lineage_common.mk)

include device/google/pantah/cheetah/device-lineage.mk

# Matrixx
WITH_GMS := true
MATRIXX_MAINTAINER := Pyrtle93
TARGET_HAS_UDFPS := true
TARGET_INCLUDE_PIXEL_FRAMEWORK := true
TARGET_USES_GOOGLE_DIALER_CARRIER_SETTINGS := true
TARGET_FACE_UNLOCK_SUPPORTED := false
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_INCLUDE_NGA := true
TARGET_BOOT_ANIMATION_RES := 1440
TENSOR_PIXEL2 := true

# Parts
$(call inherit-product-if-exists, vendor/google/pixelparts/pixelparts.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 7 Pro
PRODUCT_NAME := lineage_cheetah

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=cheetah \
    PRIVATE_BUILD_DESC="cheetah-user 13 TQ3A.230901.001 10750268 release-keys"

BUILD_FINGERPRINT := google/cheetah/cheetah:13/TQ3A.230901.001/10750268:user/release-keys

$(call inherit-product, vendor/google/cheetah/cheetah-vendor.mk)
