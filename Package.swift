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
            url: "https://mmr.jfrog.io/artifactory/tracking-sdk-ios/0.0.22/TrackingKit.xcframework.zip",
            checksum: "8cd6c315bf796cdb2e2c1d6030871f1f83a8f04ffaf73b648cd83466bc09891a"
        )
    ]
)
