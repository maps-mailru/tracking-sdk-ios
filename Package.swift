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
                    url: "https://dl.dropbox.com/s/ge1emtmqxwhq9gm/TrackingKit.xcframework.zip",
                    checksum: "fd669b847ddcf03d9bd0506bf4980df5fdbace35fcc793907be4a5e59f88788f"
                ),
    ]
)
