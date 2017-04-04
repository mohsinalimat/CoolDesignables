//
//  IBInspectableBorder.swift
//  CoolDesignables
//
//  Created by Felipe Ricieri on 24/03/17.
//  Copyright © 2017 Ricieri Labs. All rights reserved.
//

import UIKit


// MARK: - Interfaces


/**
 * Adds to your IBDesignable the Border Width IBInspectable
 */
public protocol IBInspectableBorder : class {
    
    /**
     * Shortcut to the CALayer borderColor
     */
    var borderColor : UIColor { get set }
    
    /**
     * Shortcut to the CALayer borderWidth
     */
    var borderWidth : CGFloat { get set }
}


/**
 * Adds to your IBDesignable just Vertical Borders CALayers
 */
public protocol HasHorizontalBorders {
    
    /**
     * (Current) Top Border attribute (a CALayer will be drawed)
     */
    var currentBorderTop : CALayer? { get set }
    
    /**
     * (Current) Bottom Border attribute (a CALayer will be drawed)
     */
    var currentBorderBottom : CALayer? { get set }
}

/**
 * Adds to your IBDesignable just Horizontal Borders CALayers
 */
public protocol IBInspectableBorderHorizontal : class, HasHorizontalBorders {
    
    /**
     * Shortcut to the CALayer borderColor
     */
    var borderColor : UIColor { get set }
    
    /**
     * Top Border attribute (a CALayer will be drawed)
     */
    var borderTop : CGFloat { get set }
    
    /**
     * Bottom Border attribute (a CALayer will be drawed)
     */
    var borderBottom : CGFloat { get set }
}


/**
 * Adds to your IBDesignable just Vertical Borders CALayers
 */
public protocol HasVerticalBorders {
    
    /**
     * (Current) Left Border attribute (a CALayer will be drawed)
     */
    var currentBorderLeft : CALayer? { get set }
    
    /**
     * (Current) Right Border attribute (a CALayer will be drawed)
     */
    var currentBorderRight : CALayer? { get set }
}

/**
 * Adds to your IBDesignable just Vertical Borders CALayers
 */
public protocol IBInspectableBorderVertical : class, HasVerticalBorders {
    
    /**
     * Shortcut to the CALayer borderColor
     */
    var borderColor : UIColor { get set }
    
    /**
     * Left Border attribute (a CALayer will be drawed)
     */
    var borderLeft : CGFloat { get set }
    
    /**
     * Right Border attribute (a CALayer will be drawed)
     */
    var borderRight : CGFloat { get set }
}


// MARK: - Implementations


extension IBInspectableBorderHorizontal where Self : UIView {
    
    /**
     * drawTopBorder / drawBottomBorder
     * Applies the default setup for IBInspectableBorderHorizontal protocol
     */
    func drawTopBorder() {
        
        // Removes previous border
        if  let border = self.currentBorderTop {
            border.removeFromSuperlayer()
        }
        var hasBorders = self as HasHorizontalBorders
        
        // Adds top border if its is
        // bigger than 0
        if  self.borderTop > 0 {
            let newBorder = CALayer()
            newBorder.frame = CGRect(
                x: 0.0,
                y: 1.0,
                width: self.frame.size.width,
                height: self.borderTop
            )
            newBorder.backgroundColor = self.borderColor.cgColor
            hasBorders.currentBorderTop = newBorder
            self.layer.addSublayer(hasBorders.currentBorderTop!)
        }
        else {
            hasBorders.currentBorderTop = nil
        }
    }
    
    func drawBottomBorder() {
        
        // Removes previous border
        if  let border = self.currentBorderBottom {
            border.removeFromSuperlayer()
        }
        var hasBorders = self as HasHorizontalBorders
        
        // Adds bottom border if its is
        // bigger than 0
        if  self.borderBottom > 0 {
            let newBorder = CALayer()
            newBorder.frame = CGRect(
                x: 0.0,
                y: self.frame.size.height - self.borderBottom,
                width: self.frame.size.width,
                height: self.borderBottom
            )
            newBorder.backgroundColor = self.borderColor.cgColor
            hasBorders.currentBorderBottom = newBorder
            self.layer.addSublayer(hasBorders.currentBorderBottom!)
        }
        else {
            hasBorders.currentBorderBottom = nil
        }
    }
}


extension IBInspectableBorderVertical where Self : UIView {
    
    /**
     * drawLeftBorder / drawRightBorder
     * Applies the default setup for IBInspectableBorderVertical protocol
     */
    func drawLeftBorder() {
        
        // Removes previous border
        if  let border = self.currentBorderLeft {
            border.removeFromSuperlayer()
        }
        var hasBorders = self as HasVerticalBorders
        
        // Adds left border if its is
        // bigger than 0
        if  self.borderLeft > 0 {
            let newBorder = CALayer()
            newBorder.frame = CGRect(
                x: 0.0,
                y: 0.0,
                width: self.borderLeft,
                height: self.frame.size.height
            )
            newBorder.backgroundColor = self.borderColor.cgColor
            hasBorders.currentBorderLeft = newBorder
            self.layer.addSublayer(hasBorders.currentBorderLeft!)
        }
        else {
            hasBorders.currentBorderLeft = nil
        }
    }
    
    func drawRightBorder() {
        
        // Removes previous border
        if  let border = self.currentBorderRight {
            border.removeFromSuperlayer()
        }
        var hasBorders = self as HasVerticalBorders
        
        // Adds right border if its is
        // bigger than 0
        if  self.borderRight > 0 {
            let newBorder = CALayer()
            newBorder.frame = CGRect(
                x: self.frame.size.width - self.borderRight,
                y: 0,
                width: self.borderRight,
                height: self.frame.size.height
            )
            newBorder.backgroundColor = self.borderColor.cgColor
            hasBorders.currentBorderRight = newBorder
            self.layer.addSublayer(hasBorders.currentBorderRight!)
        }
        else {
            hasBorders.currentBorderRight = nil
        }
    }
}

