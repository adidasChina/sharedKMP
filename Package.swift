// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "KMPShared",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "KMPSharedTarget",
            targets: ["KMPSharedTarget"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
              name: "KMPSharedTarget",
              dependencies: [
                  "KMPShared"
              ],
              path: "Sources",
              resources: [
                .copy("compose-resources")
              ]
          ),
        .binaryTarget(
            name: "KMPShared",
            url: "https://artifactory.tools.adidas.com.cn/artifactory/Flagship-android/cn/adidas/kmp/XCFramework/0.0.4/sharedKMP.xcframework.zip",
            checksum: "2d95002654151526a2db36647f868b8781c96bd252edf089fedfb31ecc4745a1"
        )
    ]
)
