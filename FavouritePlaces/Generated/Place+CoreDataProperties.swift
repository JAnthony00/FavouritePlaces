//
//  Place+CoreDataProperties.swift
//  FavouritePlaces
//
//  Created by Jack Brighton on 4/5/22.
//
//

import Foundation
import CoreData


extension Place {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Place> {
        return NSFetchRequest<Place>(entityName: "Place")
    }

    @NSManaged public var name: String?
    @NSManaged public var favourite: FavouritePlaces?

}

extension Place : Identifiable {

}
