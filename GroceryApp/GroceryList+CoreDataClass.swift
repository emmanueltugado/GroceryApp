//
//  GroceryList+CoreDataClass.swift
//  GroceryApp
//
//  Created by Emmanuel Francisco Tugado on 6/3/17.
//  Copyright © 2017 Emmanuel Tugado. All rights reserved.
//

import Foundation
import CoreData


public class GroceryList: NSManagedObject {
    convenience init?(managedObjectContext: NSManagedObjectContext?) {
        guard   let mObjCtx = managedObjectContext,
                    let entity = NSEntityDescription.entity(forEntityName: GAConstants.Entities.groceryList, in: mObjCtx)
        else { return nil }
        
        self.init(entity: entity, insertInto: mObjCtx)
    }
}
