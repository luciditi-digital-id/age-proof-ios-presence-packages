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
            url: "https://github.com/luciditi-digital-id/age-proof-ios-presence-packages/releases/download/v1.2.0-beta.4424/ageProofPresence.xcframework.zip",
            checksum: "0b52ba41effc298257bd8223f79c7af46fce919a8d4e413b4ceb6ad0f82edbc9"
        )
    ]
)