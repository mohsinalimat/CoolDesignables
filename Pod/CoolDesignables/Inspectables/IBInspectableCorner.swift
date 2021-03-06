//
//  IBInspectableCorner.swift
//  CoolDesignables
//
//  Created by Felipe Ricieri on 24/03/17.
//  Copyright © 2017 Ricieri Labs. All rights reserved.
//

import UIKit

/**
 * Adds to your IBDesignable the Corner IBInspectable
 */
public protocol IBInspectableCorner : class {
    
    /**
     * Shortcut to the CALayer cornerRadius
     */
    var cornerRadius : CGFloat { get set }
}


extension IBInspectableCorner where Self : UIView {
    
    /**
     * applyCorner
     * Applies the default setup for IBInspectableCorner protocol
     */
    func applyCorner() {
        self.layer.cornerRadius = self.cornerRadius
        self.layer.masksToBounds = self.cornerRadius > 0
    }
}
