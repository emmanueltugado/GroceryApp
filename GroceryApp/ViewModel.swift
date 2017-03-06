//
//  ViewModel.swift
//  GroceryApp
//
//  Created by Emmanuel Francisco Tugado on 5/3/17.
//  Copyright © 2017 Emmanuel Tugado. All rights reserved.
//

import UIKit
import CoreData

class ViewModel {
    var persistentContainer: PersistentContainer?
    var managedObjectContext: NSManagedObjectContext {
        return persistentContainer.viewContext
    }
    
    init(persistentContainer: PersistentContainer? = UIApplication.shared.delegate as?
        AppDelegate) {
        self.persistentContainer = persistentContainer
    }
}
