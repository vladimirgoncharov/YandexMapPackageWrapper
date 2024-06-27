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
    filePath="${TARGET_BUILD_DIR:?}"/"${FRAMEWORKS_FOLDER_PATH}/$framework/Info.plist"
    key=":MinimumOSVersion"

    # Query and save the value; suppress any error message, if key not found.
    val=$(/usr/libexec/PlistBuddy -c "Print ${key}" "${filePath}">/dev/null)

    # Save the exit code, which indicates success v. failure
    exitCode=$?

    if (( exitCode != 0 )) 
    then 
        /usr/libexec/PlistBuddy -c "Add ${key} string 12.0" "${filePath}"
    fi
done
```
