//
//  UIView+Find.swift
//  TSUIViewExtension
//
//  Created by wangding on 2020/5/14.
//

import UIKit

public protocol Findable {
    associatedtype O
    
    /// 找视图层级中指定index的该类型的父视图并返回
    func findFistAncestor(ofType t: O.Type) -> O?
    /// 找视图层级中第一个该类型的父视图并返回
    func findLastAncestor(ofType t: O.Type) -> O?
    /// 找视图层级中最后一个该类型的父视图并返回
    func findAncestor(at index:Int, ofType t: O.Type) -> O?
    
    func findLastSubview() -> O?
    func findFirstSubview() -> O?
    
    /// 找当前视图的显示出来的子视图中的最后一个，isHidden为false则为显示
    func findLastVisibleSubview() -> O?
}

extension UIView: Findable {
    
    public func findAncestor(at index: Int, ofType t: UIView.Type) -> UIView? {
        guard index >= 0 else { return nil }
        
        var target: UIView?
        var superview = self.superview
        var tempIndex = -1
        
        while superview != nil {
            
            if superview?.isKind(of: t) ?? false {
                target = superview
                tempIndex += 1
                if tempIndex == index {
                    return target
                }
            }
            superview = superview?.superview
        }
        return nil
    }
    
    public func findFistAncestor(ofType t: UIView.Type) -> UIView? {
        return self.findAncestor(at: 0, ofType: t)
    }
    
    public func findLastAncestor(ofType t: UIView.Type) -> UIView? {
        
        var target: UIView?
        var superview = self.superview
        while superview != nil {
            if superview?.isKind(of: t) ?? false {
                target = superview
            }
            superview = superview?.superview
        }
        return target
    }
    
    public func findFirstSubview() -> UIView? {
        return self.subviews.first
    }
    
    public func findLastSubview() -> UIView? {
        return self.subviews.last
    }
    
    public func findLastVisibleSubview() -> UIView? {
                return self.subviews.filter({ !$0.isHidden }).reduce(UIView(frame: .zero)) {
            $0.frame.maxY > $1.frame.maxY ? $0 : $1
        }
    }
}


