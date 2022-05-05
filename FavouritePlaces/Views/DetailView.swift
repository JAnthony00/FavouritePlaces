//
//  DetailView.swift
//  FavouritePlaces
//
//  Created by Jack Brighton on 5/5/22.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.managedObjectContext) var viewContext
    
    @FetchRequest(
        entity: Place.entity(),
        sortDescriptors: [
            NSSortDescriptor(keyPath: \Place.name, ascending: true),
            NSSortDescriptor(keyPath: \Place.url, ascending: false),
            NSSortDescriptor(keyPath: \Place.desc, ascending: false),
            NSSortDescriptor(keyPath: \Place.long, ascending: false),
            NSSortDescriptor(keyPath: \Place.lat, ascending: false)
        ]
    )
    private var selectedPlace: FetchedResults<Place>

    @Environment(\.editMode) var editMode
//    @State var textFieldText: String = ""
//    @State var url: String = ""
//    @State var titleTextFieldText: String = ""
//    @State var long: Float = 0.0
//    @State var lat: Float = 0.0
    var body: some View {

        List {
            Text("Hi")
        }
        .navigationTitle("Location")
        .navigationBarItems(trailing: EditButton())
        
//        if editMode?.wrappedValue == .active {
//            List {
//                TextField("Location", text: $titleTextFieldText)
//                TextField("Image URL", text: $url)
//                TextField("Description", text: $textFieldText)
//            }
//            .navigationTitle("\(titleTextFieldText)")
//            .navigationBarItems(trailing: EditButton())
//        } else {
//            List {
//                Text("\(titleTextFieldText)")
//                Text("\(url)")
//                Text("\(textFieldText)")
//            }
//            .navigationTitle("\(titleTextFieldText)")
//            .navigationBarItems(trailing: EditButton())
//        }
    }
}

//struct DetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailView(selectedPlace: selectedPlace.first ?? Place(context: viewContext) )
//    }
//}
