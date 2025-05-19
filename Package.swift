// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "WiseTrackLib",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "WiseTrackLib",
            targets: ["WiseTrackLibWrapper"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/getsentry/sentry-cocoa.git", from: "8.50.2")
    ],
    targets: [
        .binaryTarget(
            name: "WiseTrackLib",
            url: "https://github.com/wisetrack-io/ios-sdk-spm/releases/download/1.1.1/WiseTrackLib.xcframework.zip",
            checksum: "513709f78d9d14c0109410b2a8d0c1e13dca625419a13a1fca873814d51dec2c"
        ),
        .target(
            name: "WiseTrackLibWrapper",
            dependencies: [
                "WiseTrackLib",
                .product(name: "Sentry", package: "sentry-cocoa")
            ],
            linkerSettings: [
                .linkedFramework("Sentry")
            ]
        )
    ]
)
