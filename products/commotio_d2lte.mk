#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=commotio-d2lte

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/boot_animations/720x1280.zip:system/media/bootanimation.zip
# Inherit common phone stuff
$(call inherit-product, vendor/commotio/products/common_phones.mk)
$(call inherit-product, vendor/vanir/products/beats.mk)

$(call inherit-product, device/samsung/d2lte/full_d2lte.mk)

# Enhanced NFC
$(call inherit-product, vendor/vanir/config/nfc_enhanced.mk)

PRODUCT_NAME := commotio_d2lte
