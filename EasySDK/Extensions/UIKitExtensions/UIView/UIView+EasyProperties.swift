//
//  UIView+EasyProperties.swift
//  UtilitySDK
//
//  Created by Amit Majumdar on 01/06/19.
//  Copyright © 2019 EasySDK. All rights reserved.
//

import UIKit

public extension UIView {
    
    /// Corner Radius Option
    @IBInspectable public var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    /// Border Width Option
    @IBInspectable public var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    /// Border Color Option
    @IBInspectable public var borderColor: CGColor? {
        get {
            return layer.borderColor
        }
        set {
            layer.borderColor = newValue
        }
    }
    
    /// Shadow Color Option
    @IBInspectable public var shadowColor: CGColor? {
        get {
            return layer.shadowColor
        }
        set {
            layer.shadowColor = newValue
        }
    }
    
    /// Shadow Offset Option
    @IBInspectable public var shadowOffset: CGSize {
        get {
            return layer.shadowOffset
        }
        set {
            layer.shadowOffset = newValue
        }
    }
    
    /// Shadow Opacity Option
    @IBInspectable public var shadowOpacity: Float {
        get {
            return layer.shadowOpacity
        }
        set {
            layer.shadowOpacity = newValue
        }
    }
    
    /// Shadow Radius Option
    @IBInspectable public var shadowRadius: CGFloat {
        get {
            return layer.shadowRadius
        }
        set {
            layer.shadowRadius = newValue
        }
    }
    
    /// Shadow Path Option
    @IBInspectable public var shadowPath: CGPath? {
        get {
            return layer.shadowPath
        }
        set {
            layer.shadowPath = newValue
        }
    }
    
    /// Mask to bounds controll
    @IBInspectable public var masksToBounds: Bool {
        get {
            return layer.masksToBounds
        }
        set {
            layer.masksToBounds = newValue
        }
    }
    
    /// Rasterize option
    @IBInspectable public var rasterize: Bool {
        get {
            return self.layer.shouldRasterize
        }
        set {
            self.layer.shouldRasterize = newValue
            self.layer.rasterizationScale = UIScreen.main.scale
        }
    }
    
    /// Shadow Path Option
    @IBInspectable public var layerBackgroundColor: CGColor? {
        get {
            return layer.backgroundColor
        }
        set {
            layer.backgroundColor = newValue
        }
    }
    
    // Create bezier path of shadow for rasterize
    @IBInspectable public var enableBezierPath: Bool {
        get {
            return self.layer.shadowPath != nil
        }
        set {
            if enableBezierPath {
                layer.shadowPath = UIBezierPath(roundedRect: layer.bounds, cornerRadius: cornerRadius).cgPath
            } else {
                layer.shadowPath = nil
            }
        }
    }
    
    @IBInspectable public var x: CGFloat {
        get {
            return frame.origin.x
        }
        set(newValue) {
            var frame = self.frame
            frame.origin.x = newValue
            self.frame = frame
        }
    }
    
    @IBInspectable public var y: CGFloat {
        get {
            return frame.origin.y
        }
        set(newValue) {
            var frame = self.frame
            frame.origin.y = newValue
            self.frame = frame
        }
    }
    
    @IBInspectable public var width: CGFloat {
        get {
            return frame.size.width
        }
        set(newValue) {
            var frame = self.frame
            frame.size.width = newValue
            self.frame = frame
        }
    }
    
    @IBInspectable public var height: CGFloat {
        get {
            return frame.size.height
        }
        set(newValue) {
            var frame = self.frame
            frame.size.height = newValue
            self.frame = frame
        }
    }
    
    @IBInspectable public var size: CGSize {
        get {
            return frame.size
        }
        set(newValue) {
            var frame = self.frame
            frame.size = newValue
            self.frame = frame
        }
    }
    
    @IBInspectable public var origin: CGPoint {
        get {
            return frame.origin
        }
        set(newValue) {
            var frame = self.frame
            frame.origin = newValue
            self.frame = frame
        }
    }
}
