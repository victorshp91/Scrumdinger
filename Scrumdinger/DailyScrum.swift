//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Victor Saint Hilaire on 10/1/22.
//

import Foundation

struct DailyScrum: Identifiable {
    var id: UUID
    var title: String
    var attendes: [String]
    var lenghtInMinutes: Int
    var theme: Theme
    
    init(id: UUID = UUID(), title: String, attendes: [String], lenghtInMinutes: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendes = attendes
        self.lenghtInMinutes = lenghtInMinutes
        self.theme = theme
    }
}

extension DailyScrum{
    static var sampleData =
    [
        DailyScrum(title: "Design", attendes: ["Cathy", "Daisy", "Simon", "Jonathan"], lenghtInMinutes: 10, theme: .yellow),
        DailyScrum(title: "App Dev", attendes: ["Katie", "Gray", "Euna", "Luis", "Darla"], lenghtInMinutes: 5, theme: .orange),
        DailyScrum(title: "Web Dev", attendes: ["Chella", "Chris", "Christina", "Eden", "Karla", "Lindsey", "Aga", "Chad", "Jenn", "Sarah"], lenghtInMinutes: 5, theme: .poppy)
    ]
    
}
