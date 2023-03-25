# Set Serasa specific identifier for Android Go enabled products
PRODUCT_TYPE := go

# Inherit full common Serasa stuff
$(call inherit-product, vendor/serasa/config/common_full_phone.mk)
