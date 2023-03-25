# Set Serasa specific identifier for Android Go enabled products
PRODUCT_TYPE := go

# Inherit mini common Serasa stuff
$(call inherit-product, vendor/serasa/config/common_mini_phone.mk)
