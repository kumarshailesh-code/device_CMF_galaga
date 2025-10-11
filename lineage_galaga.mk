#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from galaga device
$(call inherit-product, device/nothing/galaga/device.mk)

PRODUCT_NAME := lineage_galaga
PRODUCT_DEVICE := galaga
PRODUCT_BRAND := Nothing
PRODUCT_MANUFACTURER := Nothing
PRODUCT_MODEL := A001

PRODUCT_GMS_CLIENTID_BASE := android-nothing

DEVICE_CODENAME := galaga

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="Galaga 15 AP3A.240905.015.A2 2507151813 release-keys" \
    BuildFingerprint=Nothing/Galaga/Galaga:15/AP3A.240905.015.A2/2507151813:user/release-keys \
    DeviceProduct=$(DEVICE_CODENAME)

# OTA
TARGET_INCLUDE_UPDATER := true
PRODUCT_PACKAGES += \
    Updater

TARGET_SUPPORTS_BLUR := true
TARGET_HAS_UDFPS := true

# GAPPS
WITH_GAPPS := true
