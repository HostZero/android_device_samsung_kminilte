LOCAL_PATH := device/samsung/kminilte

# Release name
PRODUCT_RELEASE_NAME := kminilte

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := kminilte
PRODUCT_NAME := omni_kminilte
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/fstab.universal3470:recovery/root/fstab.universal3470 \
    $(LOCAL_PATH)/recovery/root/init.recovery.usb.rc:recovery/root/init.recovery.usb.rc \
    $(LOCAL_PATH)/recovery/root/ueventd.universal3470.rc:recovery/root/ueventd.universal3470.rc \
    $(LOCAL_PATH)/recovery/root/file_contexts:recovery/root/file_contexts \


