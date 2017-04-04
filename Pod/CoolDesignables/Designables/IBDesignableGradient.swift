//
//  IBDesignableGradient.swift
//  CoolDesignables
//
//  Created by Felipe Ricieri on 24/03/17.
//  Copyright © 2017 Ricieri Labs. All rights reserved.
//

import UIKit

/**
 * UIViewGradientBackground: Gradient Background Designable
 * @discussion: For more information about the properties, check the IBInspectableGradient protocol
 */
@available(iOS 9.0, *)
@IBDesignable
open class UIViewGradientBackground : UIView, IBInspectableGradient {
    
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

