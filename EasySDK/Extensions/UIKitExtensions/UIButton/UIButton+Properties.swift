//
//  UIButton+Properties.swift
//  EasySDK
//
//  Created by Amit Majumdar on 31/07/19.
//  Copyright © 2019 EasySDK. All rights reserved.
//

#if canImport(UIKit) && !os(watchOS)

import UIKit

public extension UIButton {
    
    /// EasySDK: Image of disabled state for button; also inspectable from Storyboard.
    @IBInspectable
    public var disabledImage: UIImage? {
        get {
            return image(for: .disabled)
        }
        set {
            setImage(newValue, for: .disabled)
        }
    }
    
    /// EasySDK: Image of highlighted state for button; also inspectable from Storyboard.
    @IBInspectable
    public var highlightedImage: UIImage? {
        get {
            return image(for: .highlighted)
        }
        set {
            setImage(newValue, for: .highlighted)
        }
    }
    
    /// EasySDK: Image of normal state for button; also inspectable from Storyboard.
    @IBInspectable
    public var normalImage: UIImage? {
        get {
            return image(for: .normal)
        }
        set {
            setImage(newValue, for: .normal)
        }
    }
    
    /// EasySDK: Image of selected state for button; also inspectable from Storyboard.
    @IBInspectable
    public var selectedImage: UIImage? {
        get {
            return image(for: .selected)
        }
        set {
            setImage(newValue, for: .selected)
        }
    }
    
    /// EasySDK: Title color of disabled state for button; also inspectable from Storyboard.
    @IBInspectable
    public var disabledTintColor: UIColor? {
        get {
            return titleColor(for: .disabled)
        }
        set {
            setTitleColor(newValue, for: .disabled)
        }
    }
    
    /// EasySDK: Title color of highlighted state for button; also inspectable from Storyboard.
    @IBInspectable
    public var highlightedTintColor: UIColor? {
        get {
            return titleColor(for: .highlighted)
        }
        set {
            setTitleColor(newValue, for: .highlighted)
        }
    }
    
    /// EasySDK: Title color of normal state for button; also inspectable from Storyboard.
    @IBInspectable
    public var normalTintColor: UIColor? {
        get {
            return titleColor(for: .normal)
        }
        set {
            setTitleColor(newValue, for: .normal)
        }
    }
    
    /// EasySDK: Title color of selected state for button; also inspectable from Storyboard.
    @IBInspectable
    public var selectedTitleColor: UIColor? {
        get {
            return titleColor(for: .selected)
        }
        set {
            setTitleColor(newValue, for: .selected)
        }
    }
    
    /// EasySDK: Title of disabled state for button; also inspectable from Storyboard.
    @IBInspectable
    public var disabledTitle: String? {
        get {
            return title(for: .disabled)
        }
        set {
            setTitle(newValue, for: .disabled)
        }
    }
    
    /// EasySDK: Title of highlighted state for button; also inspectable from Storyboard.
    @IBInspectable
    public var highlightedTitle: String? {
        get {
            return title(for: .highlighted)
        }
        set {
            setTitle(newValue, for: .highlighted)
        }
    }
    
    /// EasySDK: Title of normal state for button; also inspectable from Storyboard.
    @IBInspectable
    public var normalTitle: String? {
        get {
            return title(for: .normal)
        }
        set {
            setTitle(newValue, for: .normal)
        }
    }
    
    /// EasySDK: Title of selected state for button; also inspectable from Storyboard.
    @IBInspectable
    public var selectedTitle: String? {
        get {
            return title(for: .selected)
        }
        set {
            setTitle(newValue, for: .selected)
        }
    }    
}

#endif
