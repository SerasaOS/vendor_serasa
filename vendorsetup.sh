export CAF_REVISION_TAG=$(grep "revision" ".repo/manifests/snippets/system.xml" | awk -F '/' '{print $3}' | awk -F '"' '{print $1}')

# SDClang Environment Variables
export SDCLANG_CONFIG=$(pwd)/vendor/serasa/sdclang/sdclang.json
