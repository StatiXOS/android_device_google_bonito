# Inherit some common StatiXOS stuff.
$(call inherit-product, vendor/statix/config/common.mk)
$(call inherit-product, vendor/statix/config/gsm.mk)

# Inherit device configuration
$(call inherit-product, device/google/bonito/aosp_sargo.mk)

-include device/google/bonito/device-statix.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := statix_sargo
PRODUCT_MODEL := Pixel 3a
PRODUCT_BRAND := google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=sargo \
    PRIVATE_BUILD_DESC="sargo-user 11 RQ3A.210905.001 7511028 release-keys"

BUILD_FINGERPRINT := google/sargo/sargo:11/RQ3A.210905.001/7511028:user/release-keys

$(call inherit-product, vendor/google/sargito/sargo/sargo-vendor.mk)
