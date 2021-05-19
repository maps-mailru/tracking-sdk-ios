// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TrackingKit",
    platforms: [.iOS(.v11)],
    products: [
        .library(
            name: "TrackingKit",
            targets: ["TrackingKit"]
        )
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "TrackingKit",
            url: "https://mmr.jfrog.io/artifactory/tracking-sdk-ios/0.0.14/TrackingKit.xcframework.zip",
            checksum: "eff1c1da2108afed4261f3979be5331e8ed72743e10f6b70a8c6bb839e23f655"
        )
    ]
)
