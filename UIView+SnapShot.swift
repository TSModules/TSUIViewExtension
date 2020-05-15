//
//  UIView+SnapShot.swift
//  TSUIViewExtension
//
//  Created by wangding on 2020/5/14.
//

import UIKit

extension UIView {
    
    /// 截图当前页面，并保存成图片
    public func snapShot() -> UIImage? {

        UIGraphicsBeginImageContext(self.bounds.size)
        if let ctx = UIGraphicsGetCurrentContext() {
            self.layer.render(in: ctx)
            let snapShot = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()
            return snapShot
        } else {
            UIGraphicsEndImageContext()
            return nil
        }
    }
}
