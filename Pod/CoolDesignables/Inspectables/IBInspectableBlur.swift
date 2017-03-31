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
     * Bind View
     */
    var bindView : UIView! { get set }
    
    /**
     * Blur subview opacity
     */
    var blurOpacity : CGFloat { get set }
    
    /**
     * Previous Blur View
     */
    var blurBackgroundView : UIVisualEffectView? { get set }
}

extension IBInspectableBlur {
    
    /**
     * Adds the Blur background view as subview
     *
     * @param style     The Blur Effect Style
     */
    final internal func addBlurViewWith(style: UIBlurEffectStyle) {
        
        if  let previous = blurBackgroundView {
            previous.removeFromSuperview()
        }
        
        let blurEffect = UIBlurEffect(style: style)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = bindView.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        blurEffectView.alpha = blurOpacity
        
        self.blurBackgroundView = blurEffectView
        bindView.addSubview(self.blurBackgroundView!)
        bindView.sendSubview(toBack: self.blurBackgroundView!)
    }
}

