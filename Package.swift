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
            url: "https://mmr.jfrog.io/artifactory/tracking-sdk-ios/1.0.47/TrackingKit.xcframework.zip",
            checksum: "924399bfc2cb7aa9d38bb56194cd10de0c8e7f85f7bff74c5b41115bba02f504"
        )
    ]
)
