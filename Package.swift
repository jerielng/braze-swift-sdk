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
      checksum: "c5e5948613c1c0dea9f7643ab6de8374babaa43d63512df330c903b60a0b3744"
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
      checksum: "c8ec7ed44a1192912bc859ea35cf7f151a2896baf0cea8e7af148e4c23f24496"
    ),
    .binaryTarget(
      name: "BrazeNotificationService",
      url: "https://github.com/jerielng/braze-swift-sdk/releases/download/7.3.0/BrazeNotificationService.zip",
      checksum: "63ddf115344696314d5985f3ced61b704410c297ef471b82d4ef6410c912ef2d"
    ),
    .binaryTarget(
      name: "BrazePushStory",
      url: "https://github.com/jerielng/braze-swift-sdk/releases/download/7.3.0/BrazePushStory.zip",
      checksum: "6323b9efbb548a504a72a375768c0f347e9bd9258bc277cb3022fdd0d399fb3c"
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
