//
//  IBDesignableBorderShadow.swift
//  CoolDesignables
//
//  Created by Felipe Ricieri on 21/07/17.
//  Copyright © 2017 Ricieri Labs. All rights reserved.
//

import UIKit


// MARK: - IBInspectableBorder


/**
 * UIViewBorder: An UIView with IBInspectable Border Width
 * @discussion: For more information about the properties, check the IBInspectableBorder protocol
 */
@available(iOS 9.0, *)
@IBDesignable
open class UIViewBorderShadow : UIViewShadow, IBInspectableBorder {
    
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
open class UIImageViewBorderShadow : UIImageViewShadow, IBInspectableBorder {
    
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
open class UIButtonBorderShadow : UIButtonShadow, IBInspectableBorder {
    
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
open class UIViewBorderHorizontalShadow : UIViewShadow, IBInspectableBorderHorizontal {
    
    @IBInspectable
    open var borderTop: CGFloat = 1.0 {
        didSet {
            drawTopBorder()
        }
    }
    
    @IBInspectable
    open var borderBottom: CGFloat = 1.0 {
        didSet {
            drawBottomBorder()
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
        drawTopBorder()
        drawBottomBorder()
    }
}

/**
 * UIImageViewBorderHorizontal: An UIImageView with Horizontal Borders (custom CALayer)
 * @discussion: For more information about the properties, check the IBInspectableBorderHorizontal protocol
 */
@available(iOS 9.0, *)
@IBDesignable
open class UIImageViewBorderHorizontalShadow : UIImageViewShadow, IBInspectableBorderHorizontal {
    
    @IBInspectable
    open var borderTop: CGFloat = 1.0 {
        didSet {
            drawTopBorder()
        }
    }
    
    @IBInspectable
    open var borderBottom: CGFloat = 1.0 {
        didSet {
            drawBottomBorder()
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
        drawTopBorder()
        drawBottomBorder()
    }
}

/**
 * UIButtonBorderHorizontal: An UIButton with Horizontal Borders (custom CALayer)
 * @discussion: For more information about the properties, check the IBInspectableBorderHorizontal protocol
 */
@available(iOS 9.0, *)
@IBDesignable
open class UIButtonBorderHorizontalShadow : UIButtonShadow, IBInspectableBorderHorizontal {
    
    @IBInspectable
    open var borderTop: CGFloat = 1.0 {
        didSet {
            drawTopBorder()
        }
    }
    
    @IBInspectable
    open var borderBottom: CGFloat = 1.0 {
        didSet {
            drawBottomBorder()
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
        drawTopBorder()
        drawBottomBorder()
    }
}


// MARK: - IBInspectableBorderVertical


/**
 * UIViewBorderVertical: An UIView with Horizontal Borders (custom CALayer)
 * @discussion: For more information about the properties, check the IBInspectableBorderVertical protocol
 */
@available(iOS 9.0, *)
@IBDesignable
open class UIViewBorderVerticalShadow : UIViewShadow, IBInspectableBorderVertical {
    
    @IBInspectable
    open var borderLeft: CGFloat = 1.0 {
        didSet {
            drawLeftBorder()
        }
    }
    
    @IBInspectable
    open var borderRight: CGFloat = 1.0 {
        didSet {
            drawRightBorder()
        }
    }
    
    @IBInspectable
    open var borderColor: UIColor = .black {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    public(set) open var currentBorderLeft : CALayer?
    public(set) open var currentBorderRight : CALayer?
    
    override open func layoutSubviews() {
        super.layoutSubviews()
        drawLeftBorder()
        drawRightBorder()
    }
}

/**
 * UIImageViewBorderVertical: An UIImageView with Horizontal Borders (custom CALayer)
 * @discussion: For more information about the properties, check the IBInspectableBorderVertical protocol
 */
@available(iOS 9.0, *)
@IBDesignable
open class UIImageViewBorderVerticalShadow : UIImageViewShadow, IBInspectableBorderVertical {
    
    @IBInspectable
    open var borderLeft: CGFloat = 1.0 {
        didSet {
            drawLeftBorder()
        }
    }
    
    @IBInspectable
    open var borderRight: CGFloat = 1.0 {
        didSet {
            drawRightBorder()
        }
    }
    
    @IBInspectable
    open var borderColor: UIColor = .black {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    public(set) open var currentBorderLeft : CALayer?
    public(set) open var currentBorderRight : CALayer?
    
    override open func layoutSubviews() {
        super.layoutSubviews()
        drawLeftBorder()
        drawRightBorder()
    }
}

/**
 * UIButtonBorderVertical: An UIButton with Horizontal Borders (custom CALayer)
 * @discussion: For more information about the properties, check the IBInspectableBorderVertical protocol
 */
@available(iOS 9.0, *)
@IBDesignable
open class UIButtonBorderVerticalShadow : UIButtonShadow, IBInspectableBorderVertical {
    
    @IBInspectable
    open var borderLeft: CGFloat = 1.0 {
        didSet {
            drawLeftBorder()
        }
    }
    
    @IBInspectable
    open var borderRight: CGFloat = 1.0 {
        didSet {
            drawRightBorder()
        }
    }
    
    @IBInspectable
    open var borderColor: UIColor = .black {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    public(set) open var currentBorderLeft : CALayer?
    public(set) open var currentBorderRight : CALayer?
    
    override open func layoutSubviews() {
        super.layoutSubviews()
        drawLeftBorder()
        drawRightBorder()
    }
}


