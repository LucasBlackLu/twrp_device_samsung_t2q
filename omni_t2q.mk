#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from t2q device
$(call inherit-product, device/samsung/t2q/device.mk)

PRODUCT_DEVICE := t2q
PRODUCT_NAME := omni_t2q
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G9960
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="t2qzhx-user 14 UP1A.231005.007 G9960ZHU7GXDE release-keys"

BUILD_FINGERPRINT := samsung/t2qzhx/t2q:11/RP1A.200720.012/G9960ZHU7GXDE:user/release-keys
