//
//  IBDesignableBlur.swift
//  CoolDesignables
//
//  Created by Felipe Ricieri on 24/03/17.
//  Copyright © 2017 Ricieri Labs. All rights reserved.
//

import UIKit


/**
 * UIViewBlurBackgroundDark: Dark Blur Background Designable
 * @discussion: For more information about the properties, check the UIViewBlurBackground protocol
 */
@available(iOS 9.0, *)
@IBDesignable
class UIViewBlurBackgroundDark : UIViewBlurBackground {
    
    override var blurOpacity: CGFloat {
        didSet {
            self.addBlurViewWith(style: .dark)
        }
    }
    
    override func layoutSubviews() {
        self.addBlurViewWith(style: .dark)
        super.layoutSubviews()
    }
}


/**
 * UIViewBlurBackgroundLight: Light Blur Background Designable
 * @discussion: For more information about the properties, check the UIViewBlurBackground protocol
 */
@available(iOS 9.0, *)
@IBDesignable
class UIViewBlurBackgroundLight : UIViewBlurBackground {
    
    override var blurOpacity: CGFloat {
        didSet {
            self.addBlurViewWith(style: .light)
        }
    }
    
    override func layoutSubviews() {
        self.addBlurViewWith(style: .light)
        super.layoutSubviews()
    }
}


/**
 * UIViewBlurBackgroundExtraLight: Extra Light Blur Background Designable
 * @discussion: For more information about the properties, check the UIViewBlurBackground protocol
 */
@available(iOS 9.0, *)
@IBDesignable
class UIViewBlurBackgroundExtraLight : UIViewBlurBackground {
    
    override var blurOpacity: CGFloat {
        didSet {
            self.addBlurViewWith(style: .extraLight)
        }
    }
    
    override func layoutSubviews() {
        self.addBlurViewWith(style: .extraLight)
        super.layoutSubviews()
    }
}


/**
 * UIViewBlurBackground: Base Blur Background Designable
 * @discussion: For more information about the properties, check the UIViewBlurBackground protocol
 */
@available(iOS 9.0, *)
class UIViewBlurBackground : UIView, IBInspectableBlur {
    
    @IBInspectable
    var blurOpacity : CGFloat = 1.0
    
    internal var blurBackgroundView : UIVisualEffectView?
    
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
        blurEffectView.frame = self.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        blurEffectView.alpha = blurOpacity
        
        self.blurBackgroundView = blurEffectView
        self.addSubview(self.blurBackgroundView!)
        self.sendSubview(toBack: self.blurBackgroundView!)
    }
}
