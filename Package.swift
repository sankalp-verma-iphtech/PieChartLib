// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PieChartLibrary",
    platforms: [
        .iOS(.v13),       // Minimum iOS version
        .macOS(.v10_15)   // Minimum macOS version
        
    ],
    products: [
        // Define the library produced by this package.
        .library(
            name: "PieChartLibrary",
            targets: ["PieChartLibrary"]
        ),
    ],
    targets: [
        // Define the target for your package.
        .target(
            name: "PieChartLibrary",
            path: "Sources"
        )
    ]
)
