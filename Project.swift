import ProjectDescription

let project = Project(
    name: "Tutorials",
    packages: [
        .remote(
            url: "https://github.com/pointfreeco/swift-composable-architecture",
            requirement: .upToNextMajor(from: "1.5.6")
        )
    ],
    settings: .settings(
        defaultSettings: .recommended
    ),
    targets: [
        Target(
            name: "TCATutorial",
            destinations: [.iPhone, .iPad, .mac],
            product: .app,
            bundleId: "net.chorr.TCATutorial",
            infoPlist: .extendingDefault(with: [
                "UILaunchScreen": "",
                "NSAppTransportSecurity": [
                    "NSAllowsArbitraryLoads": true
                ]
            ]),
            sources: "Targets/TCATutorial/Sources/**",
            resources: "Targets/TCATutorial/Resources/**",
            dependencies: [
                .package(product: "ComposableArchitecture")
            ]
        ),
        Target(
            name: "TCATutorialTests",
            destinations: [.iPhone, .iPad, .mac],
            product: .unitTests,
            bundleId: "net.chorr.TCATutorialTests",
            sources: "Targets/TCATutorial/Tests/**",
            dependencies: [
                .target(name: "TCATutorial")
            ]
        )
    ]
)
