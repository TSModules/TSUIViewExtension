//
//  UIView+Layer.swift
//  TSUIViewExtension
//
//  Created by wangding on 2020/5/14.
//

import UIKit

extension UIView {

    @IBInspectable
    public var cornerRadius: CGFloat {

        get {
            return self.layer.cornerRadius
        }
        set {
            self.layer.cornerRadius = newValue
            self.layer.masksToBounds = newValue != 0
        }
    }

    @IBInspectable
    public var borderColor: UIColor? {
        get {
            if let cgColor = self.layer.borderColor {
                return UIColor(cgColor: cgColor)
            } else {
                return nil
            }
        }
        set {
            self.layer.borderColor = newValue?.cgColor
        }
    }

    @IBInspectable
    public var borderWidth: CGFloat {
        get {
            return self.layer.borderWidth
        }

        set {
            self.layer.borderWidth = newValue
        }
    }
    
    
}
