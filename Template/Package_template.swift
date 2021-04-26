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
                    url: "https://mmr.jfrog.io/artifactory/tracking-sdk-ios/{{VERSION}}/TrackingKit.xcframework.zip",
                    checksum: "{{CHECKSUM}}"
                ),
    ]
)
