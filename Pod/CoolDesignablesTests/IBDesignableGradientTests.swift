//
//  IBDesignableGradientTests.swift
//  CoolDesignables
//
//  Created by Felipe Ricieri on 24/03/17.
//  Copyright © 2017 Ricieri Labs. All rights reserved.
//

import XCTest
@testable import CoolDesignables

class IBDesignableGradientTests: XCTestCase {
    
    /**
     * Test Gradient Background View
     */
    func testGradientView() {
        
        let object = UIViewGradientBackground()
        
        // Assert
        XCTAssert(object.subviews.count == 0, "Object cannot have subviews at this time")
        
        // Assign
        object.firstColor = .red
        object.secondColor = .blue
        object.isHorizontal = true
        
        // Assert
        XCTAssert(object.gradientView != nil, "Object should have the gradientView as subview")
        XCTAssert(object.subviews.count == 1, "Object cannot have subviews at this time")
        XCTAssert(object.firstColor == .red, "Object first color should be Red at this point")
        XCTAssert(object.secondColor == .blue, "Object second color should be Blue at this point")
        XCTAssert(object.isHorizontal == true, "Object gradient direction should be horizontal at this point")
    }
}
