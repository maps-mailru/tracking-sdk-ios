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
            url: "https://mmr.jfrog.io/artifactory/tracking-sdk-ios/0.0.17/TrackingKit.xcframework.zip",
            checksum: "672bbe4f668405b2b301fdc9b7dfe5a03dcbf95c0699c3012ba094060b12efd7"
        )
    ]
)
