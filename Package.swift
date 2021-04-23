// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TrackingKit",
    platforms: [.iOS(.v11)],
    products: [
        .library(
            name: "TrackingKit",
            targets: ["TrackingKit"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
                    name: "TrackingKit",
                    url: "https://mmr.jfrog.io/artifactory/tracking-sdk-ios/TrackingKit.xcframework.zip",
                    checksum: "661585c52cf73c9b89af61f9d6e0371ce87aa123f61edd19b8430bde3e789b93"
                ),
    ]
)
