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
            url: "https://mmr.jfrog.io/artifactory/tracking-sdk-ios/1.0.54/TrackingKit.xcframework.zip",
            checksum: "a7419ca548782e9948f5b89505be6f8d6eda62634f4b98a0a2c4054d1d6c5248"
        )
    ]
)
