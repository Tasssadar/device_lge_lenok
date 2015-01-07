## Specify phone tech before including full_phone
$(call inherit-product, vendor/omni/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := lenok

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/lge/lenok/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := lenok
PRODUCT_NAME := omni_lenok
PRODUCT_BRAND := lge
PRODUCT_MODEL := lenok
PRODUCT_MANUFACTURER := lge
