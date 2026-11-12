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
            url: "https://github.com/luciditi-digital-id/age-proof-ios-presence-packages/releases/download/v1.2.1-beta.4711/ageProofPresence.xcframework.zip",
            checksum: "1c0a458fb4a584dd9f4bf1e9a26a3ab587ce8764b882aa73c39c97cf7a2db316"
        )
    ]
)