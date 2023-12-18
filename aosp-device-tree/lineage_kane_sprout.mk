#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from kane_sprout device
$(call inherit-product, device/motorola/kane_sprout/device.mk)

PRODUCT_DEVICE := kane_sprout
PRODUCT_NAME := lineage_kane_sprout
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola one vision
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="kane_retail-user 11 RSA31.Q1-48-36-23 fa52e release-keys"

BUILD_FINGERPRINT := motorola/kane_retail/kane_sprout:11/RSA31.Q1-48-36-23/fa52e:user/release-keys
