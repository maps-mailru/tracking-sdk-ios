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
            url: "https://mmr.jfrog.io/artifactory/tracking-sdk-ios/1.0.41/TrackingKit.xcframework.zip",
            checksum: "0f86d135f7ea348ffe1feb816188abd5506644e3cfdf88d8a9109dc039bacd81"
        )
    ]
)
