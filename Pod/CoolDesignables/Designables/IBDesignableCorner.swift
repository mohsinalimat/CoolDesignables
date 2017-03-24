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
class UIViewCorner : UIView, IBInspectableCorner {
    
    @IBInspectable
    var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
            self.layer.masksToBounds = cornerRadius > 0
        }
    }
}

/**
 * UIImageViewCorner: An UIImageView with IBInspectable Corner
 * @discussion: For more information about the properties, check the IBInspectableCorner protocol
 */
@available(iOS 9.0, *)
@IBDesignable
class UIImageViewCorner : UIImageView, IBInspectableCorner {
    
    @IBInspectable
    var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
            self.layer.masksToBounds = cornerRadius > 0
        }
    }
}

/**
 * UIButtonCorner: An UIButton with IBInspectable Corner
 * @discussion: For more information about the properties, check the IBInspectableCorner protocol
 */
@available(iOS 9.0, *)
@IBDesignable
class UIButtonCorner : UIButton, IBInspectableCorner {
    
    @IBInspectable
    var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
            self.layer.masksToBounds = cornerRadius > 0
        }
    }
}

