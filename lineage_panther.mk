#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/pantah/aosp_panther.mk)
$(call inherit-product, device/google/gs201/lineage_common.mk)

include device/google/pantah/panther/device-lineage.mk

# AlphaDroid Xtras
WITH_GAPPS := true
TARGET_HAS_UDFPS := true
TARGET_INCLUDE_PIXEL_FRAMEWORK := true
TARGET_ENABLE_BLUR := true
TARGET_FACE_UNLOCK_SUPPORTED := false
TARGET_USES_GOOGLE_DIALER_CARRIER_SETTINGS :=true
TARGET_SUPPORTS_QUICK_TAP := true
# Included by default
TARGET_INCLUDE_GOOGLE_SETUP := true
TARGET_INCLUDE_GOOGLE_FILE_MANAGER := true
TARGET_INCLUDE_GOOGLE_BATTERY_STATS := true
TARGET_INCLUDE_GOOGLE_CONTACTS := true
TARGET_INCLUDE_GOOGLE_MESSAGING := true
TARGET_INCLUDE_GOOGLE_CALENDAR := true
TARGET_INCLUDE_GBOARD := true
TARGET_INCLUDE_GOOGLE_APP := true
TARGET_INCLUDE_GOOGLE_PHOTOS := true
TARGET_INCLUDE_ANDROID_AUTO := true
TARGET_INCLUDE_GOOGLE_CALCULATOR := true
TARGET_INCLUDE_GOOGLE_CHROME := true
TARGET_INCLUDE_GOOGLE_CLOCK := true
TARGET_INCLUDE_GOOGLE_MARKUP := true
TARGET_INCLUDE_GOOGLE_SOUNDS := true

# Debugging
TARGET_INCLUDE_MATLOG := true
TARGET_DEFAULT_ADB_ENABLED := true

# Maintainer
ALPHA_BUILD_TYPE := Official
ALPHA_MAINTAINER := Pyrtle93

# Parts
$(call inherit-product-if-exists, vendor/google/pixelparts/pixelparts.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 7
PRODUCT_NAME := lineage_panther

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=panther \
    PRIVATE_BUILD_DESC="panther-user 13 TQ3A.230901.001 10750268 release-keys"

BUILD_FINGERPRINT := google/panther/panther:13/TQ3A.230901.001/10750268:user/release-keys

$(call inherit-product, vendor/google/panther/panther-vendor.mk)
