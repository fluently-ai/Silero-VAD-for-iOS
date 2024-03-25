// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "Silero-VAD-for-iOS",
    platforms: [
        .iOS(.v13),
        .macOS(.v11)
    ],
    products: [
        .library(
            name: "Silero-VAD-for-iOS",
            targets: ["Silero-VAD-for-iOS"]
        )
    ],
    dependencies: [
      .package(
        name: "onnxruntime",
        url: "https://github.com/microsoft/onnxruntime-swift-package-manager",
        branch: "main"
      )
    ],
    targets: [
        .target(
            name: "Silero-VAD-for-iOS",
            dependencies: ["onnxruntime"],
            path: "Silero-VAD-for-iOS/Classes"
        )
    ]
)
