// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BarPresentationImplementation",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "BarPresentationImplementation",
            targets: ["BarPresentationImplementation"]),
    ],
    dependencies: [
        .package(path: "../BarPresentationInterface"),
        
        .package(path: "../../Common/DIContainer"),
        .package(path: "../../BarDomain/BarDomainInterface"),
        .package(path: "../../FooPresentation/FooPresentationInterface"),
    ],
    targets: [
        .target(
            name: "BarPresentationImplementation",
            dependencies: ["BarPresentationInterface", "DIContainer", "BarDomainInterface", "FooPresentationInterface"]),
        .testTarget(
            name: "BarPresentationImplementationTests",
            dependencies: ["BarPresentationImplementation"]),
    ]
)
