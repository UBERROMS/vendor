# Inherit AOSP device configuration forsailfish.
$(call inherit-product, device/google/marlin/aosp_sailfish.mk)

# Inherit common product files.
$(call inherit-product, vendor/uber/config/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := uber_sailfish
PRODUCT_BRAND := Google
PRODUCT_DEVICE := sailfish
PRODUCT_MODEL := Pixel
PRODUCT_MANUFACTURER := Google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=sailfish \
    BUILD_FINGERPRINT=google/sailfish/sailfish:7.1.2/NKG47L/4025097:user/release-keys \
    PRIVATE_BUILD_DESC="sailfish-user 7.1.2 NKG47L 4025097 release-keys"

# Boot animation
PRODUCT_COPY_FILES += \
    vendor/uber/prebuilt/bootanimation/bootanimation_1080.zip:system/media/bootanimation.zip

