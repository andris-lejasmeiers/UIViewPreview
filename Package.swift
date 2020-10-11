// swift-tools-version:5.3

import PackageDescription

let package = Package(
  name: "UIViewPreview",
  platforms: [.iOS(.v12), .tvOS(.v12)],
  products: [
    .library(name: "UIViewPreview", targets: ["UIViewPreview"]),
  ],
  targets: [
    .target(name: "UIViewPreview"),
  ]
)
