export CAF_REVISION_TAG=$(grep "default  revision" ".repo/manifests/default.xml" | awk -F '/' '{print $3}' | awk -F '"' '{print $1}')

# Welcome Msg
echo -e ==========================================
echo 	 sr. SerasaCLO Build Environtment
echo -e ==========================================
echo -e "sr. Revision: rev1.0.milikita"
echo -e "CLO Revision: $CAF_REVISION_TAG"

# SDClang Environment Variables
export SDCLANG_CONFIG=$(pwd)/vendor/serasa/sdclang/sdclang.json
