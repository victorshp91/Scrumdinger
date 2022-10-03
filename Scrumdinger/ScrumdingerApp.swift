//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Victor Saint Hilaire on 10/1/22.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrum: DailyScrum.sampleData)
            }
        }
    }
}
