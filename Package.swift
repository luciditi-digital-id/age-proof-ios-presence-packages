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
            url: "https://github.com/luciditi-digital-id/age-proof-ios-presence-packages/releases/download/v1.2.1-beta.4672/ageProofPresence.xcframework.zip",
            checksum: "c24dea9d8ab2139e64df6ee1e6619b55620488ad48dcadb5b3367d3e35f99c4b"
        )
    ]
)