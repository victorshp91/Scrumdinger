//
//  DetailsEditView.swift
//  Scrumdinger
//
//  Created by Victor Saint Hilaire on 10/5/22.
//

import SwiftUI

struct DetailsEditView: View {
    @State private var data = DailyScrum.Data()
    @State private var newAteendeeName: String = ""
    var body: some View {
        Form{
            Section(header: Text("Metting Info")){
                TextField("Title", text: $data.title)
                HStack{
                    Slider(value: $data.lenghtInMinutes, in: 5...30,step: 1)
                    Spacer()
                    Text("\(Int(data.lenghtInMinutes)) Minutes")
                }
            }
            Section(header: Text("Ateendees")){
                ForEach(data.ateendees){ateendees in Text("\(ateendees.name)")
                }.onDelete{indices in data.ateendees.remove(atOffsets: indices)}
                HStack{
                    TextField("Name", text: $newAteendeeName)
                    Spacer()
                    Button(action: {
                        withAnimation{
                            let ateendee = DailyScrum.Ateendees(name: newAteendeeName)
                            data.ateendees.append(ateendee)
                            newAteendeeName = ""
                        }
                    }){
                        Image(systemName: "plus.circle.fill")
                    }
                    .disabled(newAteendeeName.isEmpty)
                }
            }
        }
    }
}

struct DetailsEditView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsEditView()
    }
}
