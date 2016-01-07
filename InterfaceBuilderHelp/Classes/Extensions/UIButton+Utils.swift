//
//  UIButton+Utils.swift
//  InterfaceBuilderHelp
//
//  Created by Ivan Brazhnikov on 07.01.16.
//  Copyright © 2016 Ivan Brazhnikov. All rights reserved.
//

import UIKit


extension UIButton {
    /*
    /// Толщина границы
    @IBInspectable var borderWidth: CGFloat {
        set { layer.borderWidth = newValue }
        get { return layer.borderWidth }
    }
    /// Цвет границы
    @IBInspectable var borderColor: UIColor? {
        set { layer.borderColor = newValue?.CGColor }
        get { return layer.borderColor?.UIColor }
    }
    /// радиус границы
    @IBInspectable var cornerRadius: CGFloat {
        set { layer.cornerRadius = newValue }
        get { return layer.cornerRadius  }
    }
    */
}

/// Стиль кнопки
enum ButtonStyle: String {
    
    /// Светлый стиль
    case Light  = "light"
    /// Темный стиль
    case Dark   = "dark"
    
    /// Оттенок
    var tintColor: UIColor {
        switch self {
        case .Light:    return UIColor.blackColor()
        case .Dark:     return UIColor.lightGrayColor()
        }
    }
    /// Цвет границы
    var borderColor:        UIColor { return tintColor }
    /// Цвет фона
    var backgroundColor:    UIColor { return UIColor.clearColor() }
    /// Толщина границы
    var borderWidth:        CGFloat { return 1 }
    /// Радиус границы
    var cornerRadius:       CGFloat { return 4 }
}

extension UIButton {
    /// Стиль кнопки
    @IBInspectable var style: String? {
        set { setupWithStyleNamed(newValue) }
        get { return nil }
    }

    /// Применение стиля по его строковому названию
    private func setupWithStyleNamed(named: String?){
        if let styleName = named, style = ButtonStyle(rawValue: styleName) {
            setupWithStyle(style)
        }
    }
    
    /// Применение стиля по его идентификатору
    func setupWithStyle(style: ButtonStyle){
        backgroundColor = style.backgroundColor
        tintColor       = style.tintColor
        borderColor     = style.borderColor
        borderWidth     = style.borderWidth
        cornerRadius    = style.cornerRadius
    }
}
