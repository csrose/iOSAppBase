//
//  UIView+Extension.swift
//  iOSAppBase
//
//  Created by 杨晓冬 on 10/21/16.
//  Copyright © 2016 杨晓冬. All rights reserved.
//

import Foundation

public extension UIView {
    
    // MARK: - Frame size
    var width: CGFloat {
        get { return self.frame.size.width }
        set { self.frame.size.width = newValue }
    }
    
    var height: CGFloat {
        get { return self.frame.size.height }
        set { self.frame.size.height = newValue }
    }
    
    var size: CGSize {
        get { return self.frame.size }
        set { self.frame.size = newValue }
    }
    
    // MARK: - Frame origin
    var origin: CGPoint {
        get { return self.frame.origin }
        set { self.frame.origin = newValue }
    }
    
    var x: CGFloat {
        get { return self.frame.origin.x }
        set { self.frame.origin.x = newValue }
    }
    
    var y: CGFloat {
        get { return self.frame.origin.y }
        set { self.frame.origin.x = newValue }
    }
    
    // MARK: - Frame Position
    var centerX: CGFloat {
        get { return self.center.x }
        set { self.center = CGPoint(x: newValue, y: self.center.y) }
    }
    
    var centerY: CGFloat {
        get { return self.center.y }
        set { self.center = CGPoint(x: self.center.x, y: newValue)}
    }
    
    var top: CGFloat {
        get { return self.frame.origin.y }
        set { self.frame.origin.y = newValue }
    }
    
    var bottom: CGFloat {
        get { return self.frame.origin.y + self.frame.height }
        set { self.frame.origin.y = newValue - self.frame.height }
    }
    
    var left: CGFloat {
        get { return self.frame.origin.x }
        set { self.frame.origin.x = newValue }
    }
    
    var right: CGFloat {
        get { return self.frame.origin.x + self.frame.width }
        set { self.frame.origin.x = newValue - self.frame.width }
    }
    
    // MARK: - Nib
    class func nibObject() -> UINib {
        let hasNib = Bundle.main.path(forResource: self.nameOfClass, ofType: "nib") != nil
        guard hasNib else {
            assert(!hasNib, "\(self.nameOfClass).nib does't exist")
            return UINib()
        }
        return UINib(nibName: self.nameOfClass, bundle: nil)
    }
}













