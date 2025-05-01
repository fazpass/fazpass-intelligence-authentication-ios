// swift-tools-version:5.3
import PackageDescription

let version = "0.0.4"

let package = Package(
    name: "FiaIOS",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "FiaIOS",
            targets: ["FiaIOSTargets"]),
    ],
    dependencies: [
        .package(url: "https://github.com/keypaz/keypaz-device-intelligence-ios", from: "0.0.3"),
    ],
    targets: [
        .binaryTarget(
            name: "FiaIOS",
            path: "./XCFrameworks/FiaIOS-\(version).xcframework"),
        .target(
            name: "FiaIOSTargets",
            dependencies: [
                .product(name: "DeviceIntelligenceIOS", package: "keypaz-device-intelligence-ios"),
                .target(name: "FiaIOS"),
            ],
            path: "FiaIOSTargets",
            swiftSettings: [
                .define("UIKIT_ENABLED")
            ],
            linkerSettings: [
                .linkedFramework("UIKit")
            ]
        )
    ]
)
