//
//  CardView.swift
//  Scrumdinger
//
//  Created by Victor Saint Hilaire on 10/1/22.
//

import SwiftUI

struct CardView: View {
    var scrum: DailyScrum
    var body: some View {
        VStack(alignment: .leading){
            Text(scrum.title)
                .font(.headline)
                .accessibilityAddTraits(.isHeader)
            Spacer()
            HStack{
                Label("\(scrum.attendes.count)", systemImage:"person.3"     )
                    .accessibilityLabel("\(scrum.attendes.count) attendees")
                Spacer()
                Label("\(scrum.lenghtInMinutes)", systemImage: "clock")
                    .labelStyle(.trailingIcon)
                    .accessibilityLabel("\(scrum.lenghtInMinutes) minutes meeting")
            }
            .font(.caption)
        }
        .padding()
        .foregroundColor(scrum.theme.accentColor)
    }
}

struct CardView_Previews: PreviewProvider {
    static var scrum = DailyScrum.sampleData[0]
    static var previews: some View {
        CardView(scrum: scrum)
            .background(scrum.theme.mainColor)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
