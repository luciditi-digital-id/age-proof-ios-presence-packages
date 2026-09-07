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
            url: "https://github.com/luciditi-digital-id/age-proof-ios-presence-packages/releases/download/v1.2.0-beta.4430/ageProofPresence.xcframework.zip",
            checksum: "07070a0ff27047869ea9c8156c40b1f0c70351ceb94fa38cc71bb4f1a826500d"
        )
    ]
)