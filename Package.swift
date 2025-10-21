// swift-tools-version: 5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdsGlobalPackage",
    defaultLocalization: "en",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "AdsGlobalPackage",
            targets: ["PAGAdSDK", "TikTokBusinessSDK"]),
        .library(
            name: "PAGAdSDK",
            targets: ["PAGAdSDK"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(name: "PAGAdSDKFramework",
                      url: "https://sf16-fe-tos-sg.i18n-pglstatp.com/obj/pangle-sdk-static-va/7.8.0.0/PAGAdSDK.xcframework.zip",
                      checksum: "705e6156c02e73d3aca475375492c45ff96f591d248589a8c3faeb6443317b86"),
        .binaryTarget(name: "TikTokBusinessSDK",
                      url: "https://sf16-fe-tos-sg.i18n-pglstatp.com/obj/pangle-sdk-static-va/7.8.0.0/TikTokBusinessSDK.xcframework.zip",
                      checksum: "038da6e36f7c0a8a6dbcd8f3750932f2cfc8eb1dc14f5f7f3c488a956d3f61bf"),
        .target(
            name: "PAGAdSDK",
            dependencies: [
                .target(name: "PAGAdSDKFramework"),
            ],
            resources: [.copy("PAGAdSDK.bundle")],
            
            linkerSettings: [
                .linkedFramework("UIKit"),
                .linkedFramework("WebKit"),
                .linkedFramework("MediaPlayer"),
                .linkedFramework("AdSupport"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("AVFoundation"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("StoreKit"),
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("MobileCoreServices"),
                .linkedFramework("CoreMotion"),
                .linkedFramework("Accelerate" ),
                .linkedFramework("AudioToolbox"),
                .linkedFramework("JavaScriptCore"),
                .linkedFramework("CoreGraphics"),
                .linkedFramework("Security"),
                .linkedFramework("DeviceCheck"),
                .linkedFramework("CoreML"),
                .linkedFramework("AppTrackingTransparency"),
                .linkedLibrary("z"),
                .linkedLibrary("resolv"),
                .linkedLibrary("sqlite3"),
                .linkedLibrary("bz2"),
                .linkedLibrary("xml2"),
                .linkedLibrary("iconv"),
                .linkedLibrary("c++abi"),
                .linkedLibrary("c++"),
            ]
        ),
    ]
)
