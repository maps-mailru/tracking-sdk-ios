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
            url: "https://mmr.jfrog.io/artifactory/tracking-sdk-ios/1.0.39/TrackingKit.xcframework.zip",
            checksum: "0d3f28573950032eed8c6b15a191de7082462a4bc5dcdabdb515ff1fb2505b63"
        )
    ]
)
