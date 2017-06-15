# Inherit AOSP device configuration for angler.
$(call inherit-product, device/google/marlin/aosp_marlin.mk)

# Inherit common product files.
$(call inherit-product, vendor/uber/config/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := uber_marlin
PRODUCT_BRAND := Google
PRODUCT_DEVICE := marlin
PRODUCT_MODEL := Pixel XL
PRODUCT_MANUFACTURER := Google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=marlin \
    BUILD_FINGERPRINT=google/marlin/marlin:7.1.2/NKG47L/4025097:user/release-keys \
    PRIVATE_BUILD_DESC="marlin-user 7.1.2 NKG47L 4025097 release-keys"


# Boot animation
PRODUCT_COPY_FILES += \
    vendor/uber/prebuilt/bootanimation/bootanimation_1080.zip:system/media/bootanimation.zip

