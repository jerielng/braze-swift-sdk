// swift-tools-version:5.7

import PackageDescription

let package = Package(
  name: "braze-swift-sdk",
  defaultLocalization: "en",
  platforms: [
    .iOS(.v11),
    .tvOS(.v11)
  ],
  products: [
    .library(
      name: "BrazeKit",
      targets: ["BrazeKit", "BrazeKitResources"]
    ),
    .library(
      name: "BrazeUI",
      targets: ["BrazeUI"]
    ),
    .library(
      name: "BrazeLocation",
      targets: ["BrazeLocation"]
    ),
    .library(
      name: "BrazeNotificationService",
      targets: ["BrazeNotificationService"]
    ),
    .library(
      name: "BrazePushStory",
      targets: ["BrazePushStory"]
    ),
    .library(
      name: "BrazeKitCompat",
      targets: ["BrazeKitCompat"]
    ),
    .library(
      name: "BrazeUICompat",
      targets: ["BrazeUICompat"]
    ),
  ],
  dependencies: [
    .package(url: "https://github.com/SDWebImage/SDWebImage.git", from: "5.13.2"),
    /* ${dependencies-start} */
    /* ${dependencies-end} */
  ],
  targets: [
    .binaryTarget(
      name: "BrazeKit",
      url: "https://github.com/jerielng/braze-swift-sdk/releases/download/7.3.0/BrazeKit.zip",
      checksum: "58b0290d3715212fe5e900b3494afb2d21e75108f6381b55b524bd944d0997d1"
    ),
    .target(
      name: "BrazeKitResources",
      resources: [
        .process("Resources"),
      ]
    ),
    .target(
      name: "BrazeUI",
      dependencies: [
        .target(name: "BrazeKit"),
      ],
      resources: [.process("Resources")]
    ),
    .binaryTarget(
      name: "BrazeLocation",
      url: "https://github.com/jerielng/braze-swift-sdk/releases/download/7.3.0/BrazeLocation.zip",
      checksum: "f1ce9e26f8206f6275c34055cdb426305363d12e44312be7ed90c9cf108bbff7"
    ),
    .binaryTarget(
      name: "BrazeNotificationService",
      url: "https://github.com/jerielng/braze-swift-sdk/releases/download/7.3.0/BrazeNotificationService.zip",
      checksum: "24b6abf2f3e76adeee2f0c387e88eb6393ebcb0f2d78988a7c59eacf92dea3d8"
    ),
    .binaryTarget(
      name: "BrazePushStory",
      url: "https://github.com/jerielng/braze-swift-sdk/releases/download/7.3.0/BrazePushStory.zip",
      checksum: "3f4f2c9d6fb563b68c46e1227393c56b047f7986731aca75227e2ee5e04004be"
    ),
    .target(
      name: "BrazeKitCompat",
      dependencies: [
        .target(name: "BrazeKit"),
        .target(name: "BrazeLocation"),
      ]
    ),
    .target(
      name: "BrazeUICompat",
      dependencies: [
        "BrazeKitCompat",
        "SDWebImage",
      ],
      resources: [
        .process("ABKNewsFeed/Resources"),
        .process("ABKInAppMessage/Resources"),
        .process("ABKContentCards/Resources")
      ],
      publicHeadersPath: "include/AppboyUI"
    ),
  ]
)
