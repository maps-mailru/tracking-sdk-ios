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
            url: "https://mmr.jfrog.io/artifactory/tracking-sdk-ios/1.0.26/TrackingKit.xcframework.zip",
            checksum: "ada8b30a8abdf8def7ae32924615c53bbe00b9c56bbb1631b876d28f649c37f4"
        )
    ]
)
