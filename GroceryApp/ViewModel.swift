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
    var managedObjectContext: NSManagedObjectContext? {
        return persistentContainer?.managedObjectContext
    }
    
    init(persistentContainer: PersistentContainer? = UIApplication.shared.delegate as?
        AppDelegate) {
        self.persistentContainer = persistentContainer
    }
    
    func executeRequest<Type: NSManagedObject>() throws -> [Type]? {
        let request = Type.fetchRequest()
        return try request.execute() as? [Type]
    }
    
    func fetch<Type: NSManagedObject>() -> [Type]? {
        var result: [Type]? = nil
        
        managedObjectContext?.performAndWait { [weak self] in
            do {
                result = try self?.executeRequest()
            } catch {
                print(error)
            }
        }
        
        return result
    }
    
    func save() throws {
        try managedObjectContext?.save()
    }
}
