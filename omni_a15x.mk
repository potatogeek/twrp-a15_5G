#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from a15x device
$(call inherit-product, device/samsung/a15x/device.mk)

PRODUCT_DEVICE := a15x
PRODUCT_NAME := omni_a15x
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A156M
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a15xub-user 13 TP1A.220624.014 A156MUBS5BYD1 release-keys"

BUILD_FINGERPRINT := samsung/a15xub/a15x:13/TP1A.220624.014/A156MUBS5BYD1:user/release-keys
