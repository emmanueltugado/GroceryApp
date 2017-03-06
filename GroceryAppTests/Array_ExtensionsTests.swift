//
//  Array_ExtensionsTests.swift
//  GroceryApp
//
//  Created by Emmanuel Francisco Tugado on 5/3/17.
//  Copyright © 2017 Emmanuel Tugado. All rights reserved.
//

import XCTest
@testable import GroceryApp

class Array_ExtensionsTests: XCTestCase {
    
    var subject: [String]!
    
    override func setUp() {
        super.setUp()
        
        subject = ["A", "B", "C"]
    }
    
    func testShouldGetTheCorrectValue() {
        let index = 1
        let result = subject.value(at: index)
        XCTAssertEqual("B", result)
    }
    
    func testShouldGetNilForAnIndexBeyondEndIndex() {
        let index = 10
        let result = subject.value(at: index)
        XCTAssertNil(result)
    }
    
    func testShouldGetNilForAnIndexLessThanZero() {
        let index = -5
        let result = subject.value(at: index)
        XCTAssertNil(result)
    }
}
