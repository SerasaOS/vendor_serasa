$(call inherit-product, $(SRC_TARGET_DIR)/product/window_extensions.mk)

# Inherit full common Serasa stuff
$(call inherit-product, vendor/serasa/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# Include Serasa LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/serasa/overlay/dictionaries
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/serasa/overlay/dictionaries

$(call inherit-product, vendor/serasa/config/telephony.mk)
