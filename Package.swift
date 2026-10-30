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
            url: "https://github.com/luciditi-digital-id/age-proof-ios-presence-packages/releases/download/v1.2.1-beta.4658/ageProofPresence.xcframework.zip",
            checksum: "67fe613a9602aa38ca4ec3d27453ef6dd2c2c7b532843720b165d80816ebcc4f"
        )
    ]
)