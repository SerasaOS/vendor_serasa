# Inherit mini common Serasa stuff
$(call inherit-product, vendor/serasa/config/common_mini.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

$(call inherit-product, vendor/serasa/config/telephony.mk)
