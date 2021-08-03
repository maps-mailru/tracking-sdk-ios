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
            url: "https://mmr.jfrog.io/artifactory/tracking-sdk-ios/1.0.32/TrackingKit.xcframework.zip",
            checksum: "393f4bfa69377659a0ca8a28ecefca8b50940540c2a9e3b9b34c4525d2726318"
        )
    ]
)
