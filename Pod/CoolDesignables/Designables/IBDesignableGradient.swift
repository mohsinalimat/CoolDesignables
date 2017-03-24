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
            self.applyGradient()
        }
    }
    
    @IBInspectable
    open var secondColor : UIColor = .white {
        didSet {
            self.applyGradient()
        }
    }
    
    @IBInspectable
    open var isHorizontal : Bool = false {
        didSet {
            self.applyGradient()
        }
    }
    
    override open func layoutSubviews() {
        super.layoutSubviews()
        self.applyGradient()
    }
    
    // Handling gradient
    
    /**
     * Previous Gradient View
     */
    fileprivate(set) open var gradientView : UIView?
    
    /**
     * Apply the Gradient background view as subview
     */
    fileprivate func applyGradient() {
        
        if  let gradient = self.gradientView {
            gradient.removeFromSuperview()
        }
        gradientView = UIView(frame: self.bounds)
        
        let sublayer = CAGradientLayer()
        sublayer.frame = self.bounds
        sublayer.colors = [self.firstColor.cgColor, self.secondColor.cgColor]
        if  isHorizontal {
            sublayer.startPoint = CGPoint(x: 0.0, y: 0.5)
            sublayer.endPoint = CGPoint(x: 1.0, y: 0.5)
        }
        
        self.gradientView!.layer.addSublayer(sublayer)
        self.addSubview(self.gradientView!)
        self.sendSubview(toBack: self.gradientView!)
    }
}

