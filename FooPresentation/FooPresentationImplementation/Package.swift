// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FooPresentationImplementation",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "FooPresentationImplementation",
            targets: ["FooPresentationImplementation"]),
    ],
    dependencies: [
        .package(path: "../FooPresentationInterface"),
        
        .package(path: "../../Common/DIContainer"),
        .package(path: "../../FooDomain/FooDomainInterface"),
        .package(path: "../../BarPresentation/BarPresentationInterface"),
    ],
    targets: [
        .target(
            name: "FooPresentationImplementation",
            dependencies: ["FooPresentationInterface", "DIContainer", "FooDomainInterface", "BarPresentationInterface"]),
        .testTarget(
            name: "FooPresentationImplementationTests",
            dependencies: ["FooPresentationImplementation"]),
    ]
)
