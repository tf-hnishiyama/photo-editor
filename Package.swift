// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "iOSPhotoEditor",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "iOSPhotoEditor",
            targets: ["iOSPhotoEditor"]
        )
    ],
    targets: [
        .target(
            name: "iOSPhotoEditor",
            path: "Sources/iOSPhotoEditor",
            resources: [
                .process("ColorCollectionViewCell.xib"),
                .process("EmojiCollectionViewCell.xib"),
                .process("StickerCollectionViewCell.xib"),
                .process("StickersViewController.xib"),
                .process("PhotoEditorViewController.xib"),
                .process("LaunchScreen.storyboard"),
                .process("PhotoCropEditorBorder.png"),
                .process("PhotoCropEditorBorder@2x.png"),
                .process("PhotoCropEditorBorder@3x.png"),
                .process("icomoon.ttf")
            ],
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        )
    ]
)
