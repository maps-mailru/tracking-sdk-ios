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
            url: "https://artifactory-external.vkpartner.ru/artifactory/tracking-sdk-ios/1.0.59/TrackingKit.xcframework.zip",
            checksum: "31fe33421a2ec8beb08160e28bc4c94df7d554d1ed372dd4cdd3364ddd037611"
        )
    ]
)
