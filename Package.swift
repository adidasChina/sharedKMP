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
            url: "https://artifactory.tools.adidas.com.cn/artifactory/Flagship-android/cn/adidas/kmp/XCFramework/0.1.0/sharedKMP.xcframework.zip",
            checksum: "36a86158607ab24d542609ad47df048cb346a6d178a7ecceaf6fb544f3ae45f8"
        )
    ]
)
