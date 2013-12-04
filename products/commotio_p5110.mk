#Squisher Choosing
DHO_VENDOR := commotio

# Run these first or they will not stick
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=commotio-p5110

# Inherit VANIR files.
$(call inherit-product, vendor/commotio/products/gsm.mk)
$(call inherit-product, vendor/commotio/products/common_tabs.mk)
$(call inherit-product, vendor/commotio/products/beats.mk)

# Copy VANIR files
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/boot_animations/600x1024.zip:system/media/bootanimation.zip

# Inherit VANIR overlays.
    PRODUCT_PACKAGE_OVERLAYS += vendor/commotio/overlay/tab_radio

# Inherit AOSP device configuration for Tab 2 10.0 WiFi + GSM
$(call inherit-product, device/samsung/p5110/full_p5110.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := commotio_p5110
PRODUCT_DEVICE := p5110
PRODUCT_BRAND := Samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := GT-P5110

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=espresso10wifixx TARGET_DEVICE=espresso10wifi BUILD_FINGERPRINT=samsung/espresso10wifixx/espresso10wifi:4.4/KRT16S/P5110XWALD2:user/release-keys PRIVATE_BUILD_DESC="espresso10wifixx-user 4.4 KRT16S P5110XWALD2 release-keys"