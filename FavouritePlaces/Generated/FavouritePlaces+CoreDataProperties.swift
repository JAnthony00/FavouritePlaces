//
//  FavouritePlaces+CoreDataProperties.swift
//  FavouritePlaces
//
//  Created by Jack Brighton on 4/5/22.
//
//

import Foundation
import CoreData


extension FavouritePlaces {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<FavouritePlaces> {
        return NSFetchRequest<FavouritePlaces>(entityName: "FavouritePlaces")
    }

    @NSManaged public var name: String?
    @NSManaged public var place: NSOrderedSet?

}

// MARK: Generated accessors for place
extension FavouritePlaces {

    @objc(insertObject:inPlaceAtIndex:)
    @NSManaged public func insertIntoPlace(_ value: Place, at idx: Int)

    @objc(removeObjectFromPlaceAtIndex:)
    @NSManaged public func removeFromPlace(at idx: Int)

    @objc(insertPlace:atIndexes:)
    @NSManaged public func insertIntoPlace(_ values: [Place], at indexes: NSIndexSet)

    @objc(removePlaceAtIndexes:)
    @NSManaged public func removeFromPlace(at indexes: NSIndexSet)

    @objc(replaceObjectInPlaceAtIndex:withObject:)
    @NSManaged public func replacePlace(at idx: Int, with value: Place)

    @objc(replacePlaceAtIndexes:withPlace:)
    @NSManaged public func replacePlace(at indexes: NSIndexSet, with values: [Place])

    @objc(addPlaceObject:)
    @NSManaged public func addToPlace(_ value: Place)

    @objc(removePlaceObject:)
    @NSManaged public func removeFromPlace(_ value: Place)

    @objc(addPlace:)
    @NSManaged public func addToPlace(_ values: NSOrderedSet)

    @objc(removePlace:)
    @NSManaged public func removeFromPlace(_ values: NSOrderedSet)

}

extension FavouritePlaces : Identifiable {

}
