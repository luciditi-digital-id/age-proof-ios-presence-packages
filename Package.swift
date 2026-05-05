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
            url: "https://github.com/luciditi-digital-id/age-proof-ios-presence-packages/releases/download/v1.2.0-beta.3747/ageProofPresence.xcframework.zip",
            checksum: "3f859a2c9f7bcf49521f677ad4d3e6548fb4cf6debcf0ced43026556696c019a"
        )
    ]
)