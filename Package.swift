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
            url: "https://mmr.jfrog.io/artifactory/tracking-sdk-ios/1.0.34/TrackingKit.xcframework.zip",
            checksum: "3ab20a8bd9751b262893fee229aa81bfeb98fea3987155be90cb71db023cb9b2"
        )
    ]
)
