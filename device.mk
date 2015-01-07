$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product-if-exists, vendor/lge/lenok/lenok-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/lenok/overlay

LOCAL_PATH := device/lge/lenok
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/fstab.lenok:root/fstab.lenok \
    $(LOCAL_PATH)/init.recovery.lenok.rc:root/init.recovery.lenok.rc

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_lenok
PRODUCT_DEVICE := lenok
