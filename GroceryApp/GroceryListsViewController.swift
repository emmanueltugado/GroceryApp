//
//  GroceryListsViewController.swift
//  GroceryApp
//
//  Created by Emmanuel Francisco Tugado on 5/3/17.
//  Copyright © 2017 Emmanuel Tugado. All rights reserved.
//

import UIKit

class GroceryListsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, ViewModelContainer {

    @IBOutlet weak var groceryListTableView: UITableView!
    
    var viewModel: GroceryListsViewModel = GroceryListsViewModel()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        if var groceryListContainer = segue.destination as? SelectedGroceryListContainer,
            let indexPath = groceryListTableView.indexPathForSelectedRow {
                viewModel.transferGroceryList(at: indexPath, to: &groceryListContainer)
        }
    }

    // MARK: - Table View
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.groceryLists.count
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt
        indexPath: IndexPath) {
        let list = viewModel.groceryList(at: indexPath)
        
        cell.textLabel?.text = list.name
        cell.detailTextLabel?.text = "\(list.itemCount) Items"
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: GAConstants.TableCell.rightDetail, for: indexPath)
    }
}
