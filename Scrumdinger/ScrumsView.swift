//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Victor Saint Hilaire on 10/2/22.
//

import SwiftUI

struct ScrumsView: View {
    let scrum: [DailyScrum]
    var body: some View {
        List{
            ForEach(scrum) { scrum in
                NavigationLink(destination: DetailsView(scrum: scrum)){
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme.mainColor)
                    }
        }
        .navigationTitle("Daily Scrums")
        .toolbar {
            Button(action: {
                
            }){
                Image(systemName: "plus")
            }
        }
    }
}
    
    struct ScrumsView_Previews: PreviewProvider {
        static var previews: some View {
            NavigationView {
                ScrumsView(scrum: DailyScrum.sampleData)
            }
        }
    }
