//
//  UIView+Utils.swift
//  InterfaceBuilderHelp
//
//  Created by Ivan Brazhnikov on 07.01.16.
//  Copyright © 2016 Ivan Brazhnikov. All rights reserved.
//

import UIKit

extension UIView {
    
    @IBInspectable var cornerRadius: CGFloat {
        set { layer.cornerRadius = newValue  }
        get { return layer.cornerRadius }
    }
    
    @IBInspectable var borderWidth: CGFloat {
        set { layer.borderWidth = newValue }
        get { return layer.borderWidth }
    }
    
    @IBInspectable var borderColor: UIColor? {
        set { layer.borderColor = newValue?.CGColor  }
        get { return layer.borderColor?.UIColor }
    }
    
    @IBInspectable var shadowOffset: CGSize {
        set { layer.shadowOffset = newValue  }
        get { return layer.shadowOffset }
    }
    
    @IBInspectable var shadowOpacity: Float {
        set { layer.shadowOpacity = newValue }
        get { return layer.shadowOpacity }
    }
    
    @IBInspectable var shadowRadius: CGFloat {
        set {  layer.shadowRadius = newValue }
        get { return layer.shadowRadius }
    }
    
    @IBInspectable var shadowColor: UIColor? {
        set { layer.shadowColor = newValue?.CGColor }
        get { return layer.shadowColor?.UIColor }
    }
    
    @IBInspectable var _clipsToBounds: Bool {
        set { clipsToBounds = newValue }
        get { return clipsToBounds }
    }
}


extension CGColor {
    var UIColor: UIKit.UIColor {
        return UIKit.UIColor(CGColor: self)
    }
}


