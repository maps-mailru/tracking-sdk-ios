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
            url: "https://mmr.jfrog.io/artifactory/tracking-sdk-ios/0.0.16/TrackingKit.xcframework.zip",
            checksum: "846efc188fdfe27b358bbdbbb1549eca1179aa02ef9ce8ca053e120e14e6d90e"
        )
    ]
)
