# Inherit common mobile Serasa stuff
$(call inherit-product, vendor/serasa/config/common.mk)

# Include AOSP audio files
include vendor/serasa/config/aosp_audio.mk

# Include Lineage audio files
include vendor/serasa/config/serasa_audio.mk

# Default notification/alarm sounds
PRODUCT_PRODUCT_PROPERTIES += \
    ro.config.notification_sound=no-pro.ogg \
    ro.config.alarm_alert=Hassium.ogg

# Apps
PRODUCT_PACKAGES += \
    Backgrounds \
    ExactCalculator

# Media
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    media.recorder.show_manufacturer_and_model=true

# SystemUI plugins
PRODUCT_PACKAGES += \
    QuickAccessWallet

# Themes
PRODUCT_PACKAGES += \
    ThemePicker \
    ThemesStub
