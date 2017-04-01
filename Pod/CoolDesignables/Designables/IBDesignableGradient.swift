//
//  IBDesignableGradient.swift
//  CoolDesignables
//
//  Created by Felipe Ricieri on 24/03/17.
//  Copyright © 2017 Ricieri Labs. All rights reserved.
//

import UIKit

/**
 * CD_applyGradientTo:view:
 * Applies the default setup for IBInspectableCorner protocol
 *
 * @param view      the view itself
 */
func CD_applyGradientTo(view: UIView) {
    
    if  let inspectable = view as? IBInspectableGradient,
        var inspectableHistory = view as? HasGradient {
        
        // Removes previous effect
        if  let gradient = inspectable.gradientView {
            gradient.removeFromSuperview()
        }
        inspectableHistory.gradientView = UIView(frame: view.bounds)
        
        let sublayer = CAGradientLayer()
        sublayer.frame = view.bounds
        sublayer.colors = [inspectable.firstColor.cgColor, inspectable.secondColor.cgColor]
        if  inspectable.isHorizontal {
            sublayer.startPoint = CGPoint(x: 0.0, y: 0.5)
            sublayer.endPoint = CGPoint(x: 1.0, y: 0.5)
        }
        
        inspectableHistory.gradientView!.layer.addSublayer(sublayer)
        view.addSubview(inspectableHistory.gradientView!)
        view.sendSubview(toBack: inspectableHistory.gradientView!)
    }
}

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
            CD_applyGradientTo(view: self)
        }
    }
    
    @IBInspectable
    open var secondColor : UIColor = .white {
        didSet {
            CD_applyGradientTo(view: self)
        }
    }
    
    @IBInspectable
    open var isHorizontal : Bool = false {
        didSet {
            CD_applyGradientTo(view: self)
        }
    }
    
    public(set) open var gradientView : UIView?
    
    override open func layoutSubviews() {
        super.layoutSubviews()
        CD_applyGradientTo(view: self)
    }
}

