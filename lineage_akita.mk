#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-FileCopyrightText: The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
DEVICE_CODENAME := akita
DEVICE_PATH := device/google/akita
VENDOR_PATH := vendor/google/akita
$(call inherit-product, $(DEVICE_PATH)/aosp_$(DEVICE_CODENAME).mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 8a
PRODUCT_NAME := lineage_$(DEVICE_CODENAME)

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

AXION_CAMERA_REAR_INFO := 64,13
AXION_CAMERA_FRONT_INFO := 13
AXION_PROCESSOR := Google_Tensor_G3
AXION_MAINTAINER := IVZXNSLVIP

TARGET_INCLUDE_AXFX := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="akita-user 16 BP4A.260205.001 14624666 release-keys" \
    BuildFingerprint=google/akita/akita:16/BP4A.260205.001/14624666:user/release-keys \
    DeviceProduct=$(DEVICE_CODENAME)

$(call inherit-product, $(VENDOR_PATH)/$(DEVICE_CODENAME)-vendor.mk)
