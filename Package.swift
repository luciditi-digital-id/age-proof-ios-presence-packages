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
            url: "https://github.com/luciditi-digital-id/age-proof-ios-presence-packages/releases/download/v1.2.0-beta.3756/ageProofPresence.xcframework.zip",
            checksum: "8598c1e3a7d70cfdff76b872018f9f31badd9a6cfaafbedf9ca5a0ee43ec73e8"
        )
    ]
)