//
//  GroceryItem+CoreDataProperties.swift
//  GroceryApp
//
//  Created by Emmanuel Francisco Tugado on 6/3/17.
//  Copyright © 2017 Emmanuel Tugado. All rights reserved.
//

import Foundation
import CoreData


extension GroceryItem {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<GroceryItem> {
        return NSFetchRequest<GroceryItem>(entityName: "GroceryItem");
    }

    @NSManaged public var name: String?
    @NSManaged public var quantity: Int16
    @NSManaged public var list: GroceryList?

}
