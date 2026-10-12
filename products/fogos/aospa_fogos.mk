#
# SPDX-FileCopyrightText: Paranoid Android
# SPDX-License-Identifier: Apache-2.0
#

ifeq (aospa_fogos,$(TARGET_PRODUCT))

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from the custom device configuration.
$(call inherit-product, device/motorola/fogos/device.mk)

# Inherit from the AOSPA configuration.
$(call inherit-product, vendor/aospa/target/product/aospa-target.mk)

PRODUCT_BRAND := motorola
PRODUCT_DEVICE := fogos
PRODUCT_MANUFACTURER := motorola
PRODUCT_MODEL := moto g34 5G
PRODUCT_NAME := aospa_fogos

PRODUCT_GMS_CLIENTID_BASE := android-motorola

# Boot animation resolution.
TARGET_BOOT_ANIMATION_RES := 720

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceProduct=fogos_g

endif
