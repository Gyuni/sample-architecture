// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FooDataInterface",
    products: [
        .library(
            name: "FooDataInterface",
            targets: ["FooDataInterface"]),
        .library(
            name: "FooDataStub",
            targets: ["FooDataStub"]),
    ],
    dependencies: [
        .package(path: "../../FooDomain/FooDomainInterface"),
    ],
    targets: [
        .target(
            name: "FooDataInterface",
            dependencies: ["FooDomainInterface"]),
        .target(
            name: "FooDataStub",
            dependencies: ["FooDataInterface", "FooDomainInterface"]),
    ]
)
