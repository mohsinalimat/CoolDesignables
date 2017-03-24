//
//  IBDesignableShadow.swift
//  CoolDesignables
//
//  Created by Felipe Ricieri on 24/03/17.
//  Copyright © 2017 Ricieri Labs. All rights reserved.
//

import UIKit

/**
 * UIViewShadow: An UIView with IBInspectable Drop Shadow
 * @discussion: For more information about the properties, check the IBInspectableShadow protocol
 */
@available(iOS 9.0, *)
@IBDesignable
open class UIViewShadow: UIView, IBInspectableShadow {
    
    @IBInspectable
    open var shadowColor: UIColor = .black {
        didSet {
            self.layer.shadowColor = shadowColor.cgColor
        }
    }
    
    @IBInspectable
    open var shadowOffset: CGSize = CGSize(width: 0, height: 10) {
        didSet {
            self.layer.shadowOffset = shadowOffset
        }
    }
    
    @IBInspectable
    open var shadowOpacity: Float = 0.5 {
        didSet {
            self.layer.shadowOpacity = shadowOpacity
        }
    }
    
    @IBInspectable
    open var shadowRadius: CGFloat = 8 {
        didSet {
            self.layer.shadowRadius = shadowRadius
        }
    }
}

/**
 * UIImageViewShadow: An UIImageView with IBInspectable Drop Shadow
 * @discussion: For more information about the properties, check the IBInspectableShadow protocol
 */
@available(iOS 9.0, *)
@IBDesignable
open class UIImageViewShadow: UIImageView, IBInspectableShadow {
    
    @IBInspectable
    open var shadowColor: UIColor = .black {
        didSet {
            self.layer.shadowColor = shadowColor.cgColor
        }
    }
    
    @IBInspectable
    open var shadowOffset: CGSize = CGSize(width: 0, height: 10) {
        didSet {
            self.layer.shadowOffset = shadowOffset
        }
    }
    
    @IBInspectable
    open var shadowOpacity: Float = 0.5 {
        didSet {
            self.layer.shadowOpacity = shadowOpacity
        }
    }
    
    @IBInspectable
    open var shadowRadius: CGFloat = 8 {
        didSet {
            self.layer.shadowRadius = shadowRadius
        }
    }
}

/**
 * UIButtonShadow: An UIButton with IBInspectable Drop Shadow
 * @discussion: For more information about the properties, check the IBInspectableShadow protocol
 */
@available(iOS 9.0, *)
@IBDesignable
open class UIButtonShadow: UIButton, IBInspectableShadow {
    
    @IBInspectable
    open var shadowColor: UIColor = .black {
        didSet {
            self.layer.shadowColor = shadowColor.cgColor
        }
    }
    
    @IBInspectable
    open var shadowOffset: CGSize = CGSize(width: 0, height: 10) {
        didSet {
            self.layer.shadowOffset = shadowOffset
        }
    }
    
    @IBInspectable
    open var shadowOpacity: Float = 0.5 {
        didSet {
            self.layer.shadowOpacity = shadowOpacity
        }
    }
    
    @IBInspectable
    open var shadowRadius: CGFloat = 8 {
        didSet {
            self.layer.shadowRadius = shadowRadius
        }
    }
}

