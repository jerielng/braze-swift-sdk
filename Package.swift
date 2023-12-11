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
      targets: ["BrazeLocation", "BrazeLocationResources"]
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
      checksum: "5725a51f42fdcb26d3b6c0a9616185885ba7656a9e5ae8acd3a3938509d1e308"
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
      checksum: "14477090a005913be9566dcd317dd908e0f64a34e384540c61ffdceddc9e35f1"
    ),
    .target(
      name: "BrazeLocationResources",
      resources: [
        .process("Resources"),
      ]
    ),
    .binaryTarget(
      name: "BrazeNotificationService",
      url: "https://github.com/jerielng/braze-swift-sdk/releases/download/7.3.0/BrazeNotificationService.zip",
      checksum: "56d7f9a0d158eae5a322c89ad38773dea1667f443ce339827f53fa5bb0c846b7"
    ),
    .binaryTarget(
      name: "BrazePushStory",
      url: "https://github.com/jerielng/braze-swift-sdk/releases/download/7.3.0/BrazePushStory.zip",
      checksum: "a23618b4fbc05e8b418ffca0ff8a6726f016344b183b6769954d6b488afba79d"
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
