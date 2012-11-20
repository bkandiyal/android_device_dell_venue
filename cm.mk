# Release name
PRODUCT_RELEASE_NAME := DV

# Inherit AOSP device configuration for venue.
$(call inherit-product, device/dell/venue/venue.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cm_venue
PRODUCT_BRAND := dell
PRODUCT_DEVICE := venue
PRODUCT_MODEL := VENUE
PRODUCT_MANUFACTURER := DELL
