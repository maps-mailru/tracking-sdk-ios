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
            url: "https://mmr.jfrog.io/artifactory/tracking-sdk-ios/1.0.36/TrackingKit.xcframework.zip",
            checksum: "e34a0986cdf78306a681dd5105afedb58adff2aa9afad9dbe7308a0d3bc2d530"
        )
    ]
)
