# Inherit common Serasa stuff
$(call inherit-product, vendor/serasa/config/common.mk)

# Inherit Serasa atv device tree
$(call inherit-product, device/serasa/atv/serasa_atv.mk)

# AOSP packages
PRODUCT_PACKAGES += \
    LeanbackIME

# Lineage packages
PRODUCT_PACKAGES += \
    LineageCustomizer

PRODUCT_PACKAGE_OVERLAYS += vendor/serasa/overlay/tv
