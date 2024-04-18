// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FooDomainInterface",
    products: [
        .library(
            name: "FooDomainInterface",
            targets: ["FooDomainInterface"]),
        .library(
            name: "FooDomainStub",
            targets: ["FooDomainStub"]),
    ],
    targets: [
        .target(
            name: "FooDomainInterface"),
        .target(
            name: "FooDomainStub",
            dependencies: ["FooDomainInterface"]
        ),
    ]
)
