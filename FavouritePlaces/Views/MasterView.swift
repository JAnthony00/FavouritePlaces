//
//  MasterView.swift
//  FavouritePlaces
//
//  Created by Jack Brighton on 5/5/22.
//

import SwiftUI

struct MasterView: View {
    @ObservedObject var favouritePlaces: FavouritePlaces
    @Environment(\.managedObjectContext) var viewContext
    
    var body: some View {
        List {
            ForEach(favouritePlaces.placeArray) { place in
                HStack {
                    Image(systemName: "map")
                    NavigationLink("\(place.name ?? "")", destination: DetailView())
                }
            }
            .onDelete(perform: deleteItems)
        }
        .navigationTitle("Favourite Places")
        .navigationBarItems(
            leading: EditButton(),
            trailing: Button(action: addItem) {
                Label("", systemImage: "plus")
            })
    }
    
    private func addItem() {
        withAnimation {
            let place = Place(context: viewContext)
            place.name = "Location"
            var places = favouritePlaces.placeArray
            places.append(place)
            favouritePlaces.place = NSOrderedSet(array: places)

            do {
                try viewContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }
    
    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            offsets.map { favouritePlaces.placeArray[$0] }.forEach(viewContext.delete)

            do {
                try viewContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }
    
    
}
