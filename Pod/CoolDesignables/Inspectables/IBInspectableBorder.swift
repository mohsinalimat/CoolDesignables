//
//  IBInspectableBorder.swift
//  CoolDesignables
//
//  Created by Felipe Ricieri on 24/03/17.
//  Copyright © 2017 Ricieri Labs. All rights reserved.
//

import UIKit


/**
 * Adds to your IBDesignable the Border Width IBInspectable
 */
public protocol IBInspectableBorder : class {
    
    /**
     * Shortcut to the CALayer borderColor
     */
    var borderColor : UIColor { get set }
    
    /**
     * Shortcut to the CALayer borderWidth
     */
    var borderWidth : CGFloat { get set }
}


/**
 * Adds to your IBDesignable just Horizontal Borders CALayers
 */
public protocol IBInspectableBorderHorizontal : class {
    
    /**
     * Shortcut to the CALayer borderColor
     */
    var borderColor : UIColor { get set }
    
    /**
     * Top Border attribute (a CALayer will be drawed)
     */
    var borderTop : CGFloat { get set }
    
    /**
     * Bottom Border attribute (a CALayer will be drawed)
     */
    var borderBottom : CGFloat { get set }
}


/**
 * Adds to your IBDesignable just Vertical Borders CALayers
 */
public protocol IBInspectableBorderVertical : class {
    
    /**
     * Shortcut to the CALayer borderColor
     */
    var borderColor : UIColor { get set }
    
    /**
     * Left Border attribute (a CALayer will be drawed)
     */
    var borderLeft : CGFloat { get set }
    
    /**
     * Right Border attribute (a CALayer will be drawed)
     */
    var borderRight : CGFloat { get set }
}

