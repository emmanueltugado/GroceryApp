//
//  AddGroceryListViewController.swift
//  GroceryApp
//
//  Created by Emmanuel Francisco Tugado on 7/3/17.
//  Copyright © 2017 Emmanuel Tugado. All rights reserved.
//

import UIKit

class AddGroceryListViewController: UIViewController, ViewModelContainer {
    
    var viewModel: GroceryListsViewModel = GroceryListsViewModel()

    @IBOutlet weak var groceryListName: UITextField!

    @IBAction func dismiss(_ sender: Any) {
        dismissVC()
    }
    
    func dismissVC() {
        dismiss(animated: UIView.areAnimationsEnabled, completion: nil)
    }

    @IBAction func addList(_ sender: Any) {
        do {
            try viewModel.createGroceryList(with: groceryListName?.text)
            dismissVC()
        } catch {
            print(error)
        }
    }
}
