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
            url: "https://github.com/luciditi-digital-id/age-proof-ios-presence-packages/releases/download/v1.2.1-beta.4803/ageProofPresence.xcframework.zip",
            checksum: "35dcfff4e421d32dc29a739e70d95fbe921c4939204d59e68d2a9e67afef8bc3"
        )
    ]
)