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
                    url: "https://dl.dropbox.com/s/nh86afx59a534px/TrackingKit.1.0.0.zip",
                    checksum: "68c0ae39f487f12774fe936508e4e426"
                ),
    ]
)
