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
            url: "https://mmr.jfrog.io/artifactory/tracking-sdk-ios/1.0.51/TrackingKit.xcframework.zip",
            checksum: "6a384d7c331eb52fb86b9385eb335fb8a053b34768d3bf5a041c2b6e700d420e"
        )
    ]
)
