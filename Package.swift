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
            url: "https://github.com/luciditi-digital-id/age-proof-ios-presence-packages/releases/download/v1.2.0-beta.4314/ageProofPresence.xcframework.zip",
            checksum: "ed1b8c120b51ba474b2bce37fbe9a1ae25b623c18cb59d79660072a6abf05386"
        )
    ]
)