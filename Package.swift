// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TrackingKit",
    platforms: [.iOS(.v11)],
    products: [
        .library(
            name: "TrackingKit",
            targets: ["TrackingKit"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
                    name: "TrackingKit",
                    url: "https://mmr.jfrog.io/artifactory/tracking-sdk-ios/0.0.12/TrackingKit.xcframework.zip",
                    checksum: "e8ead4465d6446e3824984e2d82a1c879fd4adc7293fe2597f1405fed474f1ce"
                ),
    ]
)
