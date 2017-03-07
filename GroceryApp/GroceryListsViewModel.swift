//
//  GroceryListsViewModel.swift
//  GroceryApp
//
//  Created by Emmanuel Francisco Tugado on 5/3/17.
//  Copyright © 2017 Emmanuel Tugado. All rights reserved.
//

import Foundation

enum GroceryDataError: Error {
    case Saving(String)
}

class GroceryListsViewModel: ViewModel {
    var groceryLists: [GroceryList] {
        return fetch() ?? []
    }
    
    func groceryList(at indexPath: IndexPath) -> (name: String?, itemCount: Int) {
        let list: GroceryList? = groceryLists.value(at: indexPath.row)
        return (list?.name, list?.items?.count ?? 0)
    }
    
    func transferGroceryList(at indexPath: IndexPath, to container: inout SelectedGroceryListContainer) {
        container.selectedGroceryList = groceryLists.value(at: indexPath.row)
    }
    
    func createGroceryList(with name: String?) throws {
        guard name?.isEmpty == false,
            let newList = GroceryList(managedObjectContext: managedObjectContext)
        else {
            throw GroceryDataError.Saving("There was an error creating new grocery list \(name)")
        }
        
        newList.name = name
        try save()
    }
}
