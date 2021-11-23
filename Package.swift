// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DynamicQ",
    platforms: [.iOS(.v12)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "DynamicQ",
            type: .dynamic,
            targets: ["DynamicQ"]),
    ],
    dependencies: [
        .package(url: "https://github.com/grpc/grpc-swift.git", from: "1.0.0"),
        .package(url: "https://github.com/adam-fowler/mqtt-nio.git", from: "2.1.0"),
        .package(url: "https://github.com/soto-project/soto-core.git", from: "5.5.0")
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "DynamicQ",
            dependencies: [
                .product(name: "GRPC", package: "grpc-swift"),
                .product(name: "MQTTNIO", package: "mqtt-nio"),
                .product(name: "SotoSignerV4", package: "soto-core")
            ],
            path: "Sources"
        ),
        .testTarget(
            name: "DynamicQTests",
            dependencies: ["DynamicQ"]),
    ]
)
