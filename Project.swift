import ProjectDescription

let project = Project(
    name: "Tutorials",
    settings: .settings(
        defaultSettings: .recommended
    ),
    targets: [
        Target(
            name: "TCATutorial",
            destinations: [.iPhone, .iPad, .mac],
            product: .app,
            bundleId: "net.chorr.TCATutorial",
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
