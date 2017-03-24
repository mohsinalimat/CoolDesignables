//
//  IBDesignableBlurTests.swift
//  CoolDesignables
//
//  Created by Felipe Ricieri on 24/03/17.
//  Copyright © 2017 Ricieri Labs. All rights reserved.
//

import XCTest
@testable import CoolDesignables

class IBDesignableBlurTests: XCTestCase {
    
    /**
     * Test Targets
     */
    fileprivate var lightBlurView : UIViewBlurBackgroundLight!
    fileprivate var extraLightBlurView : UIViewBlurBackgroundExtraLight!
    fileprivate var darkBlurView : UIViewBlurBackgroundDark!
    
    override func setUp() {
        super.setUp()
        
        // Assign
        self.lightBlurView = UIViewBlurBackgroundLight()
        self.extraLightBlurView = UIViewBlurBackgroundExtraLight()
        self.darkBlurView = UIViewBlurBackgroundDark()
    }
    
    override func tearDown() {
        
        // Resign
        self.lightBlurView = nil
        self.extraLightBlurView = nil
        self.darkBlurView = nil
        
        super.tearDown()
    }
    
    /**
     * Test Light Blur Background View
     */
    func testLightBlurView() {
        
        // Assert
        XCTAssert(lightBlurView != nil, "Object cannot be nil")
        XCTAssert(lightBlurView.subviews.count == 0, "Object cannot have subviews at this time")
        
        // Layout subviews
        lightBlurView.layoutSubviews()
        
        // Assert
        XCTAssert(lightBlurView.blurBackgroundView != nil, "Object should have the blurBackgroundView as subview")
        XCTAssert(lightBlurView.subviews.count == 1, "Object should only have the blurBackgroundView as subview")
        
        // Change opacity
        lightBlurView.blurOpacity = 0.5
        
        // Assert
        XCTAssert(lightBlurView.subviews.count == 1, "Object should only have the blurBackgroundView as subview")
        XCTAssert(lightBlurView.blurBackgroundView!.alpha == 0.5, "Object should have an opacity of 0.5 at this points")
    }
    
    /**
     * Test Extra Light Blur Background View
     */
    func testExtraLightBlurView() {
        
        // Assert
        XCTAssert(extraLightBlurView != nil, "Object cannot be nil")
        XCTAssert(extraLightBlurView.subviews.count == 0, "Object cannot have subviews at this time")
        
        // Layout subviews
        extraLightBlurView.layoutSubviews()
        
        // Assert
        XCTAssert(extraLightBlurView.blurBackgroundView != nil, "Object should have the blurBackgroundView as subview")
        XCTAssert(extraLightBlurView.subviews.count == 1, "Object should only have the blurBackgroundView as subview")
        
        // Change opacity
        extraLightBlurView.blurOpacity = 0.5
        
        // Assert
        XCTAssert(extraLightBlurView.subviews.count == 1, "Object should only have the blurBackgroundView as subview")
        XCTAssert(extraLightBlurView.blurBackgroundView!.alpha == 0.5, "Object should have an opacity of 0.5 at this points")
    }
    
    /**
     * Test Dark Blur Background View
     */
    func testDarkBlurView() {
        
        // Assert
        XCTAssert(darkBlurView != nil, "Object cannot be nil")
        XCTAssert(darkBlurView.subviews.count == 0, "Object cannot have subviews at this time")
        
        // Layout subviews
        darkBlurView.layoutSubviews()
        
        // Assert
        XCTAssert(darkBlurView.blurBackgroundView != nil, "Object should have the blurBackgroundView as subview")
        XCTAssert(darkBlurView.subviews.count == 1, "Object should only have the blurBackgroundView as subview")
        
        // Change opacity
        darkBlurView.blurOpacity = 0.5
        
        // Assert
        XCTAssert(darkBlurView.subviews.count == 1, "Object should only have the blurBackgroundView as subview")
        XCTAssert(darkBlurView.blurBackgroundView!.alpha == 0.5, "Object should have an opacity of 0.5 at this points")
    }
}

