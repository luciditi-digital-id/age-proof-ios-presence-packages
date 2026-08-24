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
            url: "https://github.com/luciditi-digital-id/age-proof-ios-presence-packages/releases/download/v1.2.0-beta.4318/ageProofPresence.xcframework.zip",
            checksum: "d026382d69ececf651ed5c2b4a18004ad01d9b5b273fdc640a7a257461f84413"
        )
    ]
)