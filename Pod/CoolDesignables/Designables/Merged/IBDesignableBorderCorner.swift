//
//  IBDesignableBorderCorner.swift
//  CoolDesignables
//
//  Created by Felipe Ricieri on 21/07/17.
//  Copyright © 2017 Ricieri Labs. All rights reserved.
//

import UIKit


/**
 * UIViewBorder: An UIView with IBInspectable Border Width
 * @discussion: For more information about the properties, check the IBInspectableBorder protocol
 */
@available(iOS 9.0, *)
@IBDesignable
open class UIViewBorderCorner : UIViewCorner, IBInspectableBorder {
    
    @IBInspectable
    open var borderWidth: CGFloat = 0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable
    open var borderColor: UIColor = .black {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
}

/**
 * UIImageViewBorder: An UIView with IBInspectable Border Width
 * @discussion: For more information about the properties, check the IBInspectableBorder protocol
 */
@available(iOS 9.0, *)
@IBDesignable
open class UIImageViewBorderCorner : UIImageViewCorner, IBInspectableBorder {
    
    @IBInspectable
    open var borderWidth: CGFloat = 0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable
    open var borderColor: UIColor = .black {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
}

/**
 * UIButtonBorder: An UIView with IBInspectable Border Width
 * @discussion: For more information about the properties, check the IBInspectableBorder protocol
 */
@available(iOS 9.0, *)
@IBDesignable
open class UIButtonBorderCorner : UIButtonCorner, IBInspectableBorder {
    
    @IBInspectable
    open var borderWidth: CGFloat = 0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable
    open var borderColor: UIColor = .black {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
}

