// swift-tools-version:5.3
import PackageDescription

let version = "0.0.2"

let package = Package(
    name: "FiaIOS",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "FiaIOS",
            targets: ["FiaIOS"]),
    ],
    dependencies: [
        .package(url: "https://github.com/keypaz/keypaz-device-intelligence-ios", from: "0.0.1"),
    ],
    targets: [
        .binaryTarget(
            name: "FiaIOS",
            path: "./XCFrameworks/FiaIOS-\(version).xcframework")
    ]
)
