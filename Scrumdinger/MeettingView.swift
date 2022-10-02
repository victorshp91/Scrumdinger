//
//  ContentView.swift
//  Scrumdinger
//
//  Created by Victor Saint Hilaire on 10/1/22.
//

import SwiftUI

struct MeettingView: View {
    var body: some View {
        VStack{
            ProgressView(value: 5, total:15)
            HStack{
                VStack(alignment: .leading) {
                    Text("Seconds Elapsed")
                        .font(.caption)
                    Label("300", systemImage: "hourglass.tophalf.fill")
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Seconds Remaining")
                        .font(.caption)
                    Label("600", systemImage: "hourglass.bottomhalf.fill")
                        .labelStyle(.trailingIcon)
                }
            }
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Time Remaining")
            .accessibilityValue("10 minutes")
            Circle().strokeBorder(lineWidth: 24)
            HStack{
                Text("Speaker 1 of 3")
                Spacer()
                Button(action: {}){
                    Image(systemName: "forward.fill")
                }
                .accessibilityLabel("Next Speaker")
            }
            
        }
        .padding()
    }
}

struct MeettingView_Previews: PreviewProvider {
    static var previews: some View {
        MeettingView()
    }
}
