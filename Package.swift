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
            url: "https://github.com/luciditi-digital-id/age-proof-ios-presence-packages/releases/download/v1.2.0-beta.4290/ageProofPresence.xcframework.zip",
            checksum: "70487190343d517ec9bfe502787d1fd5694d1bc0772525c616934f55f44eb9b9"
        )
    ]
)