// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to
// build this package.

import PackageDescription

let package = Package(
    name: "YandexMapPackageWrapper",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        // Products define the executables and libraries a package produces, and
        // make them visible to other packages.
        .library(
            name: "YandexMapPackageWrapper",
            targets: ["YandexMapPackageWrapper"]
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(
            url: "https://github.com/c-villain/YandexMapsMobileLite",
            .revision("0e542d93d83c729f4845833591eaa2d925a1c996")
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a
        // module or a test suite.
        // Targets can depend on other targets in this package, and on products in
        // packages this package depends on.
        .target(name: "YandexMapPackageWrapper",
                dependencies: [
                    .product(name: "YandexMapsMobile", package: "YandexMapsMobileLite"),
                ],
                resources: [
                  .process("Resources"),
                ],
                linkerSettings: [
                    .linkedFramework("CoreLocation"),
                    .linkedFramework("CoreTelephony"),
                    .linkedFramework("SystemConfiguration"),
                    .linkedFramework("CoreMotion"),
                    .linkedLibrary("c++"),
                    .unsafeFlags(["-ObjC"]),
                ])
    ]
)
