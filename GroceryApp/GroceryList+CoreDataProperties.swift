//
//  GroceryList+CoreDataProperties.swift
//  GroceryApp
//
//  Created by Emmanuel Francisco Tugado on 6/3/17.
//  Copyright © 2017 Emmanuel Tugado. All rights reserved.
//

import Foundation
import CoreData


extension GroceryList {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<GroceryList> {
        return NSFetchRequest<GroceryList>(entityName: "GroceryList");
    }

    @NSManaged public var name: String?
    @NSManaged public var items: NSSet?

}

// MARK: Generated accessors for items
extension GroceryList {

    @objc(addItemsObject:)
    @NSManaged public func addToItems(_ value: GroceryItem)

    @objc(removeItemsObject:)
    @NSManaged public func removeFromItems(_ value: GroceryItem)

    @objc(addItems:)
    @NSManaged public func addToItems(_ values: NSSet)

    @objc(removeItems:)
    @NSManaged public func removeFromItems(_ values: NSSet)

}
