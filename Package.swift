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
                    checksum: "d71c12ab3bb0727183adb4a1f6f1ef54b729668451ce915d5e0fb232617895ef"
                ),
    ]
)
