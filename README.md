# Age Proof with Proof of Presence Packages

This repository hosts the **compiled SDK artifacts** for the Age Proof Presence product. It provides public access to iOS packages for integration into mobile applications.

> ⚠️ **Note:** This repository does **not** contain the source code for Age Proof. The source code is maintained privately. This repository is solely for distributing compiled packages.

> 🔒 **Version Recommendation:** Always use full release versions (e.g., 1.0.0, 2.1.3) when integrating the Age Proof SDK into your applications. Unless explicitly advised by Luciditi, avoid using any `-beta` releases as they may contain unstable features or breaking changes.

---

## 🤖 Android integration via Maven

For Android, use the package in the [primary GitHub Maven repository](https://github.com/luciditi-digital-id/age-proof-packages).

## 🍏 iOS requirements

- iOS 16 or later.
- CocoaPods for the SDK's ML Kit and TensorFlow Lite dependencies, including when using Swift Package Manager for the SDK itself.
- A physical iPhone for presence testing. The current SDK and native dependencies have incompatible simulator architecture requirements.
- A meaningful `NSCameraUsageDescription` entry in the app's Info.plist, explaining camera use for identity verification.

Import the SDK as `ageProofPresence` (case-sensitive).

## 📱 iOS integration via CocoaPods (recommended)

CocoaPods installs the presence XCFramework and its native dependencies together.

1. Create or update the app's `Podfile`:

   ```ruby
   platform :ios, '16.0'

   target 'YourApp' do
     use_frameworks!

     # Replace with a release version supplied by Luciditi, without the v prefix.
     sdk_version = 'YOUR_RELEASE_VERSION'
     pod 'ageProofPresence', :podspec => "https://raw.githubusercontent.com/luciditi-digital-id/age-proof-ios-presence-packages/v#{sdk_version}/ageProofPresence.podspec"
   end
   ```

2. Run `pod install` in the directory containing the Podfile.
3. Open the generated `.xcworkspace` in Xcode and select the app scheme and a physical iPhone.
4. Import the SDK:

   ```swift
   import ageProofPresence
   ```

Use the podspec URL rather than a `:git` source: the podspec downloads the release XCFramework ZIP and validates its checksum. Keep `Podfile.lock` under version control.

Do not also add the presence SDK through SPM. When migrating from standard AgeProof, remove the old package product from the app target before linking the presence SDK. CocoaPods manages framework embedding; do not manually change the Pods umbrella framework to **Embed and Sign**.

### 📁 Compose resources

Releases containing the updated resource-aware podspec automatically stage and copy the SDK's Compose resources, including face models, to:

```text
YourApp.app/compose-resources/composeResources/...
```

### 🔄 Updating the SDK

Change `sdk_version` to the desired release, then run:

```sh
pod update ageProofPresence
```

Review and commit the updated Podfile and lockfile.

## 📱 iOS integration via Swift Package Manager (alternative)

SPM installs the presence XCFramework, but **cannot install CocoaPods dependencies**. This path requires both package managers and an app-side Compose resource-copy phase. CocoaPods-only integration above handles these together.

1. In Xcode, choose **File → Add Package Dependencies** and enter:

   ```text
   https://github.com/luciditi-digital-id/age-proof-ios-presence-packages.git
   ```

2. Choose **Exact Version** and a version supplied by Luciditi. Add the `AgeProofPresence` product to the app target.
3. Add the native dependencies to the app's Podfile. These versions match `v1.2.0`; for another SDK release, use the exact dependencies from that release's `ageProofPresence.podspec`:

   ```ruby
   platform :ios, '16.0'

   target 'YourApp' do
     use_frameworks!
     pod 'GoogleMLKit/BarcodeScanning', '9.0.0'
     pod 'GoogleMLKit/FaceDetection', '9.0.0'
     pod 'MLKitVision', '10.0.0'
     pod 'TensorFlowLiteObjC', '2.17.0'
   end
   ```

4. Run `pod install`, then open the `.xcworkspace`. Do **not** add the `ageProofPresence` pod as well as the SPM product.
5. Copy the selected XCFramework slice's entire `composeResources` directory into the app at `compose-resources/composeResources`. Adding only the model files or placing them in a separate `.bundle` will not match the runtime lookup path.

For a standard Xcode SPM artifact layout, add a **Run Script** build phase to the app target after **Copy Bundle Resources**, using `/bin/sh` and the following script. Disable **Based on dependency analysis** so resources refresh after SDK updates. Set the app target's **User Script Sandboxing** to **No** for this script to access downloaded package artifacts. Custom package cache locations require adjusting `artifacts` below.

```sh
set -eu
case "$PLATFORM_NAME" in
  iphoneos) slice=ios-arm64 ;;
  iphonesimulator) slice=ios-arm64-simulator ;;
  *) echo "error: Unsupported presence SDK platform: $PLATFORM_NAME" >&2; exit 1 ;;
esac

artifacts="${BUILD_DIR}/../../SourcePackages/artifacts"
resource_path="*/ageProofPresence.xcframework/${slice}/ageProofPresence.framework/composeResources"
matches=$(find "$artifacts" -type d -path "$resource_path")
count=$(printf '%s\n' "$matches" | sed '/^$/d' | wc -l | tr -d ' ')
if [ "$count" != 1 ]; then
  echo "error: Expected one presence SDK resource directory; found $count. Check the SPM artifact location." >&2
  exit 1
fi

destination="${TARGET_BUILD_DIR}/${UNLOCALIZED_RESOURCES_FOLDER_PATH}/compose-resources/composeResources"
mkdir -p "$destination"
/usr/bin/ditto "$matches" "$destination"
```

Import `ageProofPresence` in Swift. The resource script does not resolve the separate simulator limitations.

To update SPM, select the project in Xcode, open **Package Dependencies**, and update the presence package's exact version. Also review that release's podspec and update native pod versions when needed, then run `pod install` (or `pod update` for dependencies being updated).

## Troubleshooting

### Older dependency deployment targets

Some native dependencies and privacy bundles declare deployment targets below those supported by newer Xcode versions. If Xcode reports this, add the following top-level hook to the Podfile (or merge it into an existing `post_install` block), then rerun `pod install`:

```ruby
post_install do |installer|
  minimum_ios = Gem::Version.new('16.0')
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      current = config.build_settings['IPHONEOS_DEPLOYMENT_TARGET']
      if current.nil? || Gem::Version.new(current) < minimum_ios
        config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = minimum_ios.to_s
      end
    end
  end
end
```

This raises older targets without lowering a dependency that requires a newer version. It does not change architecture exclusions.

## ❗ Troubleshooting warnings and crashes

### Simulator architecture warnings

`pod install` may warn that `EXCLUDED_ARCHS[sdk=iphonesimulator*]` has conflicting values. The current ML Kit and TensorFlow Lite pods specify different simulator exclusions. Use a physical iPhone for presence testing. These simulator warnings alone do not indicate that device dependency installation failed.

### Missing Compose resource

If the app reports `MissingResourceException` for a path such as `compose-resources/composeResources/.../facenet_512.tflite`, verify that the installed SDK release includes automatic CocoaPods resource handling, or that the SPM resource-copy phase is configured. **Embed and Sign** is not a replacement for copying resources to this path.

### Crash when debugging on a physical iPhone

If the app crashes with an exception such as `-[AGXA13FamilyFunctionHandle resourceIndex]: unrecognized selector`, try disabling **GPU Frame Capture** under **Product → Scheme → Edit Scheme → Run → Diagnostics** (the location may vary by Xcode version).

In our testing, disabling GPU Frame Capture resolved this crash while **Metal API Validation** remained enabled. The app also worked when launched directly from its icon. This is a troubleshooting workaround for an observed device/toolchain combination, not a required installation step for every customer. GPU Frame Capture affects Xcode debugging sessions; disabling it does not change the distributed app.
