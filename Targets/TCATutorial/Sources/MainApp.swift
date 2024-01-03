import ComposableArchitecture
import SwiftUI

@main
struct MainApp: App {
  static let store = Store(initialState: ContactsFeature.State()) {
    ContactsFeature()
  }

  var body: some Scene {
    WindowGroup {
      AppView(store: Self.store)
    }
  }
}
