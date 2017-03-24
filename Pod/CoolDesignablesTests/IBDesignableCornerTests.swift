//
//  IBDesignableCornerTests.swift
//  CoolDesignables
//
//  Created by Felipe Ricieri on 24/03/17.
//  Copyright © 2017 Ricieri Labs. All rights reserved.
//

import XCTest
@testable import CoolDesignables

class IBDesignableCornerTests: XCTestCase {
    
    /**
     * Test Corner View
     */
    func testCornerView() {
        
        // Create
        let object = UIViewCorner()
        
        // Assign
        object.cornerRadius = 10.0
        
        // Assert
        XCTAssert(object.layer.cornerRadius == 10.0, "Object layer border width should be 10.0 at this point")
    }
    
    /**
     * Test Corner Image View
     */
    func testCornerImageView() {
        
        // Create
        let object = UIImageViewCorner()
        
        // Assign
        object.cornerRadius = 10.0
        
        // Assert
        XCTAssert(object.layer.cornerRadius == 10.0, "Object layer border width should be 10.0 at this point")
    }
    
    /**
     * Test Corner Button
     */
    func testCornerButton() {
        
        // Create
        let object = UIButtonCorner()
        
        // Assign
        object.cornerRadius = 10.0
        
        // Assert
        XCTAssert(object.layer.cornerRadius == 10.0, "Object layer border width should be 10.0 at this point")
    }
}

