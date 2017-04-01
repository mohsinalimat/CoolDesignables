//
//  IBDesignableCorner.swift
//  CoolDesignables
//
//  Created by Felipe Ricieri on 24/03/17.
//  Copyright © 2017 Ricieri Labs. All rights reserved.
//

import UIKit

/**
 * CD_applyCornerTo:view:
 * Applies the default setup for IBInspectableCorner protocol
 *
 * @param view      the view itself
 */
func CD_applyCornerTo(view: UIView) {
    if  let inspectable = view as? IBInspectableCorner {
        view.layer.cornerRadius = inspectable.cornerRadius
        view.layer.masksToBounds = inspectable.cornerRadius > 0
    }
}

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
            CD_applyCornerTo(view: self)
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
            CD_applyCornerTo(view: self)
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
            CD_applyCornerTo(view: self)
        }
    }
}

