# Inherit some common StatiXOS stuff.
$(call inherit-product, vendor/statix/config/common.mk)
$(call inherit-product, vendor/statix/config/gsm.mk)

# Inherit device configuration
$(call inherit-product, device/google/bonito/aosp_bonito.mk)

-include device/google/bonito/device-statix.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := statix_bonito
PRODUCT_MODEL := Pixel 3a XL
PRODUCT_BRAND := google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=bonito \
    PRIVATE_BUILD_DESC="bonito-user 11 RQ3A.210905.001 7511028 release-keys"

BUILD_FINGERPRINT := google/bonito/bonito:11/RQ3A.210905.001/7511028:user/release-keys

$(call inherit-product, vendor/google/bonito/bonito-vendor.mk)
