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

extension IBInspectableBlur where Self : UIView {
    
    /**
     * addBlurViewWith:style:toView
     * Adds the Blur background view as subview
     *
     * @param style     The Blur Effect Style
     */
    func addBlurViewWith(style: UIBlurEffectStyle) {
        
        // Removes previous effect
        if  let previous = self.blurBackgroundView {
            previous.removeFromSuperview()
        }
        
        // Blur Effect View
        let blurEffect = UIBlurEffect(style: style)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = self.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        blurEffectView.alpha = self.blurOpacity
        
        self.accessibilityActivate()
        
        // Applies
        self.blurBackgroundView = blurEffectView
        self.addSubview(self.blurBackgroundView!)
        self.sendSubview(toBack: self.blurBackgroundView!)
    }
}
