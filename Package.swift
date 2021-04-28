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
                    url: "https://mmr.jfrog.io/artifactory/tracking-sdk-ios/0.0.10/TrackingKit.xcframework.zip",
                    checksum: "a14f4982da6850a7c93ee05452e5c026f2919a6542d742c9d33fb514d8e42ab1"
                ),
    ]
)
