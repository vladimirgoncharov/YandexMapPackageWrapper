# YandexMapPackageWrapper

YandexMaps Package. Supports only iOS 12+.

1. Connect the package via SPM
2. Add new Build Phases script:

```
frameworks=(
  YandexMapsMobile.framework
)

for framework in "${frameworks[@]}"
do  
  /usr/libexec/PlistBuddy -c "Add :MinimumOSVersion string 12.0" "${TARGET_BUILD_DIR:?}"/"${FRAMEWORKS_FOLDER_PATH}/$framework/Info.plist"
done
```
