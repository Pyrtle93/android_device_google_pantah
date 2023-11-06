#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Ancient-Roms stuff.
TARGET_DISABLE_EPPE := true
 $(call inherit-product, vendor/ancient/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/pantah/aosp_cheetah.mk)
$(call inherit-product, device/google/gs201/ancient_common.mk)

include device/google/pantah/cheetah/device-ancient.mk

# Ancient-Roms Xtras
TARGET_BOOT_ANIMATION_RES := 1440
ANCIENT_GAPPS := true
ANCIENT_OFFICIAL :=true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_INCLUDE_PIXEL_FRAMEWORK := false

# Parts
$(call inherit-product-if-exists, vendor/google/pixelparts/pixelparts.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 7 Pro
PRODUCT_NAME := ancient_cheetah

# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=cheetah \
    PRIVATE_BUILD_DESC="cheetah-user 13 TQ3A.230901.001 10750268 release-keys"

BUILD_FINGERPRINT := google/cheetah/cheetah:13/TQ3A.230901.001/10750268:user/release-keys

$(call inherit-product, vendor/google/cheetah/cheetah-vendor.mk)
