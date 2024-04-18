// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BarDomainInterface",
    products: [
        .library(
            name: "BarDomainInterface",
            targets: ["BarDomainInterface"]),
        .library(
            name: "BarDomainStub",
            targets: ["BarDomainStub"]),
    ],
    targets: [
        .target(
            name: "BarDomainInterface"),
        .target(
            name: "BarDomainStub",
            dependencies: ["BarDomainInterface"]
        ),
    ]
)
