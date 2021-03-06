#
# Copyright (C) 2017-2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit device configuration
$(call inherit-product, device/xiaomi/platina/device.mk)

# Inherit some common Corvus OS stuff.
$(call inherit-product, vendor/xtended/config/common_full_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="platina" \
    TARGET_DEVICE="platina" \
    PRIVATE_BUILD_DESC="platina-user 10 QKQ1.190910.002 V11.0.1.0.QDTCNXM release-keys"

BUILD_FINGERPRINT := "google/coral/coral:10/QQ2A.200501.001.B2/6352890:user/release-keys"

TARGET_VENDOR_PRODUCT_NAME := platina
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Maintainer
PRODUCT_PROPERTY_OVERRIDES += \
    ro.xtended.maintainer=1cecreamm

TARGET_BOOT_ANIMATION_RES := 1080

# Official
XTENDED_BUILD_TYPE := OFFICIAL

# Device identifier
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := xtended_platina
PRODUCT_DEVICE := platina
PRODUCT_MODEL := MI 8 Lite
