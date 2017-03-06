//
//  PersistentContainer.swift
//  GroceryApp
//
//  Created by Emmanuel Francisco Tugado on 6/3/17.
//  Copyright © 2017 Emmanuel Tugado. All rights reserved.
//

import Foundation
import CoreData

protocol PersistentContainer {
    var persistentContainer: NSPersistentContainer { get set }
    var managedObjectContext: NSManagedObjectContext { get }
}

extension PersistentContainer {
    var managedObjectContext: NSManagedObjectContext {
        return persistentContainer.viewContext
    }
}
