LOCAL_PATH := device/allview/x2xtreme

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Recovery allowed devices
TARGET_OTA_ASSERT_DEVICE := x2xtreme

PRODUCT_PACKAGES += \
   libmtk_symbols \
   libstlport

# Lights
PRODUCT_PACKAGES += \
    lights.mt6795

# Audio
PRODUCT_COPY_FILES += \

# Media
PRODUCT_COPY_FILES += \

# Keyboard layout
PRODUCT_COPY_FILES += \

# Ramdisk
PRODUCT_COPY_FILES += \
    
# TWRP
PRODUCT_COPY_FILES += \

# Thermal
PRODUCT_COPY_FILES += \

# Dalvik/HWUI
$(call inherit-product, frameworks/native/build/phone-xxhdpi-3072-dalvik-heap.mk)

# Common stuff
$(call inherit-product, vendor/mtk/config/common.mk)

# Vendor
$(call inherit-product, vendor/allview/x2xtreme/x2xtreme-vendor.mk)