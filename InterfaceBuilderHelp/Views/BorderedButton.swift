//
//  BorderedButton.swift
//  InterfaceBuilderHelp
//
//  Created by Ivan Brazhnikov on 07.01.16.
//  Copyright © 2016 Ivan Brazhnikov. All rights reserved.
//

import UIKit

@IBDesignable class BorderedButton : UIButton {
    
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

extension CGColor {
    private var UIColor: UIKit.UIColor {
        return UIKit.UIColor(CGColor: self)
    }
}
