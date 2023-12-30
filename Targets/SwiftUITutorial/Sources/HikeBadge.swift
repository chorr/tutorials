//
//  HikeBadge.swift
//  Tutorials
//
//  Created by Hyuncheol on 12/21/23.
//

import SwiftUI

struct HikeBadge: View {
    var name: String

    var body: some View {
        VStack(alignment: .center) {
            Badge()
                .frame(width: 300, height: 300)
                .scaleEffect(1 / 3)
                .frame(width: 100, height: 100)
            Text(name)
                .font(.caption)
                .accessibilityLabel("badge")
        }
    }
}

#Preview {
    HikeBadge(name: "Preview Testing")
}
