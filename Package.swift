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
            url: "https://github.com/luciditi-digital-id/age-proof-ios-presence-packages/releases/download/v1.2.1-beta.4689/ageProofPresence.xcframework.zip",
            checksum: "039ce75ea2d8507dfbd2bb3808edfcc0ff18f60dcaf0b205fed52bf620bfb0fb"
        )
    ]
)