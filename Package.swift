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
            url: "https://mmr.jfrog.io/artifactory/tracking-sdk-ios/1.0.38/TrackingKit.xcframework.zip",
            checksum: "8381f0ada5ffd8f2b906e656ef569dabcd68990bfc21964490b2336c6a97232e"
        )
    ]
)
