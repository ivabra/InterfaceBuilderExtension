//
//  UIView+Utils.swift
//  InterfaceBuilderHelp
//
//  Created by Ivan Brazhnikov on 07.01.16.
//  Copyright © 2016 Ivan Brazhnikov. All rights reserved.
//

import UIKit

extension UIView {
    /// Радиус гараницы
    @IBInspectable var cornerRadius: CGFloat {
        set { layer.cornerRadius = newValue  }
        get { return layer.cornerRadius }
    }
    /// Толщина границы
    @IBInspectable var borderWidth: CGFloat {
        set { layer.borderWidth = newValue }
        get { return layer.borderWidth }
    }
    /// Цвет границы
    @IBInspectable var borderColor: UIColor? {
        set { layer.borderColor = newValue?.CGColor  }
        get { return layer.borderColor?.UIColor }
    }
    /// Смещение тени
    @IBInspectable var shadowOffset: CGSize {
        set { layer.shadowOffset = newValue  }
        get { return layer.shadowOffset }
    }
    /// Прозрачность тени
    @IBInspectable var shadowOpacity: Float {
        set { layer.shadowOpacity = newValue }
        get { return layer.shadowOpacity }
    }
    /// Радиус блура тени
    @IBInspectable var shadowRadius: CGFloat {
        set {  layer.shadowRadius = newValue }
        get { return layer.shadowRadius }
    }
    /// Цвет тени
    @IBInspectable var shadowColor: UIColor? {
        set { layer.shadowColor = newValue?.CGColor }
        get { return layer.shadowColor?.UIColor }
    }
    /// Отсекание по границе
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


