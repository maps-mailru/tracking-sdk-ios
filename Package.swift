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
                    url: "https://mmr.jfrog.io/artifactory/tracking-sdk-ios/0.0.11/TrackingKit.xcframework.zip",
                    checksum: "241b690d6d46a4df0680beded9051a0f9ef70d2157a0078aa48fc6f7b8d12d51"
                ),
    ]
)
