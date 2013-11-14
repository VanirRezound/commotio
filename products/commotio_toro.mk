#Squisher Choosing
DHO_VENDOR := commotio

# Commotio
$(call inherit-product, vendor/commotio/products/common_commotio.mk)
$(call inherit-product, vendor/commotio/products/common_phones.mk)

#Commotio theme files
    PRODUCT_PACKAGE_OVERLAYS += vendor/commotio/overlay/theme

# Vanir CDMA overlay
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/vanir/overlay/cdma_phone

# Vanir Config = awesome
$(call inherit-product, vendor/vanir/tweaks/tuna/tweaks.mk)

# Inherit AOSP device configuration for toro.
$(call inherit-product, device/samsung/toro/full_toro.mk)

# Bootanimation
PRODUCT_COPY_FILES +=  \
   vendor/commotio/proprietary/system/media/bootanimation.zip:system/media/bootanimation.zip

#... and then make the AOSP device configuration for toro get on its knees and sing the national anthem into our "microphones"
PRODUCT_LOCALES := en_US

# Setup device specific product configuration.
PRODUCT_NAME := commotio_toro
PRODUCT_BRAND := google
PRODUCT_DEVICE := toro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mysid BUILD_FINGERPRINT="google/mysid/toro:4.4/KRT16O/737497:user/release-keys" PRIVATE_BUILD_DESC="mysid-user 4.4 KRT16O 737497 release-keys"
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=Commotio-TORO
