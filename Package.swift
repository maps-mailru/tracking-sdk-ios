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
            url: "https://mmr.jfrog.io/artifactory/tracking-sdk-ios/0.0.15/TrackingKit.xcframework.zip",
            checksum: "f2a4690f8c2e601013785c4efc02f473a6fe8a3090c5270c7358c8b949bb319a"
        )
    ]
)
