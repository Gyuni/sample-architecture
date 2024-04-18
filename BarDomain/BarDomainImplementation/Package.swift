// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BarDomainImplementation",
    products: [
        .library(
            name: "BarDomainImplementation",
            targets: ["BarDomainImplementation"]),
    ],
    dependencies: [
        .package(path: "../BarDomainInterface"),

        .package(path: "../../BarData/BarDataInterface"),
        .package(path: "../../FooDomain/FooDomainInterface"),
        .package(path: "../../Common/DIContainer"),
    ],
    targets: [
        .target(
            name: "BarDomainImplementation",
            dependencies: ["BarDomainInterface", "BarDataInterface", "DIContainer", "FooDomainInterface"]
        ),
        .testTarget(
            name: "BarDomainImplementationTests",
            dependencies: ["BarDomainImplementation", "BarDomainInterface", "BarDataInterface", .product(name: "BarDataStub", package: "BarDataInterface")]
        ),
    ]
)
