//
//  UIView+Frame.swift
//  TSUIViewExtension
//
//  Created by wangding on 2020/5/14.
//

import UIKit

extension UIView {

    public var x: CGFloat {
        get {
            return self.frame.minX
        }
        set {
            self.frame.origin.x = _pixelAlignment(newValue)
        }
    }

    public var y: CGFloat {
        get {
            return self.frame.minY
        }
        set {
            self.frame.origin.y = _pixelAlignment(newValue)
        }
    }

    public var width: CGFloat {
        get {
            return self.frame.width
        }

        set {
            self.frame.size.width = _pixelAlignment(newValue)
        }
    }

    public var height: CGFloat {
        get {
            return self.frame.height
        }
        set {
            self.frame.size.height = _pixelAlignment(newValue)
        }
    }

    public var origin: CGPoint {
        get {
            return self.frame.origin
        }
        set {
            self.frame.origin = CGPoint(x: _pixelAlignment(newValue.x), y: _pixelAlignment(newValue.y))
        }
    }

    public var size: CGSize {
        get {
            return self.frame.size
        }
        set {
            self.frame.size = CGSize(width: _pixelAlignment(newValue.width), height: _pixelAlignment(newValue.height))
        }
    }
    
    public var centerX: CGFloat {
        get {
            return self.center.x
        }
        set {
            self.center = CGPoint(x: _pixelAlignment(newValue), y: self.center.y)
        }
    }
    
    public var centerY: CGFloat {
        get {
            return self.center.y
        }
        set {
            self.center = CGPoint(x: self.center.x, y: _pixelAlignment(newValue))
        }
    }
    
    public func centerToParent() {
        guard let superview = self.superview else {return}
        
        switch UIApplication.shared.statusBarOrientation {
            case .landscapeLeft, .landscapeRight:
                self.origin = CGPoint(x: (superview.height / 2) - (self.width / 2),
                                      y: (superview.height / 2) - (self.width / 2))
            case .portrait, .portraitUpsideDown:
                self.origin = CGPoint(x: (superview.width / 2) - (self.width / 2),
                                      y: (superview.height / 2) - (self.height / 2))
            case .unknown:
                return
            }
    }
    
    
    private func _pixelAlignment(_ x: CGFloat) -> CGFloat {
        return round(x)
    }
}

extension UIView {
    
    public var maxX: CGFloat {
        return self.frame.maxX
    }
    
    public var maxY: CGFloat {
        return self.frame.maxY
    }
}

