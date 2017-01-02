# Copyright (C) 2016 The CyanogenMod Project
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

$(call inherit-product, device/blu/purexl/full_purexl.mk)
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_NAME := cm_purexl
BOARD_VENDOR := blu
PRODUCT_DEVICE := purexl

PRODUCT_MANUFACTURER := BLU
PRODUCT_MODEL := Pure XL

PRODUCT_BRAND := BLU
TARGET_VENDOR := blu
TARGET_VENDOR_PRODUCT_NAME := Pure XL
TARGET_VENDOR_DEVICE_NAME := purexl