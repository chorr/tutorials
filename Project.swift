import ProjectDescription

let project = Project(
  name: "Tutorials",
  settings: .settings(
    defaultSettings: .recommended
  ),
  targets: [
    Target(
      name: "SwiftUITutorial",
      destinations: [.iPhone, .iPad, .mac],
      product: .app,
      bundleId: "net.chorr.SwiftUITutorial",
      infoPlist: .extendingDefault(with: [
        "UILaunchScreen": ""
      ]),
      sources: "Targets/SwiftUITutorial/Sources/**",
      resources: "Targets/SwiftUITutorial/Resources/**"
    ),
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
        .external(name: "ComposableArchitecture"),
        .external(name: "CasePaths")
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
