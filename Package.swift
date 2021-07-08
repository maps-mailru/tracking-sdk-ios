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
            url: "https://mmr.jfrog.io/artifactory/tracking-sdk-ios/1.0.27/TrackingKit.xcframework.zip",
            checksum: "8adf3a430770f46b6b70d0cc4d583ad88ea706494bf4c8549c096ec411e2f6b4"
        )
    ]
)
