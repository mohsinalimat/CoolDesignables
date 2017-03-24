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
class UIViewGradientBackground : UIView, IBInspectableGradient {
    
    @IBInspectable
    var firstColor: UIColor = .black {
        didSet {
            self.applyGradient()
        }
    }
    
    @IBInspectable
    var secondColor : UIColor = .white {
        didSet {
            self.applyGradient()
        }
    }
    
    @IBInspectable
    var isHorizontal : Bool = false {
        didSet {
            self.applyGradient()
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.applyGradient()
    }
    
    // Handling gradient
    
    /**
     * Previous Gradient View
     */
    var gradientView : UIView?
    
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

