//
//  UIButton+Utils.swift
//  InterfaceBuilderHelp
//
//  Created by Ivan Brazhnikov on 07.01.16.
//  Copyright © 2016 Ivan Brazhnikov. All rights reserved.
//

import UIKit

/*
extension UIButton {
    @IBInspectable var borderWidth: CGFloat {
        set { layer.borderWidth = newValue }
        get { return layer.borderWidth }
    }
    
    @IBInspectable var borderColor: UIColor? {
        set { layer.borderColor = newValue?.CGColor }
        get { return layer.borderColor?.UIColor }
    }
    
    @IBInspectable var cornerRadius: CGFloat {
        set { layer.cornerRadius = newValue }
        get { return layer.cornerRadius  }
    }
}
*/

enum ButtonStyle: String {
    
    case Light  = "light"
    case Dark   = "dark"
    
    var tintColor: UIColor {
        switch self {
        case .Light:    return UIColor.blackColor()
        case .Dark:     return UIColor.lightGrayColor()
        }
    }
    
    var borderColor:        UIColor { return tintColor }
    var backgroundColor:    UIColor { return UIColor.clearColor() }
    var borderWidth:        CGFloat { return 1 }
    var cornerRadius:       CGFloat { return 4 }
}

extension UIButton {
    
    @IBInspectable var style: String? {
        set { setupWithStyleNamed(newValue) }
        get { return nil }
    }
    
    private func setupWithStyleNamed(named: String?){
        if let styleName = named, style = ButtonStyle(rawValue: styleName) {
            setupWithStyle(style)
        }
    }
    
    private func setupWithStyle(style: ButtonStyle){
        backgroundColor = style.backgroundColor
        tintColor       = style.tintColor
        borderColor     = style.borderColor
        borderWidth     = style.borderWidth
        cornerRadius    = style.cornerRadius
    }
}
