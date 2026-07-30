// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "AgeProofPresence",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "AgeProofPresence", targets: ["AgeProofPresence"])
    ],
    targets: [
        .binaryTarget(
            name: "AgeProofPresence",
            url: "https://github.com/luciditi-digital-id/age-proof-ios-presence-packages/releases/download/v1.2.0-beta.4216/ageProofPresence.xcframework.zip",
            checksum: "b7317edf7c3b5a8949f4b9b11752c53dd9145c57120eb97b4112a4a44fbee33f"
        )
    ]
)