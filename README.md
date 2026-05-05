# Age Proof with Proof of Presence Packages

This repository hosts the **compiled SDK artifacts** for the Age Proof Presence product. It provides public access to iOS packages for integration into mobile applications.

> ⚠️ **Note:** This repository does **not** contain the source code for Age Proof. The source code is maintained privately. This repository is solely for distributing compiled packages.

> 🔒 **Version Recommendation:** Always use full release versions (e.g., 1.0.0, 2.1.3) when integrating the Age Proof SDK into your applications. Unless explicitly advised by Luciditi, avoid using any `-beta` releases as they may contain unstable features or breaking changes.

---

## 📦 Android Integration (via Maven)

To integrate the Age Proof Presence Android SDK into your app please use the package in the primary GitHub Maven repository found [here](https://github.com/luciditi-digital-id/age-proof-packages).

## 📱 iOS Integration (via Swift Package Manager)

To add the Age Proof Presence SDK to your iOS app using Swift Package Manager:

1. In Xcode, go to **File > Add Package Dependencies...**
2. Enter the package repository URL:

```
https://github.com/luciditi-digital-id/age-proof-ios-presence-packages.git
```

3. Select **"Exact Version"** as the dependency rule and choose the specific version you wish to use.
4. Add the package to your project.
5. Import the SDK module in your Swift files as needed.

### 🔖 Checking for Available Versions

To view all available versions of the SDK, visit the [GitHub Releases page](https://github.com/luciditi-digital-id/age-proof-ios-presence-packages/releases). Choose the version that best fits your requirements when adding the package in Xcode.

### 🔄 Updating to a Newer Version

To update the AgeProof Presence SDK to a newer version:

1. In Xcode, click on your **project** in the navigator
2. Select **"Package Dependencies"** from the project settings
3. Find the AgeProof package in the list and update to the desired version

---
