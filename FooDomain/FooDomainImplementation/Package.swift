// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FooDomainImplementation",
    products: [
        .library(
            name: "FooDomainImplementation",
            targets: ["FooDomainImplementation"]),
    ],
    dependencies: [
        .package(path: "../FooDomainInterface"),

        .package(path: "../../FooData/FooDataInterface"),
        .package(path: "../../BarDomain/BarDomainInterface"),
        .package(path: "../../Common/DIContainer"),
    ],
    targets: [
        .target(
            name: "FooDomainImplementation",
            dependencies: ["FooDomainInterface", "FooDataInterface", "DIContainer", "BarDomainInterface"]
        ),
        .testTarget(
            name: "FooDomainImplementationTests",
            dependencies: ["FooDomainImplementation", "FooDomainInterface", "FooDataInterface", .product(name: "FooDataStub", package: "FooDataInterface")]
        ),
    ]
)
