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
            url: "https://artifactory.tools.3stripes.net/ui/native/MobileSDKRepo/cn/adidas/kmp/XCFramework/0.1.0/sharedKMP.xcframework.zip",
            checksum: "2dca9597ef3b3cd3d043784700b7aaee0def41ab54f865ba7db2e1cd17876157"
        )
    ]
)
