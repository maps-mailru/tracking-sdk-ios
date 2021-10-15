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
            url: "https://mmr.jfrog.io/artifactory/tracking-sdk-ios/1.0.42/TrackingKit.xcframework.zip",
            checksum: "f88a523b88e4f68e84d80d9e0e683317660b21f9df542298c1323cf8394f3b8f"
        )
    ]
)
