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
            targets: ["WiseTrackTargets"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "WiseTrackLib",
            url: "https://github.com/wisetrack-io/ios-sdk/releases/download/1.0.1/WiseTrackLib.xcframework.zip",
            checksum: "d99765e56629a288b255b16c3b17344084d983b33800c732dbaaa0a828a25284"
        ),
        .binaryTarget(
            name: "Sentry",
            url: "https://github.com/getsentry/sentry-cocoa/releases/download/8.50.2/Sentry.xcframework.zip",
            checksum: "b96b5dfa1179da2f802c8a8e25639a7711e0e1296b4b09829c513980c74017ba"
        ),
        .target(
            name: "WiseTrackTargets",
            dependencies: [
                .target(name: "WiseTrackLib"),
                .target(name: "Sentry")
            ],
            path: "WiseTrackTargets"
        )
    ]
)
