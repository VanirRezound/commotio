#Squisher Choosing
DHO_VENDOR := commotio

# Commotio
$(call inherit-product, vendor/commotio/products/common_commotio.mk)
$(call inherit-product, vendor/commotio/products/common_tabs.mk)

# Commotio theme files
    PRODUCT_PACKAGE_OVERLAYS += vendor/commotio/overlay/theme

PRODUCT_PACKAGES += \
    LiveWallpapersPicker

# Run these first or they will not stick
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=Commotio-TILAPIA

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/system/media/commotio-800x1280.zip:system/media/bootanimation.zip

# Tablet Overlays with radios
    PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/tab_radio

# GSM APNs and Simcard app
$(call inherit-product, vendor/vanir/products/gsm.mk)

# Inherit AOSP device configuration for grouper
$(call inherit-product, device/asus/tilapia/full_tilapia.mk)

# Setup device specific product configuration.
PRODUCT_NAME := commotio_tilapia
PRODUCT_BRAND := google
PRODUCT_DEVICE := tilapia
PRODUCT_MODEL := Nexus 7 GSM
PRODUCT_MANUFACTURER := asus

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=nakasig BUILD_FINGERPRINT="google/nakasig/tilapia:4.3/JLS36I/737497:user/release-keys" PRIVATE_BUILD_DESC="nakasig-user 4.3 JLS36I 737497 release-keys"
