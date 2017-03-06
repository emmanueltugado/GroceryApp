//
//  ViewModelContainer.swift
//  GroceryApp
//
//  Created by Emmanuel Francisco Tugado on 5/3/17.
//  Copyright © 2017 Emmanuel Tugado. All rights reserved.
//

import Foundation

protocol ViewModelContainer {
    associatedtype VM: ViewModel
    
    var viewModel: VM { get set }
}
