//
//  IBDesignableBorder.swift
//  CoolDesignables
//
//  Created by Felipe Ricieri on 24/03/17.
//  Copyright © 2017 Ricieri Labs. All rights reserved.
//

import UIKit
import Foundation


// MARK: - IBInspectableBorder


/**
 * UIViewBorder: An UIView with IBInspectable Border Width
 * @discussion: For more information about the properties, check the IBInspectableBorder protocol
 */
@available(iOS 9.0, *)
@IBDesignable
class UIViewBorder : UIView, IBInspectableBorder {
    
    @IBInspectable
    var borderWidth: CGFloat = 0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable
    var borderColor: UIColor = .black {
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
class UIImageViewBorder : UIImageView, IBInspectableBorder {
    
    @IBInspectable
    var borderWidth: CGFloat = 0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable
    var borderColor: UIColor = .black {
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
class UIButtonBorder : UIButton, IBInspectableBorder {
    
    @IBInspectable
    var borderWidth: CGFloat = 0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable
    var borderColor: UIColor = .black {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
}


// MARK: - IBInspectableBorderHorizontal


/**
 * UIViewBorderHorizontal: An UIView with Horizontal Borders (custom CALayer)
 * @discussion: For more information about the properties, check the IBInspectableBorderHorizontal protocol
 */
@available(iOS 9.0, *)
@IBDesignable
class UIViewBorderHorizontal : UIView, IBInspectableBorderHorizontal {
    
    @IBInspectable
    var borderTop: CGFloat = 1.0 {
        didSet {
            self.drawTopBorder()
        }
    }
    
    @IBInspectable
    var borderBottom: CGFloat = 1.0 {
        didSet {
            self.drawBottomBorder()
        }
    }
    
    @IBInspectable
    var borderColor: UIColor = .black {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    // Handling Borders
    
    /**
     * Previous Top Border
     */
    fileprivate var currentBorderTop : CALayer?
    
    /**
     * Previous Bottom Border
     */
    fileprivate var currentBorderBottom : CALayer?
    
    
    /**
     * Draws the Top Border
     */
    fileprivate func drawTopBorder() {
        if  let border = currentBorderTop {
            border.removeFromSuperlayer()
        }
        let newBorder = CALayer()
        newBorder.frame = CGRect(x: 0.0, y: 1.0, width: self.frame.size.width, height: borderTop);
        newBorder.backgroundColor = borderColor.cgColor
        self.currentBorderTop = newBorder
        self.layer.addSublayer(currentBorderTop!)
    }
    
    /**
     * Draws the Bottom Border
     */
    fileprivate func drawBottomBorder() {
        if  let border = currentBorderBottom {
            border.removeFromSuperlayer()
        }
        let newBorder = CALayer()
        newBorder.frame = CGRect(x: 0.0, y: self.frame.size.height - borderBottom, width: self.frame.size.width, height: borderBottom);
        newBorder.backgroundColor = borderColor.cgColor
        self.currentBorderBottom = newBorder
        self.layer.addSublayer(currentBorderBottom!)
    }
}

/**
 * UIImageViewBorderHorizontal: An UIImageView with Horizontal Borders (custom CALayer)
 * @discussion: For more information about the properties, check the IBInspectableBorderHorizontal protocol
 */
@available(iOS 9.0, *)
@IBDesignable
class UIImageViewBorderHorizontal : UIImageView, IBInspectableBorderHorizontal {
    
    @IBInspectable
    var borderTop: CGFloat = 1.0 {
        didSet {
            self.drawTopBorder()
        }
    }
    
    @IBInspectable
    var borderBottom: CGFloat = 1.0 {
        didSet {
            self.drawBottomBorder()
        }
    }
    
    @IBInspectable
    var borderColor: UIColor = .black {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    // Handling Borders
    
    /**
     * Previous Top Border
     */
    fileprivate var currentBorderTop : CALayer?
    
    /**
     * Previous Bottom Border
     */
    fileprivate var currentBorderBottom : CALayer?
    
    
    /**
     * Draws the Top Border
     */
    fileprivate func drawTopBorder() {
        if  let border = currentBorderTop {
            border.removeFromSuperlayer()
        }
        let newBorder = CALayer()
        newBorder.frame = CGRect(x: 0.0, y: 1.0, width: self.frame.size.width, height: borderTop);
        newBorder.backgroundColor = borderColor.cgColor
        self.currentBorderTop = newBorder
        self.layer.addSublayer(currentBorderTop!)
    }
    
    /**
     * Draws the Bottom Border
     */
    fileprivate func drawBottomBorder() {
        if  let border = currentBorderBottom {
            border.removeFromSuperlayer()
        }
        let newBorder = CALayer()
        newBorder.frame = CGRect(x: 0.0, y: self.frame.size.height - borderBottom, width: self.frame.size.width, height: borderBottom);
        newBorder.backgroundColor = borderColor.cgColor
        self.currentBorderBottom = newBorder
        self.layer.addSublayer(currentBorderBottom!)
    }
}

/**
 * UIButtonBorderHorizontal: An UIButton with Horizontal Borders (custom CALayer)
 * @discussion: For more information about the properties, check the IBInspectableBorderHorizontal protocol
 */
@available(iOS 9.0, *)
@IBDesignable
class UIButtonBorderHorizontal : UIButton, IBInspectableBorderHorizontal {
    
    @IBInspectable
    var borderTop: CGFloat = 1.0 {
        didSet {
            self.drawTopBorder()
        }
    }
    
    @IBInspectable
    var borderBottom: CGFloat = 1.0 {
        didSet {
            self.drawBottomBorder()
        }
    }
    
    @IBInspectable
    var borderColor: UIColor = .black {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    // Handling Borders
    
    /**
     * Previous Top Border
     */
    fileprivate var currentBorderTop : CALayer?
    
    /**
     * Previous Bottom Border
     */
    fileprivate var currentBorderBottom : CALayer?
    
    
    /**
     * Draws the Top Border
     */
    fileprivate func drawTopBorder() {
        if  let border = currentBorderTop {
            border.removeFromSuperlayer()
        }
        let newBorder = CALayer()
        newBorder.frame = CGRect(x: 0.0, y: 1.0, width: self.frame.size.width, height: borderTop);
        newBorder.backgroundColor = borderColor.cgColor
        self.currentBorderTop = newBorder
        self.layer.addSublayer(currentBorderTop!)
    }
    
    /**
     * Draws the Bottom Border
     */
    fileprivate func drawBottomBorder() {
        if  let border = currentBorderBottom {
            border.removeFromSuperlayer()
        }
        let newBorder = CALayer()
        newBorder.frame = CGRect(x: 0.0, y: self.frame.size.height - borderBottom, width: self.frame.size.width, height: borderBottom);
        newBorder.backgroundColor = borderColor.cgColor
        self.currentBorderBottom = newBorder
        self.layer.addSublayer(currentBorderBottom!)
    }
}


// MARK: - IBInspectableBorderVertical


/**
 * UIViewBorderVertical: An UIView with Horizontal Borders (custom CALayer)
 * @discussion: For more information about the properties, check the IBInspectableBorderVertical protocol
 */
@available(iOS 9.0, *)
@IBDesignable
class UIViewBorderVertical : UIView, IBInspectableBorderVertical {
    
    @IBInspectable
    var borderColor: UIColor = .black {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable
    var borderLeft: CGFloat = 1.0 {
        didSet {
            self.drawLeftBorder()
        }
    }
    
    @IBInspectable
    var borderRight: CGFloat = 1.0 {
        didSet {
            self.drawRightBorder()
        }
    }
    
    // Handling Borders
    
    /**
     * Previous Left Border
     */
    fileprivate var currentBorderLeft : CALayer?
    
    /**
     * Previous Right Border
     */
    fileprivate var currentBorderRight : CALayer?
    
    /**
     * Draws the Left Border
     */
    fileprivate func drawLeftBorder() {
        if  let border = currentBorderLeft {
            border.removeFromSuperlayer()
        }
        let newBorder = CALayer()
        newBorder.frame = CGRect(x: 0.0, y: 0.0, width: borderLeft, height: self.frame.size.height);
        newBorder.backgroundColor = borderColor.cgColor
        self.currentBorderLeft = newBorder
        self.layer.addSublayer(currentBorderLeft!)
    }
    
    /**
     * Draws the Right Border
     */
    fileprivate func drawRightBorder() {
        if  let border = currentBorderRight {
            border.removeFromSuperlayer()
        }
        let newBorder = CALayer()
        newBorder.frame = CGRect(x: self.frame.size.width - borderRight, y: 0, width: borderRight, height: self.frame.size.height);
        newBorder.backgroundColor = borderColor.cgColor
        self.currentBorderRight = newBorder
        self.layer.addSublayer(currentBorderRight!)
    }
}

/**
 * UIImageViewBorderVertical: An UIImageView with Horizontal Borders (custom CALayer)
 * @discussion: For more information about the properties, check the IBInspectableBorderVertical protocol
 */
@available(iOS 9.0, *)
@IBDesignable
class UIImageViewBorderVertical : UIImageView, IBInspectableBorderVertical {
    
    @IBInspectable
    var borderColor: UIColor = .black {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable
    var borderLeft: CGFloat = 1.0 {
        didSet {
            self.drawLeftBorder()
        }
    }
    
    @IBInspectable
    var borderRight: CGFloat = 1.0 {
        didSet {
            self.drawRightBorder()
        }
    }
    
    // Handling Borders
    
    /**
     * Previous Left Border
     */
    fileprivate var currentBorderLeft : CALayer?
    
    /**
     * Previous Right Border
     */
    fileprivate var currentBorderRight : CALayer?
    
    /**
     * Draws the Left Border
     */
    fileprivate func drawLeftBorder() {
        if  let border = currentBorderLeft {
            border.removeFromSuperlayer()
        }
        let newBorder = CALayer()
        newBorder.frame = CGRect(x: 0.0, y: 0.0, width: borderLeft, height: self.frame.size.height);
        newBorder.backgroundColor = borderColor.cgColor
        self.currentBorderLeft = newBorder
        self.layer.addSublayer(currentBorderLeft!)
    }
    
    /**
     * Draws the Right Border
     */
    fileprivate func drawRightBorder() {
        if  let border = currentBorderRight {
            border.removeFromSuperlayer()
        }
        let newBorder = CALayer()
        newBorder.frame = CGRect(x: self.frame.size.width - borderRight, y: 0, width: borderRight, height: self.frame.size.height);
        newBorder.backgroundColor = borderColor.cgColor
        self.currentBorderRight = newBorder
        self.layer.addSublayer(currentBorderRight!)
    }
}

/**
 * UIButtonBorderVertical: An UIButton with Horizontal Borders (custom CALayer)
 * @discussion: For more information about the properties, check the IBInspectableBorderVertical protocol
 */
@available(iOS 9.0, *)
@IBDesignable
class UIButtonBorderVertical : UIButton, IBInspectableBorderVertical {
    
    @IBInspectable
    var borderColor: UIColor = .black {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable
    var borderLeft: CGFloat = 1.0 {
        didSet {
            self.drawLeftBorder()
        }
    }
    
    @IBInspectable
    var borderRight: CGFloat = 1.0 {
        didSet {
            self.drawRightBorder()
        }
    }
    
    // Handling Borders
    
    /**
     * Previous Left Border
     */
    fileprivate var currentBorderLeft : CALayer?
    
    /**
     * Previous Right Border
     */
    fileprivate var currentBorderRight : CALayer?
    
    /**
     * Draws the Left Border
     */
    fileprivate func drawLeftBorder() {
        if  let border = currentBorderLeft {
            border.removeFromSuperlayer()
        }
        let newBorder = CALayer()
        newBorder.frame = CGRect(x: 0.0, y: 0.0, width: borderLeft, height: self.frame.size.height);
        newBorder.backgroundColor = borderColor.cgColor
        self.currentBorderLeft = newBorder
        self.layer.addSublayer(currentBorderLeft!)
    }
    
    /**
     * Draws the Right Border
     */
    fileprivate func drawRightBorder() {
        if  let border = currentBorderRight {
            border.removeFromSuperlayer()
        }
        let newBorder = CALayer()
        newBorder.frame = CGRect(x: self.frame.size.width - borderRight, y: 0, width: borderRight, height: self.frame.size.height);
        newBorder.backgroundColor = borderColor.cgColor
        self.currentBorderRight = newBorder
        self.layer.addSublayer(currentBorderRight!)
    }
}

