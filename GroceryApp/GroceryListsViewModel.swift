//
//  GroceryListsViewModel.swift
//  GroceryApp
//
//  Created by Emmanuel Francisco Tugado on 5/3/17.
//  Copyright © 2017 Emmanuel Tugado. All rights reserved.
//

import Foundation

class GroceryListsViewModel: ViewModel {
    var groceryLists: [GroceryList] {
        return dataContainer?.data ?? []
    }
    
    func groceryList(at indexPath: IndexPath) -> (name: String?, itemCount: Int) {
        let list: GroceryList? = groceryLists.value(at: indexPath.row)
        return (list?.name, list?.items?.count ?? 0)
    }
    
    func transferGroceryList(at indexPath: IndexPath, to container: inout SelectedGroceryListContainer) {
        container.selectedGroceryList = groceryLists.value(at: indexPath.row)
    }
}
