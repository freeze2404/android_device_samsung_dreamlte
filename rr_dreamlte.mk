#
# Copyright (C) 2019 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from dreamlte device
$(call inherit-product, device/samsung/dreamlte/device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common RR stuff.
$(call inherit-product, vendor/rr/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := dreamlte
PRODUCT_NAME := rr_dreamlte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G950F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung
PRODUCT_SHIPPING_API_LEVEL := 29
ANDROID_MAJOR_VERSION := 10

# Use the latest approved GMS identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=dreamltexx \
    PRIVATE_BUILD_DESC="dreamltexx-user 8.0.0 R16NW G950FXXU1CRC7 release-keys"

BUILD_FINGERPRINT := samsung/dreamltexx/dreamlte:8.0.0/R16NW/G950FXXU1CRC7:user/release-keys
