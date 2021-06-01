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
            url: "https://mmr.jfrog.io/artifactory/tracking-sdk-ios/0.0.21/TrackingKit.xcframework.zip",
            checksum: "c65d1caca83d73e15abcdf0b2138076cbe72303f3ef76a0197797533855fba29"
        )
    ]
)
