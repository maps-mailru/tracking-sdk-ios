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
            url: "https://mmr.jfrog.io/artifactory/tracking-sdk-ios/1.0.33/TrackingKit.xcframework.zip",
            checksum: "d52ca6597741e96c3f0af7abbaccd67c76c5308a3ee2e95bfd7cb1de80e0ac7d"
        )
    ]
)
