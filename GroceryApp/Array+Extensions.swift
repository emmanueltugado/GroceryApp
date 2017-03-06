//
//  Array+Extensions.swift
//  GroceryApp
//
//  Created by Emmanuel Francisco Tugado on 5/3/17.
//  Copyright © 2017 Emmanuel Tugado. All rights reserved.
//

import Foundation

extension Array {
    func value(at index: Int) -> Element? {
        guard index >= 0 && index < endIndex else { return nil }
        
        return self[index]
    }
}
