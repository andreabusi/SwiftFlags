// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftFlags",
    platforms: [
        .macOS(.v10_12),
        .iOS(.v10),
        .tvOS(.v10),
        .watchOS(.v3)
    ],
    products: [
        .library(
            name: "SwiftFlags",
            targets: ["SwiftFlags"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "SwiftFlags",
            dependencies: []),
        .testTarget(
            name: "SwiftFlagsTests",
            dependencies: ["SwiftFlags"]),
    ],
    swiftLanguageVersions: [.v5]
)
