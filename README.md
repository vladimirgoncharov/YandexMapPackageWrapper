# YandexMapPackageWrapper

YandexMaps Package. Supports only iOS 12+.

1. Connect the package via SPM. Use revesion hash intead versions. [The reason](https://forums.swift.org/t/override-for-unsafeflags-in-swift-package-manager/45273)
2. Add new Build Phases script:

```
frameworks=(
  YandexMapsMobile.framework
)

for framework in "${frameworks[@]}"
do  
  /usr/libexec/PlistBuddy -c "Set :MinimumOSVersion string 12.0" "${TARGET_BUILD_DIR:?}"/"${FRAMEWORKS_FOLDER_PATH}/$framework/Info.plist"
done
```
