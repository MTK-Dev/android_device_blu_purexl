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
    $(LOCAL_PATH)/configs/audio/audio_device.xml:system/etc/audio_device.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_configuration.xml:system/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/a2dp_audio_policy_configuration.xml:/system/etc/a2dp_audio_policy_configuration.xml

# Media
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
	$(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

# Keyboard layout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/AVRCP.kl:system/usr/keylayout/AVRCP.kl

# Ramdisk
PRODUCT_COPY_FILES += \
    # Will be updated after cleanup
	
# TWRP
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/etc/twrp.fstab:recovery/root/etc/twrp.fstab

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal/.ht120.mtc:system/etc/.tp/.ht120.mtc \
    $(LOCAL_PATH)/configs/thermal/thermal.conf:system/etc/.tp/thermal.conf \
    $(LOCAL_PATH)/configs/thermal/thermal.off.conf:system/etc/.tp/thermal.off.conf \
    $(LOCAL_PATH)/configs/thermal/.thermal_policy_00:system/etc/.tp/.thermal_policy_00

# Fingerprint
PRODUCT_PACKAGES += \
    fingerprintd

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml

# Dalvik/HWUI
$(call inherit-product, frameworks/native/build/phone-xxhdpi-3072-dalvik-heap.mk)

# Common stuff
$(call inherit-product, vendor/mtk/config/common.mk)

# Vendor
$(call inherit-product, vendor/allview/x2xtreme/x2xtreme-vendor.mk)