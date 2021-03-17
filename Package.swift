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
                    url: "https://dl.dropbox.com/s/4qt64429to1rsjs/TrackingKit.framework.zip",
                    checksum: "bd43dba1cc093957a0059989d862fc550a5aca840d3666e19d45f91f185add36"
                ),
    ]
)
