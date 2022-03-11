#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

BUILD_BROKEN_MISSING_REQUIRED_MODULES := true

# Inherit some common Komodo stuff.
$(call inherit-product, vendor/komodo/config/common.mk)

# Komodo Stuff
KOMODO_OFFICIAL := false
KOMODO_GAPPS_TYPE := nogapps
KOMODO_VARIANT := RELEASE

# Some Build Flags
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_FACE_UNLOCK := false
TARGET_USES_BLUR := false
TARGET_INCLUDE_LIVE_WALLPAPERS := false

# Inherit from X00TD device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := komodo_X00TD
PRODUCT_DEVICE := X00TD
PRODUCT_BRAND := asus
PRODUCT_MODEL := Zenfone Max Pro M1
PRODUCT_MANUFACTURER := asus

PRODUCT_GMS_CLIENTID_BASE := android-asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=ASUS_X00T \
    PRODUCT_NAME=WW_X00T \
    PRIVATE_BUILD_DESC="coral-user 12 SQ1A.220205.002 8010174 release-keys"

# Build fingerprint
BUILD_FINGERPRINT := "google/coral/coral:12/SQ1A.220205.002/8010174:user/release-keys"
