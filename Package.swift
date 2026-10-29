// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "AgeProofPresence",
    platforms: [.iOS(.v16)],
    products: [
        .library(name: "AgeProofPresence", targets: ["AgeProofPresence"])
    ],
    targets: [
        .binaryTarget(
            name: "AgeProofPresence",
            url: "https://github.com/luciditi-digital-id/age-proof-ios-presence-packages/releases/download/v1.2.1-beta.4650/ageProofPresence.xcframework.zip",
            checksum: "8cf5e67290cd252de05120d0f53a8e24bc10ce6efa9497dd6f81cefd3e93addc"
        )
    ]
)