//
//  IBDesignableBorder.swift
//  CoolDesignables
//
//  Created by Felipe Ricieri on 24/03/17.
//  Copyright © 2017 Ricieri Labs. All rights reserved.
//

import UIKit

/**
 * CD_drawTopBorderTo:view: / CD_drawBottomBorderTo:view:
 * Applies the default setup for IBInspectableBorderHorizontal protocol
 *
 * @param view      the view itself
 */
func CD_drawTopBorderTo(view: UIView) {
    
    if  var inspectableHistory = view as? HasHorizontalBorders,
        let inspectable = view as? IBInspectableBorderHorizontal {
        
        // Removes previous border
        if  let border = inspectableHistory.currentBorderTop {
            border.removeFromSuperlayer()
        }
        
        // Adds top border if its is 
        // bigger than 0
        if  inspectable.borderTop > 0 {
            let newBorder = CALayer()
            newBorder.frame = CGRect(
                x: 0.0,
                y: 1.0,
                width: view.frame.size.width,
                height: inspectable.borderTop
            )
            newBorder.backgroundColor = inspectable.borderColor.cgColor
            inspectableHistory.currentBorderTop = newBorder
            view.layer.addSublayer(inspectableHistory.currentBorderTop!)
        }
        else {
            inspectableHistory.currentBorderTop = nil
        }
    }
}

func CD_drawBottomBorderTo(view: UIView) {
    
    if  var inspectableHistory = view as? HasHorizontalBorders,
        let inspectable = view as? IBInspectableBorderHorizontal {
        
        // Removes previous border
        if  let border = inspectableHistory.currentBorderBottom {
            border.removeFromSuperlayer()
        }
        
        // Adds bottom border if its is
        // bigger than 0
        if  inspectable.borderBottom > 0 {
            let newBorder = CALayer()
            newBorder.frame = CGRect(
                x: 0.0,
                y: view.frame.size.height - inspectable.borderBottom,
                width: view.frame.size.width,
                height: inspectable.borderBottom
            )
            newBorder.backgroundColor = inspectable.borderColor.cgColor
            inspectableHistory.currentBorderBottom = newBorder
            view.layer.addSublayer(inspectableHistory.currentBorderBottom!)
        }
        else {
            inspectableHistory.currentBorderBottom = nil
        }
    }
}

/**
 * CD_drawLeftBorderTo:view: / CD_drawRightBorderTo:view:
 * Applies the default setup for IBInspectableBorderVertical protocol
 *
 * @param view      the view itself
 */
func CD_drawLeftBorderTo(view: UIView) {
    
    if  var inspectableHistory = view as? HasVerticalBorders,
        let inspectable = view as? IBInspectableBorderVertical {
        
        // Removes previous border
        if  let border = inspectableHistory.currentBorderLeft {
            border.removeFromSuperlayer()
        }
        
        // Adds left border if its is
        // bigger than 0
        if  inspectable.borderLeft > 0 {
            let newBorder = CALayer()
            newBorder.frame = CGRect(
                x: 0.0,
                y: 0.0,
                width: inspectable.borderLeft,
                height: view.frame.size.height
            )
            newBorder.backgroundColor = inspectable.borderColor.cgColor
            inspectableHistory.currentBorderLeft = newBorder
            view.layer.addSublayer(inspectableHistory.currentBorderLeft!)
        }
        else {
            inspectableHistory.currentBorderLeft = nil
        }
    }
}

func CD_drawRightBorderTo(view: UIView) {
    
    if  var inspectableHistory = view as? HasVerticalBorders,
        let inspectable = view as? IBInspectableBorderVertical {
        
        // Removes previous border
        if  let border = inspectableHistory.currentBorderRight {
            border.removeFromSuperlayer()
        }
        
        // Adds right border if its is
        // bigger than 0
        if  inspectable.borderRight > 0 {
            let newBorder = CALayer()
            newBorder.frame = CGRect(
                x: view.frame.size.width - inspectable.borderRight,
                y: 0,
                width: inspectable.borderRight,
                height: view.frame.size.height
            )
            newBorder.backgroundColor = inspectable.borderColor.cgColor
            inspectableHistory.currentBorderRight = newBorder
            view.layer.addSublayer(inspectableHistory.currentBorderRight!)
        }
        else {
            inspectableHistory.currentBorderRight = nil
        }
    }
}


// MARK: - IBInspectableBorder


/**
 * UIViewBorder: An UIView with IBInspectable Border Width
 * @discussion: For more information about the properties, check the IBInspectableBorder protocol
 */
@available(iOS 9.0, *)
@IBDesignable
open class UIViewBorder : UIView, IBInspectableBorder {
    
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
open class UIImageViewBorder : UIImageView, IBInspectableBorder {
    
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
open class UIButtonBorder : UIButton, IBInspectableBorder {
    
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


// MARK: - IBInspectableBorderHorizontal


/**
 * UIViewBorderHorizontal: An UIView with Horizontal Borders (custom CALayer)
 * @discussion: For more information about the properties, check the IBInspectableBorderHorizontal protocol
 */
@available(iOS 9.0, *)
@IBDesignable
open class UIViewBorderHorizontal : UIView, IBInspectableBorderHorizontal {
    
    @IBInspectable
    open var borderTop: CGFloat = 1.0 {
        didSet {
            CD_drawTopBorderTo(view: self)
        }
    }
    
    @IBInspectable
    open var borderBottom: CGFloat = 1.0 {
        didSet {
            CD_drawBottomBorderTo(view: self)
        }
    }
    
