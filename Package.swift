// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "Cairo",
    products: [
        .library(name: "Cairo", targets: ["Cairo"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Brett-Best/CCairo.git", .branch("bb-pkg-dev")),
        .package(url: "https://github.com/Brett-Best/SwiftGObject.git", .branch("bb-pkg-dev"))
    ],
    targets: [
        .target(name: "Cairo", dependencies: ["GLibObject"]),
        .testTarget(name: "CairoTests", dependencies: ["Cairo"]),
    ]
)
