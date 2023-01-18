# aci-xcode-spm-sample

Absolutely minimal mobile app with SPM dependencies for testing purposes.

## Build from CLI

```
xcodebuild -project aci-xcode-spm-sample.xcodeproj \
    -scheme "aci-xcode-spm-sample" \
    -configuration "Debug" \
    -sdk iphonesimulator \
    -destination "platform=iOS Simulator,name=iPhone 14,OS=latest" \
    build \
    -derivedDataPath ./DerivedData \
    "COMPILER_INDEX_STORE_ENABLE=NO" \
    "CODE_SIGNING_ALLOWED=NO" \
    "CODE_SIGN_IDENTITY=" \
    "CODE_SIGNING_REQUIRED=NO" \
    "CODE_SIGNING_ALLOWED=NO"
```
