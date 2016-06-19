# Inherit AOSP device configuration for mako
$(call inherit-product, device/lge/mako/full_mako.mk)

# Inherit common product files.
$(call inherit-product, vendor/uber/config/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := uber_mako
PRODUCT_BRAND := google
PRODUCT_DEVICE := mako
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME="mako" BUILD_FINGERPRINT="google/mako/mako:6.0.1/MOB30M/2862625:user/release-keys" PRIVATE_BUILD_DESC="mako-user 6.0.1 MOB30M 2862625 release-keys"

# Boot animation
PRODUCT_COPY_FILES += \
    vendor/uber/prebuilt/bootanimation/bootanimation_1080.zip:system/media/bootanimation.zip
