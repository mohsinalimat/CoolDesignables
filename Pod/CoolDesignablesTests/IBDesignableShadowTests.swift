//
//  IBDesignableShadowTests.swift
//  CoolDesignables
//
//  Created by Felipe Ricieri on 24/03/17.
//  Copyright © 2017 Ricieri Labs. All rights reserved.
//

import XCTest
@testable import CoolDesignables

class IBDesignableShadowTests: XCTestCase {
    
    /**
     * Constants
     */
    fileprivate let color : UIColor = .red
    fileprivate let cgColor : CGColor = UIColor.red.cgColor
    fileprivate let offset = CGSize(width: 10, height: 10)
    
    /**
     * Test Shadow View
     */
    func testShadowView() {
        
        // Create
        let object = UIViewShadow()
        
        // Assign
        object.shadowColor = color
        object.shadowOffset = offset
        object.shadowOpacity = 0.5
        object.shadowRadius = 10.0
        
        // Assert
        XCTAssert(object.layer.shadowColor == cgColor, "Object layer shadow color should be Red at this point")
        XCTAssert(object.layer.shadowOffset == offset, "Object layer shadow offset should be 10x10 at this point")
        XCTAssert(object.layer.shadowOpacity == 0.5, "Object layer shadow opacity should be 0.5 at this point")
        XCTAssert(object.layer.shadowRadius == 10.0, "Object layer shadow radius should be 10.0 at this point")
    }
    
    /**
     * Test Shadow Image View
     */
    func testShadowImageView() {
        
        // Create
        let object = UIImageViewShadow()
        
        // Assign
        object.shadowColor = color
        object.shadowOffset = offset
        object.shadowOpacity = 0.5
        object.shadowRadius = 10.0
        
        // Assert
        XCTAssert(object.layer.shadowColor == cgColor, "Object layer shadow color should be Red at this point")
        XCTAssert(object.layer.shadowOffset == offset, "Object layer shadow offset should be 10x10 at this point")
        XCTAssert(object.layer.shadowOpacity == 0.5, "Object layer shadow opacity should be 0.5 at this point")
        XCTAssert(object.layer.shadowRadius == 10.0, "Object layer shadow radius should be 10.0 at this point")
    }
    
    /**
     * Test Shadow Button
     */
    func testShadowButton() {
        
        // Create
        let object = UIButtonShadow()
        
        // Assign
        object.shadowColor = color
        object.shadowOffset = offset
        object.shadowOpacity = 0.5
        object.shadowRadius = 10.0
        
        // Assert
        XCTAssert(object.layer.shadowColor == cgColor, "Object layer shadow color should be Red at this point")
        XCTAssert(object.layer.shadowOffset == offset, "Object layer shadow offset should be 10x10 at this point")
        XCTAssert(object.layer.shadowOpacity == 0.5, "Object layer shadow opacity should be 0.5 at this point")
        XCTAssert(object.layer.shadowRadius == 10.0, "Object layer shadow radius should be 10.0 at this point")
    }
}

