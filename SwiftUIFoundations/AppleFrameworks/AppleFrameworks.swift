//
//  AppleFrameworks.swift
//  SwiftUIFoundations
//
//  Created by Dion James Smith on 18/10/25.
//

import Foundation

struct Framework: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let urlString: String
    let description: String
}

struct MockData {
    static let frameworks = [
        Framework(
            name: "App Clips",
            imageName: "app-clip",
            urlString: "https://developer.apple.com/app-clips/",
            description: "App Clips are a great way for users to quickly access and experience what your app has to offer. An App Clip is a small part of your app that’s discoverable at the moment it’s needed. App Clips are fast and lightweight so a user can open them quickly. Whether they’re ordering take-out from a restaurant, renting a scooter, or setting up a new connected appliance for the first time, users will be able to start and finish an experience from your app in seconds. And when they’re done, you can offer the opportunity to download your full app from the App Store."
        ),
        Framework(
            name: "ARKit",
            imageName: "arkit",
            urlString: "https://developer.apple.com/augmented-reality/arkit/",
            description: "ARKit 4 introduces a brand-new Depth API, creating a new way to access the detailed depth information gathered by the LiDAR Scanner on iPhone 12 Pro, iPhone 12 Pro Max, and iPad Pro. Location Anchors leverage the higher-resolution data in Apple Maps to place AR experiences at a specific point in the world in your iPhone and iPad apps. And support for face tracking extends to all devices with the Apple Neural Engine and a front-facing camera, so even more users can experience the joy of AR in photos and videos."
        ),
        Framework(
            name: "CarPlay",
            imageName: "carplay",
            urlString: "https://developer.apple.com/carplay/",
            description: "CarPlay provides a safer way to use your iPhone while you drive. With CarPlay, you can get directions, make calls, send and receive messages, and listen to music — all on your car’s built-in display."
        ),
        Framework(
            name: "Catalyst",
            imageName: "catalyst",
            urlString: "https://developer.apple.com/mac-catalyst/",
            description: "Mac Catalyst lets you bring your iPad app to Mac. Your apps share the same project and source code, so you can efficiently develop and maintain one codebase."
        ),
        Framework(
            name: "ClassKit",
            imageName: "classkit",
            urlString: "https://developer.apple.com/classkit/",
            description: "ClassKit helps teachers discover and assign educational activities that students can complete within your app, and it lets students see those assignments and report their progress."
        ),
        Framework(
            name: "CloudKit",
            imageName: "cloudkit",
            urlString: "https://developer.apple.com/icloud/cloudkit/",
            description: "CloudKit provides a way to store data securely in iCloud and keep everything up to date across devices and the web."
        ),
        Framework(
            name: "CoreML",
            imageName: "coreml",
            urlString: "https://developer.apple.com/machine-learning/",
            description: "Core ML makes it easy to integrate machine learning models into your app. Use models for image recognition, natural language processing, and more."
        ),
        Framework(
            name: "HealthKit",
            imageName: "healthkit",
            urlString: "https://developer.apple.com/healthkit/",
            description: "HealthKit lets your app work with the iPhone’s Health app to access and share health data in a secure and privacy-friendly way."
        ),
        Framework(
            name: "MapKit",
            imageName: "mapkit",
            urlString: "https://developer.apple.com/documentation/mapkit/",
            description: "MapKit allows you to embed maps directly into your app’s windows and views. Add annotations, overlays, and directions to make map-based features shine."
        ),
        Framework(
            name: "Metal",
            imageName: "metal",
            urlString: "https://developer.apple.com/metal/",
            description: "Metal provides near-direct access to the GPU for high-performance graphics and compute operations for games, professional apps, and more."
        ),
        Framework(
            name: "SF Symbols",
            imageName: "sf-symbols",
            urlString: "https://developer.apple.com/sf-symbols/",
            description: "SF Symbols provides over 4,000 configurable symbols that integrate seamlessly with the system font, San Francisco, making it easy to design consistent interfaces."
        ),
        Framework(
            name: "SiriKit",
            imageName: "siritkit",
            urlString: "https://developer.apple.com/sirikit/",
            description: "SiriKit helps you integrate your apps with Siri so users can get things done using just their voice."
        ),
        Framework(
            name: "SpriteKit",
            imageName: "spritekit",
            urlString: "https://developer.apple.com/spritekit/",
            description: "SpriteKit is a graphics rendering and animation infrastructure for 2D games and other animated content."
        ),
        Framework(
            name: "SwiftUI",
            imageName: "swiftui",
            urlString: "https://developer.apple.com/xcode/swiftui/",
            description: "SwiftUI helps you build great-looking apps across all Apple platforms with the power of Swift — and as little code as possible."
        ),
        Framework(
            name: "TestFlight",
            imageName: "test-flight",
            urlString: "https://developer.apple.com/testflight/",
            description: "TestFlight makes it easy to invite users to test your apps and collect valuable feedback before releasing them on the App Store."
        ),
        Framework(
            name: "TipKit",
            imageName: "tipkit",
            urlString: "https://developer.apple.com/tipkit/",
            description: "TipKit makes it easy to teach people how to use your app with tips that are timely, relevant, and easy to create."
        ),
        Framework(
            name: "Wallet",
            imageName: "wallet",
            urlString: "https://developer.apple.com/wallet/",
            description: "The Wallet app securely stores passes, tickets, and payment cards, enabling users to use their iPhone or Apple Watch for transactions and check-ins."
        ),
        Framework(
            name: "WidgetKit",
            imageName: "widgetkit",
            urlString: "https://developer.apple.com/widgets/",
            description: "WidgetKit helps you create beautiful, glanceable widgets for iOS, iPadOS, and macOS that provide quick information right on the Home Screen or Today View."
        )
    ]
}
