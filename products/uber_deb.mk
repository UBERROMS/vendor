# Copyright (C) 2015 UBER Project
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

# Include UBER common configuration
include vendor/uber/config/common.mk

# Inherit AOSP device configuration for deb
$(call inherit-product, device/asus/deb/full_deb.mk)

# Override AOSP build properties
PRODUCT_NAME := uber_deb
PRODUCT_BRAND := google
PRODUCT_DEVICE := deb
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus

# Device Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME="deb" BUILD_FINGERPRINT="google/deb/deb:6.0.1/MOB30M/2862625:user/release-keys" PRIVATE_BUILD_DESC="deb-user 6.0.1 MOB30M 2862625 release-keys"

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/uber/prebuilt/bootanimation/bootanimation_1080.zip:system/media/bootanimation.zip
