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
            url: "https://mmr.jfrog.io/artifactory/tracking-sdk-ios/0.0.19/TrackingKit.xcframework.zip",
            checksum: "c9ca709744b9bc0db729886eb8e3739b921fcab5cce9f792379d4f2393f28b91"
        )
    ]
)
