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
            url: "https://github.com/luciditi-digital-id/age-proof-ios-presence-packages/releases/download/v1.2.0-beta.4285/ageProofPresence.xcframework.zip",
            checksum: "730eb62844b0c4a43e5fc0c957aaf064a50bc501acd531595046ad0be63f68b1"
        )
    ]
)