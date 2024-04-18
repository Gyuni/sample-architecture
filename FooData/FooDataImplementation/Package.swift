// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FooDataImplementation",
    products: [
        .library(
            name: "FooDataImplementation",
            targets: ["FooDataImplementation"]),
    ],
    dependencies: [
        .package(path: "../FooDataInterface"),

        .package(path: "../../Common/DIContainer"),
        .package(path: "../../Common/NetworkProvider"),
        .package(path: "../../Common/DataStorage"),
        .package(path: "../../FooDomain/FooDomainInterface"),
    ],
    targets: [
        .target(
            name: "FooDataImplementation",
            dependencies: ["FooDataInterface", "DIContainer", "NetworkProvider", "DataStorage", "FooDomainInterface"]
        ),
        .testTarget(
            name: "FooDataImplementationTests",
            dependencies: ["FooDataImplementation"]
        ),
    ]
)
