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
            url: "https://mmr.jfrog.io/artifactory/tracking-sdk-ios/0.0.24/TrackingKit.xcframework.zip",
            checksum: "6508deb7fd1a6ebc651b9cf8242744ed0bf9b58870fe8d6c1fcc576e83b55638"
        )
    ]
)
