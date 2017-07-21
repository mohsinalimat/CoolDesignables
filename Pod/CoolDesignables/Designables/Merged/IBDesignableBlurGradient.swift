//
//  IBDesignableBlurGradient.swift
//  CoolDesignables
//
//  Created by Felipe Ricieri on 21/07/17.
//  Copyright © 2017 Ricieri Labs. All rights reserved.
//

import UIKit

/**
 * UIViewGradientBackground: Gradient Background Designable
 * @discussion: For more information about the properties, check the IBInspectableGradient protocol
 */
@available(iOS 9.0, *)
@IBDesignable
open class UIViewBlurGradientBackgroundDark : UIViewBlurBackgroundDark, IBInspectableGradient {
    
    @IBInspectable
    open var firstColor: UIColor = .black {
        didSet {
            applyGradient()
        }
    }
    
    @IBInspectable
    open var secondColor : UIColor = .white {
        didSet {
            applyGradient()
        }
    }
    
    @IBInspectable
    open var isHorizontal : Bool = false {
        didSet {
            applyGradient()
        }
    }
    
    public(set) open var gradientView : UIView?
    
    override open func layoutSubviews() {
        super.layoutSubviews()
        applyGradient()
    }
}

/**
 * UIViewGradientBackground: Gradient Background Designable
 * @discussion: For more information about the properties, check the IBInspectableGradient protocol
 */
@available(iOS 9.0, *)
@IBDesignable
open class UIViewBlurGradientBackgroundLight : UIViewBlurBackgroundLight, IBInspectableGradient {
    
    @IBInspectable
    open var firstColor: UIColor = .black {
        didSet {
            applyGradient()
        }
    }
    
    @IBInspectable
    open var secondColor : UIColor = .white {
        didSet {
            applyGradient()
        }
    }
    
    @IBInspectable
    open var isHorizontal : Bool = false {
        didSet {
            applyGradient()
        }
    }
    
    public(set) open var gradientView : UIView?
    
    override open func layoutSubviews() {
        super.layoutSubviews()
        applyGradient()
    }
}

/**
 * UIViewGradientBackground: Gradient Background Designable
 * @discussion: For more information about the properties, check the IBInspectableGradient protocol
 */
@available(iOS 9.0, *)
@IBDesignable
open class UIViewBlurGradientBackgroundExtraLight : UIViewBlurBackgroundExtraLight, IBInspectableGradient {
    
    @IBInspectable
    open var firstColor: UIColor = .black {
        didSet {
            applyGradient()
        }
    }
    
    @IBInspectable
    open var secondColor : UIColor = .white {
        didSet {
            applyGradient()
        }
    }
    
    @IBInspectable
    open var isHorizontal : Bool = false {
        didSet {
            applyGradient()
        }
    }
    
    public(set) open var gradientView : UIView?
    
    override open func layoutSubviews() {
        super.layoutSubviews()
        applyGradient()
    }
}

