# Copyright (C) 2017 Unlegacy-Android
# Copyright (C) 2017 The LineageOS Project
# Copyright (C) 2017-2018 AOSiP
# Copyright (C) 2019 AOSDP
# Copyright (C) 2020-2021 Fluid
# Copyright (C) 2023-2024 Serasa
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# -----------------------------------------------------------------
# Serasa OTA update package

SERASA_TARGET_PACKAGE := $(PRODUCT_OUT)/Serasa-$(SERASA_VERSION).zip
SHA256 := prebuilts/build-tools/path/$(HOST_PREBUILT_TAG)/sha256sum

ifneq ($(IS_CIENV),true)
  CL_RED="\033[31m"
  CL_GRN="\033[32m"  
  CL_YLW="\033[33m"
endif

.PHONY: serasa otapackage bacon
otapackage: $(INTERNAL_OTA_PACKAGE_TARGET)
serasa: otapackage
	$(hide) ln -f $(INTERNAL_OTA_PACKAGE_TARGET) $(SERASA_TARGET_PACKAGE)
	$(hide) $(SHA256) $(SERASA_TARGET_PACKAGE) | sed "s|$(PRODUCT_OUT)/||" > $(SERASA_TARGET_PACKAGE).sha256sum
	@echo -e ""
	@echo -e "${cya}Building ${bldcya}Serasa! ${txtrst}";
	@echo -e ""
	@echo -e ${CL_YLW}"                                                                 "
	@echo -e ${CL_YLW}"                                                                 "
	@echo -e ${CL_YLW}"       _         _         _           _         _         _     "
	@echo -e ${CL_YLW}"      /\\__   __/\\___   _/\\___    __/\\__     /\\__   __/\\__  "
	@echo -e ${CL_YLW}"     /    \\ (_  ____)) (_   _  )) (_  ____)   /    \\ (_  ____) "
	@echo -e ${CL_YLW}"    _\  \_//  /  ._))    /  |))//   /  _ \\   _\  \_//  /  _ \\  "
	@echo -e ${CL_YLW}"   // \:.\   /:. ||___  /:.    \\  /:./_\ \\ // \:.\   /:./_\ \\ "
	@echo -e ${CL_YLW}"   \\__  /   \  _____)) \___|  //  \  _   // \\__  /   \  _   // "
	@echo -e ${CL_YLW}"      \\/     \//            \//    \// \//     \\/     \// \//  "
	@echo -e ${CL_GRN}"----- Happy Flashing! -----"
	@echo -e ""
	@echo -e "zip: "$(SERASA_TARGET_PACKAGE)
	@echo -e "sha256: `cat $(SERASA_TARGET_PACKAGE).sha256sum | cut -d ' ' -f 1`"
	@echo -e "size:` ls -lah $(SERASA_TARGET_PACKAGE) | cut -d ' ' -f 5`"
	@echo -e ""

bacon: serasa
