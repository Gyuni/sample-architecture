// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BarPresentationInterface",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "BarPresentationInterface",
            targets: ["BarPresentationInterface"]),
        .library(
            name: "BarPresentationStub",
            targets: ["BarPresentationStub"]),
    ],
    targets: [
        .target(
            name: "BarPresentationInterface"),
        .target(
            name: "BarPresentationStub",
            dependencies: ["BarPresentationInterface"]),
    ]
)
