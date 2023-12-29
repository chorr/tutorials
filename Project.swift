import ProjectDescription

let project = Project(
    name: "Tutorials",
    settings: .settings(
        defaultSettings: .recommended
    ),
    targets: [
        Target(
            name: "TCATutorial",
            destinations: [.iPhone, .iPad, .macWithiPadDesign],
            product: .app,
            bundleId: "net.chorr.TCATutorial",
            deploymentTargets: .iOS("17.0"),
            infoPlist: .default,
            sources: [
                "Targets/TCATutorial/Sources/**"
            ],
            resources: [
                "Targets/TCATutorial/Resources/**"
            ],
            dependencies: [
                .external(name: "ComposableArchitecture")
            ]
        )
    ]
)
