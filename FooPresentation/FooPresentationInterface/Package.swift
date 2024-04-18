// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FooPresentationInterface",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "FooPresentationInterface",
            targets: ["FooPresentationInterface"]),
        .library(
            name: "FooPresentationStub",
            targets: ["FooPresentationStub"]),
    ],
    targets: [
        .target(
            name: "FooPresentationInterface"),
        .target(
            name: "FooPresentationStub",
            dependencies: ["FooPresentationInterface"]),
    ]
)
