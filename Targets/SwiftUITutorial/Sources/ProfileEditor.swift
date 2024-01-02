//
//  ProfileEditor.swift
//  Tutorials
//
//  Created by Hyuncheol on 12/21/23.
//

import SwiftUI

struct ProfileEditor: View {
  @Binding var profile: Profile

  var dateRange: ClosedRange<Date> {
    let min = Calendar.current.date(byAdding: .year, value: -1, to: profile.goalDate)!
    let max = Calendar.current.date(byAdding: .year, value: 1, to: profile.goalDate)!
    return min...max
  }

  var body: some View {
    List {
      HStack {
        Text("Username")
        Spacer()
        TextField("Username", text: $profile.username)
          .foregroundStyle(.secondary)
          .multilineTextAlignment(.trailing)
      }

      Toggle(isOn: $profile.prefersNotifications) {
        Text("Enable Notifications")
      }

      Picker("Seasonal Photo", selection: $profile.seasonalPhoto) {
        ForEach(Profile.Season.allCases) {
          Text($0.rawValue).tag($0)
        }
      }

      DatePicker(selection: $profile.goalDate, in: dateRange, displayedComponents: .date) {
        Text("Goal Date")
      }
    }
  }
}

#Preview {
  ProfileEditor(profile: .constant(.default))
}
