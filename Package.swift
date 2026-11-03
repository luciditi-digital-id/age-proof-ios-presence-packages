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
            url: "https://github.com/luciditi-digital-id/age-proof-ios-presence-packages/releases/download/v1.2.1-beta.4682/ageProofPresence.xcframework.zip",
            checksum: "4a7d9ec894f22560e8394db922002fcb9ae27352379970e304138b2438ff0070"
        )
    ]
)