// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Lokalise",
    platforms: [
        .iOS(.v10),
        .tvOS(.v9),
        .macOS(.v10_10)
    ],
    products: [
        .library(name: "Lokalise", targets: ["Lokalise"]),
    ],
    targets: [
        .target(
            name: "Lokalise",
            path: "Lokalise.framework",
            exclude: [ "Info.plist"
            ],
            resources: [
                .process("Lokalise"),
                .process("Info.plist"),
                .process("strip-frameworks.sh")
            ],
            publicHeadersPath: "Lokalise.framework/Headers")
    ]
)