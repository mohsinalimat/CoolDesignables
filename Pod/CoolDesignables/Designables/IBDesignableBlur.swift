//
//  IBDesignableBlur.swift
//  CoolDesignables
//
//  Created by Felipe Ricieri on 24/03/17.
//  Copyright © 2017 Ricieri Labs. All rights reserved.
//

import UIKit

/**
 * CD_addBlurViewWith:style:toView
 * Adds the Blur background view as subview
 *
 * @param style     The Blur Effect Style
 */
func CD_addBlurViewWith(style: UIBlurEffectStyle, toView: UIView) {
    
    if  let inspectable = toView as? IBInspectableBlur {
        
        // Removes previous effect
        if  let previous = inspectable.blurBackgroundView {
            previous.removeFromSuperview()
        }
        
        // Blur Effect View
        let blurEffect = UIBlurEffect(style: style)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = toView.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        blurEffectView.alpha = inspectable.blurOpacity
        
        // Applies
        inspectable.blurBackgroundView = blurEffectView
        toView.addSubview(inspectable.blurBackgroundView!)
        toView.sendSubview(toBack: inspectable.blurBackgroundView!)
    }
}

/**
 * UIViewBlurBackgroundDark: Dark Blur Background Designable
 * @discussion: For more information about the properties, check the UIViewBlurBackground protocol
 */
@available(iOS 9.0, *)
@IBDesignable
open class UIViewBlurBackgroundDark : UIViewBlurBackground {
    
    override open var blurOpacity: CGFloat {
        didSet {
            CD_addBlurViewWith(style: .dark, toView: self)
        }
    }
    
    override open func layoutSubviews() {
        CD_addBlurViewWith(style: .dark, toView: self)
        super.layoutSubviews()
    }
}


/**
 * UIViewBlurBackgroundLight: Light Blur Background Designable
 * @discussion: For more information about the properties, check the UIViewBlurBackground protocol
 */
@available(iOS 9.0, *)
@IBDesignable
open class UIViewBlurBackgroundLight : UIViewBlurBackground {
    
    override open var blurOpacity: CGFloat {
        didSet {
            CD_addBlurViewWith(style: .light, toView: self)
        }
    }
    
    override open func layoutSubviews() {
        CD_addBlurViewWith(style: .light, toView: self)
        super.layoutSubviews()
    }
}


/**
 * UIViewBlurBackgroundExtraLight: Extra Light Blur Background Designable
 * @discussion: For more information about the properties, check the UIViewBlurBackground protocol
 */
@available(iOS 9.0, *)
@IBDesignable
open class UIViewBlurBackgroundExtraLight : UIViewBlurBackground {
    
    override open var blurOpacity: CGFloat {
        didSet {
            CD_addBlurViewWith(style: .extraLight, toView: self)
        }
    }
    
    override open func layoutSubviews() {
        CD_addBlurViewWith(style: .extraLight, toView: self)
        super.layoutSubviews()
    }
}


/**
 * UIViewBlurBackground: Base Blur Background Designable
 * @discussion: For more information about the properties, check the UIViewBlurBackground protocol
 */
@available(iOS 9.0, *)
open class UIViewBlurBackground : UIView, IBInspectableBlur {
    
    @IBInspectable
    open var blurOpacity : CGFloat = 1.0
    
    public var blurBackgroundView : UIVisualEffectView?
}

