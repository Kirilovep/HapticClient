// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HapticClient",
    platforms: [
        .iOS(.v13),
        .macOS(.v12),
        .watchOS(.v8),
        .tvOS(.v15)
    ],
    products: [
        .library(
            name: "HapticClient",
            targets: ["HapticClient"]
        ),
        .library(
            name: "HapticClientSwiftUI",
            targets: ["HapticClientSwiftUI"]
        ),
        .library(
            name: "HapticClientDependencies",
            targets: ["HapticClientDependencies"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/pointfreeco/swift-dependencies",
            from: "1.0.0"
        )
    ],
    targets: [
        .target(
            name: "HapticClient",
            path: "Sources/Core"
        ),
        .target(
            name: "HapticClientSwiftUI",
            dependencies: ["HapticClient"],
            path: "Sources/SwiftUISupport"
        ),
        .target(
            name: "HapticClientDependencies",
            dependencies: [
                "HapticClient",
                .product(
                    name: "Dependencies",
                    package: "swift-dependencies"
                ),
            ],
            path: "Sources/DependenciesSupport"
        )
    ],
    swiftLanguageModes: [.v6]
)
