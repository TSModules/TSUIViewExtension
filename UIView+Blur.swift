//
//  UIView+Blur.swift
//  TSUIViewExtension
//
//  Created by wangding on 2020/5/15.
//

import UIKit

extension UIView {
    /// 添加一个模糊效果
    public convenience init(frame: CGRect, blurEffectStyle: UIBlurEffect.Style) {
        self.init(frame: frame)

        let blurView = UIVisualEffectView(frame: self.bounds)
        blurView.effect = UIBlurEffect(style: blurEffectStyle)
        self.addSubview(blurView)
    }
}
