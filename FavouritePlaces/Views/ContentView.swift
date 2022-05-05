//
//  ContentView.swift
//  FavouritePlaces
//
//  Created by Jack Brighton on 4/5/22.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \FavouritePlaces.name, ascending: true)],
        animation: .default)
    
    private var favouritePlaces: FetchedResults<FavouritePlaces>

    var body: some View {
        NavigationView {
            MasterView(favouritePlaces: favouritePlaces.first ?? FavouritePlaces(context: viewContext))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
