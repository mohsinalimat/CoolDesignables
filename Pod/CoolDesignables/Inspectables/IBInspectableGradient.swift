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


extension IBInspectableGradient where Self : UIView {
    
    /**
     * applyGradient
     * Applies the default setup for IBInspectableCorner protocol
     */
    func applyGradient() {
        
        // Removes previous effect
        if  let gradient = self.gradientView {
            gradient.removeFromSuperview()
        }
        var hasGradient = self as HasGradient
        hasGradient.gradientView = UIView(frame: self.bounds)
        
        let sublayer = CAGradientLayer()
        sublayer.frame = self.bounds
        sublayer.colors = [
            self.firstColor.cgColor,
            self.secondColor.cgColor
        ]
        if  self.isHorizontal {
            sublayer.startPoint = CGPoint(x: 0.0, y: 0.5)
            sublayer.endPoint = CGPoint(x: 1.0, y: 0.5)
        }
        
        hasGradient.gradientView!.layer.addSublayer(sublayer)
        self.addSubview(hasGradient.gradientView!)
        self.sendSubview(toBack: hasGradient.gradientView!)
    }
}
