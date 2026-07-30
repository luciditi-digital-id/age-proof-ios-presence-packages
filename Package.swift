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
            url: "https://github.com/luciditi-digital-id/age-proof-ios-presence-packages/releases/download/v1.2.0-beta.4212/ageProofPresence.xcframework.zip",
            checksum: "c7d274bee386e3d182f3b8afad2e5c5c41b7c5268e7e95a7a8de61450075fe7b"
        )
    ]
)