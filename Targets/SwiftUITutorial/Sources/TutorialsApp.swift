//
//  TutorialsApp.swift
//  Tutorials
//
//  Created by Hyuncheol on 12/18/23.
//

import SwiftUI

@main
struct TutorialsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(ModelData())
        }
    }
}
