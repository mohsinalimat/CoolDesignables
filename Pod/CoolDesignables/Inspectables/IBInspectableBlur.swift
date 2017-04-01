//
//  IBInspectableBlur.swift
//  CoolDesignables
//
//  Created by Felipe Ricieri on 24/03/17.
//  Copyright © 2017 Ricieri Labs. All rights reserved.
//

import UIKit


/**
 * Adds to your IBDesignable a Blur Background (subview)
 */
public protocol IBInspectableBlur : class {
    
    /**
     * Blur subview opacity
     */
    var blurOpacity : CGFloat { get set }
    
    /**
     * Previous Blur View
     */
    var blurBackgroundView : UIVisualEffectView? { get set }
}
