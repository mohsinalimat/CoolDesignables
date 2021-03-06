//
//  IBDesignableCorner.swift
//  CoolDesignables
//
//  Created by Felipe Ricieri on 24/03/17.
//  Copyright © 2017 Ricieri Labs. All rights reserved.
//

import UIKit

/**
 * UIViewCorner: An UIView with IBInspectable Corner
 * @discussion: For more information about the properties, check the IBInspectableCorner protocol
 */
@available(iOS 9.0, *)
@IBDesignable
open class UIViewCorner : UIView, IBInspectableCorner {
    
    @IBInspectable
    open var cornerRadius: CGFloat = 0 {
        didSet {
            applyCorner()
        }
    }
}

/**
 * UIImageViewCorner: An UIImageView with IBInspectable Corner
 * @discussion: For more information about the properties, check the IBInspectableCorner protocol
 */
@available(iOS 9.0, *)
@IBDesignable
open class UIImageViewCorner : UIImageView, IBInspectableCorner {
    
    @IBInspectable
    open var cornerRadius: CGFloat = 0 {
        didSet {
            applyCorner()
        }
    }
}

/**
 * UIButtonCorner: An UIButton with IBInspectable Corner
 * @discussion: For more information about the properties, check the IBInspectableCorner protocol
 */
@available(iOS 9.0, *)
@IBDesignable
open class UIButtonCorner : UIButton, IBInspectableCorner {
    
    @IBInspectable
    open var cornerRadius: CGFloat = 0 {
        didSet {
            applyCorner()
        }
    }
}

