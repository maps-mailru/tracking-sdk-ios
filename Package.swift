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
            url: "https://mmr.jfrog.io/artifactory/tracking-sdk-ios/1.0.35/TrackingKit.xcframework.zip",
            checksum: "e4f8292bde8b8298004276eb77ea883a2db6c33d72e1d7a602ab62775b79c856"
        )
    ]
)
