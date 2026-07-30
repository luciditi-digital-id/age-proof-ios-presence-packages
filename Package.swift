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
            url: "https://github.com/luciditi-digital-id/age-proof-ios-presence-packages/releases/download/v1.2.0-beta.4220/ageProofPresence.xcframework.zip",
            checksum: "ed06dbafe80e0392b38ca0353e3c317c059e882c1cd0dda5cf72ed454a8143d3"
        )
    ]
)