#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from dipper device
$(call inherit-product, device/xiaomi/dipper/device.mk)

PRODUCT_DEVICE := dipper
PRODUCT_NAME := omni_dipper
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 8
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="evolution_dipper-userdebug 13 TQ1A.230205.002 1676133281 release-keys"

BUILD_FINGERPRINT := Xiaomi/evolution_dipper/dipper:13/TQ1A.230205.002/math02111631:userdebug/release-keys
