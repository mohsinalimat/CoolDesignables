//
//  IBInspectableGradient.swift
//  CoolDesignables
//
//  Created by Felipe Ricieri on 24/03/17.
//  Copyright © 2017 Ricieri Labs. All rights reserved.
//

import UIKit


/**
 * Adds to your IBDesignable just Vertical Borders CALayers
 */
public protocol HasGradient {
    
    /**
     * Previous Gradient View
     */
    var gradientView : UIView? { get set }
}

/**
 * Adds to your IBDesignable a Gradient Background (subview)
 */
public protocol IBInspectableGradient : class, HasGradient {
    
    /**
     * First UI Color
     */
    var firstColor : UIColor { get set }
    
    /**
     * Second UI Color
     */
    var secondColor : UIColor { get set }
    
    /**
     * If it is true, the gradient will be horizontal
     */
    var isHorizontal : Bool { get set }
}