    @IBInspectable
    open var borderColor: UIColor = .black {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    public(set) open var currentBorderTop : CALayer?
    public(set) open var currentBorderBottom : CALayer?
    
    override open func layoutSubviews() {
        super.layoutSubviews()
        CD_drawTopBorderTo(view: self)
        CD_drawBottomBorderTo(view: self)
    }
}

/**
 * UIImageViewBorderHorizontal: An UIImageView with Horizontal Borders (custom CALayer)
 * @discussion: For more information about the properties, check the IBInspectableBorderHorizontal protocol
 */
@available(iOS 9.0, *)
@IBDesignable
open class UIImageViewBorderHorizontal : UIImageView, IBInspectableBorderHorizontal {
    
    @IBInspectable
    open var borderTop: CGFloat = 1.0 {
        didSet {
            CD_drawTopBorderTo(view: self)
        }
    }
    
    @IBInspectable
    open var borderBottom: CGFloat = 1.0 {
        didSet {
            CD_drawBottomBorderTo(view: self)
        }
    }
    
    @IBInspectable
    open var borderColor: UIColor = .black {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    public(set) open var currentBorderTop : CALayer?
    public(set) open var currentBorderBottom : CALayer?
    
    override open func layoutSubviews() {
        super.layoutSubviews()
        CD_drawTopBorderTo(view: self)
        CD_drawBottomBorderTo(view: self)
    }
}

/**
 * UIButtonBorderHorizontal: An UIButton with Horizontal Borders (custom CALayer)
 * @discussion: For more information about the properties, check the IBInspectableBorderHorizontal protocol
 */
@available(iOS 9.0, *)
@IBDesignable
open class UIButtonBorderHorizontal : UIButton, IBInspectableBorderHorizontal {
    
    @IBInspectable
    open var borderTop: CGFloat = 1.0 {
        didSet {
            CD_drawTopBorderTo(view: self)
        }
    }
    
    @IBInspectable
    open var borderBottom: CGFloat = 1.0 {
        didSet {
            CD_drawBottomBorderTo(view: self)
        }
    }
    
    @IBInspectable
    open var borderColor: UIColor = .black {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    public(set) open var currentBorderTop : CALayer?
    public(set) open var currentBorderBottom : CALayer?
    
    override open func layoutSubviews() {
        super.layoutSubviews()
        CD_drawTopBorderTo(view: self)
        CD_drawBottomBorderTo(view: self)
    }
}


// MARK: - IBInspectableBorderVertical


/**
 * UIViewBorderVertical: An UIView with Horizontal Borders (custom CALayer)
 * @discussion: For more information about the properties, check the IBInspectableBorderVertical protocol
 */
@available(iOS 9.0, *)
@IBDesignable
open class UIViewBorderVertical : UIView, IBInspectableBorderVertical {
    
    @IBInspectable
    open var borderColor: UIColor = .black {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable
    open var borderLeft: CGFloat = 1.0 {
        didSet {
            CD_drawLeftBorderTo(view: self)
        }
    }
    
    @IBInspectable
    open var borderRight: CGFloat = 1.0 {
        didSet {
            CD_drawRightBorderTo(view: self)
        }
    }
    
    public(set) open var currentBorderLeft : CALayer?
    public(set) open var currentBorderRight : CALayer?
    
    override open func layoutSubviews() {
        super.layoutSubviews()
        CD_drawLeftBorderTo(view: self)
        CD_drawRightBorderTo(view: self)
    }
}

/**
 * UIImageViewBorderVertical: An UIImageView with Horizontal Borders (custom CALayer)
 * @discussion: For more information about the properties, check the IBInspectableBorderVertical protocol
 */
@available(iOS 9.0, *)
@IBDesignable
open class UIImageViewBorderVertical : UIImageView, IBInspectableBorderVertical {
    
    @IBInspectable
    open var borderColor: UIColor = .black {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable
    open var borderLeft: CGFloat = 1.0 {
        didSet {
            CD_drawLeftBorderTo(view: self)
        }
    }
    
    @IBInspectable
    open var borderRight: CGFloat = 1.0 {
        didSet {
            CD_drawRightBorderTo(view: self)
        }
    }
    
    public(set) open var currentBorderLeft : CALayer?
    public(set) open var currentBorderRight : CALayer?
    
    override open func layoutSubviews() {
        super.layoutSubviews()
        CD_drawLeftBorderTo(view: self)
        CD_drawRightBorderTo(view: self)
    }
}

/**
 * UIButtonBorderVertical: An UIButton with Horizontal Borders (custom CALayer)
 * @discussion: For more information about the properties, check the IBInspectableBorderVertical protocol
 */
@available(iOS 9.0, *)
@IBDesignable
open class UIButtonBorderVertical : UIButton, IBInspectableBorderVertical {
    
    @IBInspectable
    open var borderColor: UIColor = .black {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable
    open var borderLeft: CGFloat = 1.0 {
        didSet {
            CD_drawLeftBorderTo(view: self)
        }
    }
    
    @IBInspectable
    open var borderRight: CGFloat = 1.0 {
        didSet {
            CD_drawRightBorderTo(view: self)
        }
    }
    
    public(set) open var currentBorderLeft : CALayer?
    public(set) open var currentBorderRight : CALayer?
    
    override open func layoutSubviews() {
        super.layoutSubviews()
        CD_drawLeftBorderTo(view: self)
        CD_drawRightBorderTo(view: self)
    }
}

