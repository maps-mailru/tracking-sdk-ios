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
            url: "https://mmr.jfrog.io/artifactory/tracking-sdk-ios/1.0.52/TrackingKit.xcframework.zip",
            checksum: "bab292929b9c33d18edfbb11c0b5b8fe8aa78e407264022842f5fb0f2f255cd0"
        )
    ]
)
