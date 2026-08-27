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
            url: "https://github.com/luciditi-digital-id/age-proof-ios-presence-packages/releases/download/v1.2.0-beta.4351/ageProofPresence.xcframework.zip",
            checksum: "11e0027a6adf90e5d3256c6c11437c7bc23fe20e175bdd0e16f48a4e33e22d12"
        )
    ]
)