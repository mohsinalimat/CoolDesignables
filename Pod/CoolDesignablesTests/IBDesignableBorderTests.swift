//
//  IBDesignableBorderTests.swift
//  CoolDesignables
//
//  Created by Felipe Ricieri on 24/03/17.
//  Copyright © 2017 Ricieri Labs. All rights reserved.
//

import XCTest
@testable import CoolDesignables

class IBDesignableBorderTests: XCTestCase {
    
    /**
     * Colors
     */
    fileprivate let color : UIColor = .red
    fileprivate let cgColor : CGColor = UIColor.red.cgColor
    
    
    // MARK: - IBInspectableBorder
    
    
    /**
     * Test Border View
     */
    func testBorderView() {
        
        // Create
        let object = UIViewBorder()
        
        // Assign
        object.borderColor = color
        object.borderWidth = 2.0
        
        // Assert
        XCTAssert(object.layer.borderColor == cgColor, "Object layer border color should be Red at this point")
        XCTAssert(object.layer.borderWidth == 2.0, "Object layer border width should be 2.0 at this point")
    }
    
    /**
     * Test Border Image View
     */
    func testBorderImageView() {
        
        // Create
        let object = UIImageViewBorder()
        
        // Assign
        object.borderColor = color
        object.borderWidth = 2.0
        
        // Assert
        XCTAssert(object.layer.borderColor == cgColor, "Object layer border color should be Red at this point")
        XCTAssert(object.layer.borderWidth == 2.0, "Object layer border width should be 2.0 at this point")
    }
    
    /**
     * Test Border Button
     */
    func testBorderButton() {
        
        // Create
        let object = UIButtonBorder()
        
        // Assign
        object.borderColor = color
        object.borderWidth = 2.0
        
        // Assert
        XCTAssert(object.layer.borderColor == cgColor, "Object layer border color should be Red at this point")
        XCTAssert(object.layer.borderWidth == 2.0, "Object layer border width should be 2.0 at this point")
    }
    
    
    // MARK: - IBInspectableBorderHorizontal
    
    
    /**
     * Test Border View (Horizontal)
     */
    func testBorderViewHorizontal() {
        
        // Create
        let object = UIViewBorderHorizontal()
        
        // Assign
        object.borderColor = color
        object.borderTop = 2.0
        object.borderBottom = 2.0
        
        // Assert
        XCTAssert(object.currentBorderTop != nil, "Object layer border top shouldn't be nil at this point")
        XCTAssert(object.currentBorderTop!.backgroundColor == cgColor, "Object layer border color should be Red at this point")
        XCTAssert(object.currentBorderBottom != nil, "Object layer border bottom shouldn't be nil at this point")
        XCTAssert(object.currentBorderBottom!.backgroundColor == cgColor, "Object layer border color should be Red at this point")
        
        object.borderTop = 0.0
        object.borderBottom = 0.0
        
        XCTAssert(object.currentBorderTop == nil, "Object layer border top should be nil at this point")
        XCTAssert(object.currentBorderBottom == nil, "Object layer border bottom should be nil at this point")
    }
    
    /**
     * Test Border Image View (Horizontal)
     */
    func testBorderImageViewHorizontal() {
        
        // Create
        let object = UIImageViewBorderHorizontal()
        
        // Assign
        object.borderColor = color
        object.borderTop = 2.0
        object.borderBottom = 2.0
        
        // Assert
        XCTAssert(object.currentBorderTop != nil, "Object layer border top shouldn't be nil at this point")
        XCTAssert(object.currentBorderTop!.backgroundColor == cgColor, "Object layer border color should be Red at this point")
        XCTAssert(object.currentBorderBottom != nil, "Object layer border bottom shouldn't be nil at this point")
        XCTAssert(object.currentBorderBottom!.backgroundColor == cgColor, "Object layer border color should be Red at this point")
        
        object.borderTop = 0.0
        object.borderBottom = 0.0
        
        XCTAssert(object.currentBorderTop == nil, "Object layer border top should be nil at this point")
        XCTAssert(object.currentBorderBottom == nil, "Object layer border bottom should be nil at this point")
    }
    
