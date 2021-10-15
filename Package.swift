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
            url: "https://mmr.jfrog.io/artifactory/tracking-sdk-ios/1.0.43/TrackingKit.xcframework.zip",
            checksum: "dad71c502f9d6f7da2c334fb03854d8537ac2003ce4fdce9cf523c8eb159b9b3"
        )
    ]
)
