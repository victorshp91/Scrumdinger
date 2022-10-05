//
//  DetailsEditView.swift
//  Scrumdinger
//
//  Created by Victor Saint Hilaire on 10/5/22.
//

import SwiftUI

struct DetailsEditView: View {
    @State private var data = DailyScrum.Data()
    @State private var newAttendeeName = ""
    var body: some View {
        Form(){
            Section(header: Text("Metting Info")){
                TextField("Title", text: $data.title)
                HStack{
                    Slider(value: $data.lenghtInMinutes, in: 5...30, step: 1){
                        Text("Lenght") // Just for accesibilty
                    }
                    Spacer()
                    Text("\(Int(data.lenghtInMinutes)) Minutes")
                }
            }
            Section(header: Text("Ateendees")){
                ForEach(data.ateendees){ateendee in Text("\(ateendee.name)")
                }.onDelete{indices in data.ateendees.remove(atOffsets: indices)}
                HStack{
                    TextField("Name",text: $newAttendeeName)
                    Button(action: {
                        withAnimation{
                            let attendee = DailyScrum.Ateendees(name: newAttendeeName)
                            data.ateendees.append(attendee)
                            newAttendeeName = ""
                        }
                    }){
                        Image(systemName: "plus.circle.fill")
                    }
                    .disabled(newAttendeeName.isEmpty)
                }
                
            }
        }
    }
    
    struct DetailsEditView_Previews: PreviewProvider {
        static var previews: some View {
            DetailsEditView()
        }
    }
}