    /**
     * Test Border Button (Horizontal)
     */
    func testBorderButtonHorizontal() {
        
        // Create
        let object = UIButtonBorderHorizontal()
        
        // Assign
        object.borderColor = color
        object.borderTop = 2.0
        object.borderBottom = 2.0
        
        // Assert
        XCTAssert(object.currentBorderTop != nil, "Object layer border top shouldn't be nil at this point")
        XCTAssert(object.currentBorderTop!.backgroundColor == cgColor, "Object layer border color should be Red at this point")
        XCTAssert(object.currentBorderBottom != nil, "Object layer border bottom shouldn't be nil at this point")
        XCTAssert(object.currentBorderBottom!.backgroundColor == cgColor, "Object layer border color should be Red at this point")
        
        object.borderTop = 0.0
        object.borderBottom = 0.0
        
        XCTAssert(object.currentBorderTop == nil, "Object layer border top should be nil at this point")
        XCTAssert(object.currentBorderBottom == nil, "Object layer border bottom should be nil at this point")
    }
    
    
    // MARK: - IBInspectableBorderVertical
    
    
    /**
     * Test Border View (Vertical)
     */
    func testBorderViewVertical() {
        
        // Create
        let object = UIViewBorderVertical()
        
        // Assign
        object.borderColor = color
        object.borderLeft = 2.0
        object.borderRight = 2.0
        
        // Assert
        XCTAssert(object.currentBorderLeft != nil, "Object layer border left shouldn't be nil at this point")
        XCTAssert(object.currentBorderLeft!.backgroundColor == cgColor, "Object layer border color should be Red at this point")
        XCTAssert(object.currentBorderRight != nil, "Object layer border right shouldn't be nil at this point")
        XCTAssert(object.currentBorderRight!.backgroundColor == cgColor, "Object layer border color should be Red at this point")
        
        object.borderLeft = 0.0
        object.borderRight = 0.0
        
        XCTAssert(object.currentBorderLeft == nil, "Object layer border left should be nil at this point")
        XCTAssert(object.currentBorderRight == nil, "Object layer border right should be nil at this point")
    }
    
    /**
     * Test Border Image View (Vertical)
     */
    func testBorderImageViewVertical() {
        
        // Create
        let object = UIImageViewBorderVertical()
        
        // Assign
        object.borderColor = color
        object.borderLeft = 2.0
        object.borderRight = 2.0
        
        // Assert
        XCTAssert(object.currentBorderLeft != nil, "Object layer border left shouldn't be nil at this point")
        XCTAssert(object.currentBorderLeft!.backgroundColor == cgColor, "Object layer border color should be Red at this point")
        XCTAssert(object.currentBorderRight != nil, "Object layer border right shouldn't be nil at this point")
        XCTAssert(object.currentBorderRight!.backgroundColor == cgColor, "Object layer border color should be Red at this point")
        
        object.borderLeft = 0.0
        object.borderRight = 0.0
        
        XCTAssert(object.currentBorderLeft == nil, "Object layer border left should be nil at this point")
        XCTAssert(object.currentBorderRight == nil, "Object layer border right should be nil at this point")
    }
    
    /**
     * Test Border Button (Vertical)
     */
    func testBorderButtonVertical() {
        
        // Create
        let object = UIButtonBorderVertical()
        
        // Assign
        object.borderColor = color
        object.borderLeft = 2.0
        object.borderRight = 2.0
        
        // Assert
        XCTAssert(object.currentBorderLeft != nil, "Object layer border left shouldn't be nil at this point")
        XCTAssert(object.currentBorderLeft!.backgroundColor == cgColor, "Object layer border color should be Red at this point")
        XCTAssert(object.currentBorderRight != nil, "Object layer border right shouldn't be nil at this point")
        XCTAssert(object.currentBorderRight!.backgroundColor == cgColor, "Object layer border color should be Red at this point")
        
        object.borderLeft = 0.0
        object.borderRight = 0.0
        
        XCTAssert(object.currentBorderLeft == nil, "Object layer border left should be nil at this point")
        XCTAssert(object.currentBorderRight == nil, "Object layer border right should be nil at this point")
    }
}

