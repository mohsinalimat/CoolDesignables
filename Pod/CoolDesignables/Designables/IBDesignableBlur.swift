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
open class UIViewBlurBackgroundDark : UIViewBlurBackground {
    
    override open var blurOpacity: CGFloat {
        didSet {
            addBlurViewWith(style: .dark)
        }
    }
    
    override open func layoutSubviews() {
        addBlurViewWith(style: .dark)
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
            addBlurViewWith(style: .light)
        }
    }
    
    override open func layoutSubviews() {
        addBlurViewWith(style: .light)
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
            addBlurViewWith(style: .extraLight)
        }
    }
    
    override open func layoutSubviews() {
        addBlurViewWith(style: .extraLight)
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

