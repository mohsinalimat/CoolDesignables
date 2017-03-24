//
//  IBInspectableShadow.swift
//  CoolDesignables
//
//  Created by Felipe Ricieri on 24/03/17.
//  Copyright © 2017 Ricieri Labs. All rights reserved.
//

import UIKit

/**
 * Adds to your IBDesignable the Drop Shadow IBInspectable
 */
protocol IBInspectableShadow : class {
    
    /**
     * Shortcut to the CALayer shadowColor
     */
    var shadowColor : UIColor { get set }
    
    /**
     * Shortcut to the CALayer shadowOffset
     */
    var shadowOffset : CGSize { get set }
    
    /**
     * Shortcut to the CALayer shadowOpacity
     */
    var shadowOpacity : Float { get set }
    
    /**
     * Shortcut to the CALayer shadowRadius
     */
    var shadowRadius : CGFloat { get set }
}
