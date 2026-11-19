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
            url: "https://github.com/luciditi-digital-id/age-proof-ios-presence-packages/releases/download/v1.2.1-beta.4754/ageProofPresence.xcframework.zip",
            checksum: "0c4b03906e0d52a06a47374af07b294d7f683f701a9bb09fe5b4dae41ecec9f5"
        )
    ]
)