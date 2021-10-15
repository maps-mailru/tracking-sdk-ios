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
            url: "https://mmr.jfrog.io/artifactory/tracking-sdk-ios/1.0.44/TrackingKit.xcframework.zip",
            checksum: "2f33e71fdce172b1e0e8b1a5516931914b182a657fb6b922d11c07bffc7dde48"
        )
    ]
)
