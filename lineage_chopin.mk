#
# Copyright (C) 2018-2021 ArrowOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit common products
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configurations
$(call inherit-product, device/xiaomi/chopin/device.mk)

# Inherit common LineageOS configurations
TARGET_BOOT_ANIMATION_RES := 1080
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_BRAND := xiaomi
PRODUCT_DEVICE := chopin
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_NAME := lineage_chopin
PRODUCT_MODEL := POCO X3 GT

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := chopin
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="chopin-user 11 RP1A.200720.011 V12.5.7.0.RKPMIXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := POCO/chopin_global/chopin:11/RP1A.200720.011/V12.5.7.0.RKPMIXM:user/release-keys
