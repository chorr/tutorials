//
//  ProfileSummary.swift
//  Tutorials
//
//  Created by Hyuncheol on 12/21/23.
//

import SwiftUI

struct ProfileSummary: View {
  @Environment(ModelData.self) var modelData
  var profile: Profile

  var body: some View {
    ScrollView {
      VStack(alignment: .leading, spacing: 10) {
        Text(profile.username)
          .font(.title)

        Text("Notifications: \(profile.prefersNotifications ? "On": "Off")")
        Text("Seasonal Photos: \(profile.seasonalPhoto.rawValue)")
        Text("Goal Date: ") + Text(profile.goalDate, style: .date)

        Divider()

        VStack(alignment: .leading) {
          Text("Completed Badges")
            .font(.headline)

          ScrollView(.horizontal) {
            HStack {
              HikeBadge(name: "First Hike")
              HikeBadge(name: "Earth Day")
                .hueRotation(Angle(degrees: 90))
            }
            .padding(.bottom)
          }
        }

        Divider()

        VStack(alignment: .leading) {
          Text("Recent Hikes")
            .font(.headline)
          HikeView(hike: modelData.hikes[0])
        }
      }
    }
  }
}

#Preview {
  ProfileSummary(profile: Profile.default)
    .environment(ModelData())
}
