#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/samsung/a15x
# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd
# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Health HAL
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service \
    libhealthd.$(PRODUCT_PLATFORM)


# TWRP TZData
PRODUCT_PACKAGES_ENG += \
    tzdata_twrp

# EROFS Tools
PRODUCT_HOST_PACKAGES_ENG += \
    liberofs \
    mkfs.erofs \
    make_erofs \
    dump.erofs \
    fsck.erofs

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += \
    ro.product.system.model \
    ro.product.vendor.model \
    ro.product.odm.model \
    ro.product.model \
    ro.product.product.model \
    ro.product.system_ext.model