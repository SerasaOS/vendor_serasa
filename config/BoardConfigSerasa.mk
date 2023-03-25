include vendor/serasa/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/serasa/config/BoardConfigQcom.mk
endif

include vendor/serasa/config/BoardConfigSoong.mk
