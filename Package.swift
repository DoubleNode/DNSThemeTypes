// swift-tools-version:5.7
//
//  Package.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSThemeTypes
//
//  Created by Darren Ehlers.
//  Copyright © 2020 - 2016 DoubleNode.com. All rights reserved.
//

import PackageDescription

let package = Package(
    name: "DNSThemeTypes",
    platforms: [
        .iOS(.v16),
        .tvOS(.v16),
        .macCatalyst(.v16),
        .macOS(.v13),
        .watchOS(.v9),
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "DNSThemeTypes",
            type: .static,
            targets: ["DNSThemeTypes"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
//        .package(url: "https://github.com/DoubleNode/DNSCore.git", from: "1.11.6"),
        .package(path: "../DNSCore"),
        .package(url: "https://github.com/Nirma/SFSymbol", from: "2.3.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "DNSThemeTypes",
            dependencies: [
                "DNSCore", "SFSymbol",
            ],
        ),
        .testTarget(
            name: "DNSThemeTypesTests",
            dependencies: ["DNSThemeTypes"]),
    ],
    swiftLanguageVersions: [.v5]
)
