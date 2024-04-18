// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BarDataImplementation",
    products: [
        .library(
            name: "BarDataImplementation",
            targets: ["BarDataImplementation"]),
    ],
    dependencies: [
        .package(path: "../BarDataInterface"),

        .package(path: "../../Common/DIContainer"),
        .package(path: "../../Common/NetworkProvider"),
        .package(path: "../../Common/DataStorage"),
        .package(path: "../../BarDomain/BarDomainInterface"),
    ],
    targets: [
        .target(
            name: "BarDataImplementation",
            dependencies: ["BarDataInterface", "DIContainer", "NetworkProvider", "DataStorage", "BarDomainInterface"]
        ),
        .testTarget(
            name: "BarDataImplementationTests",
            dependencies: ["BarDataImplementation"]
        ),
    ]
)
