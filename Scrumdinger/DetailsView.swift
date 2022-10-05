//
//  DetailsView.swift
//  Scrumdinger
//
//  Created by Victor Saint Hilaire on 10/3/22.
//

import SwiftUI

struct DetailsView: View {
    
    let scrum: DailyScrum
    
    @State private var isPresentingEditView = false
    
    var body: some View {
        List{
            Section(header: Text("Meeting Info")){
                NavigationLink(destination: MeettingView()) {
                    Label("Start Meeting", systemImage: "timer")
                        .font(.headline)
                        .foregroundColor(.accentColor)
                }
                HStack{
                    Label("Lenght", systemImage: "clock")
                    Spacer()
                    Text("\(scrum.lenghtInMinutes)")
                }
                .accessibilityElement(children: .combine)
                HStack{
                    Label("Theme", systemImage: "paintpalette")
                    Spacer()
                    Text("\(scrum.theme.name)").padding(4)
                        .foregroundColor(scrum.theme.accentColor)
                        .background(scrum.theme.mainColor)
                        .cornerRadius(5)
                }
            }
            Section(header: Text("Ateendees")){
                ForEach(scrum.attendes){
                    attendess in
                    Label("\(attendess.name)", systemImage: "person")
                }
            }
        }
        .navigationTitle(scrum.title)
        .toolbar {
            Button("Edit"){
                isPresentingEditView = true
            }
        }
        .sheet(isPresented: $isPresentingEditView){
            NavigationView{
                DetailsEditView()
                    .navigationTitle(scrum.title)
                    .toolbar{
                        ToolbarItem(placement: .cancellationAction){
                            Button("Cancel"){
                                isPresentingEditView = false
                            }
                        }
                        ToolbarItem(placement: .confirmationAction){
                            Button("Done"){
                                isPresentingEditView = false
                            }
                        }
                    }
            }
            
        }
    }
    
    struct DetailsView_Previews: PreviewProvider {
        static var previews: some View {
            DetailsView(scrum: DailyScrum.sampleData[0])
        }
    }
}
