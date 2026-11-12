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
            url: "https://github.com/luciditi-digital-id/age-proof-ios-presence-packages/releases/download/v1.2.1-beta.4715/ageProofPresence.xcframework.zip",
            checksum: "e817710258be9ae9d180fffd73b49366a0d5e691f7f4499895cf12601590c859"
        )
    ]
)