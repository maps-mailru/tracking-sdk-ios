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
                    checksum: "f2b7a196516f6df7e41502832f4140ff934b97e9355a9f0273742357eb4e2a7f"
                ),
    ]
)
