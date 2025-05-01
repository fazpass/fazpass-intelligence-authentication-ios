// swift-tools-version:5.3
import PackageDescription

let version = "0.0.1"

let package = Package(
    name: "FiaIOS",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "FiaIOS",
            targets: ["FiaIOS"]),
    ],
    dependencies: [
        .package(url: "https://github.com/fazpass/fazpass-intelligence-authentication-ios", from: "0.0.1"),
    ],
    targets: [
        .binaryTarget(
            name: "FiaIOS",
            path: "./XCFrameworks/FiaIOS-\(version).xcframework")
    ]
)
