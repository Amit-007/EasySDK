//
//  UIView+EasyStackLayout.swift
//  EasySDK
//
//  Created by Amit Majumdar on 28/07/19.
//  Copyright © 2019 EasySDK. All rights reserved.
//

import UIKit

extension UIView {
   
    fileprivate func _stack(_ axis: NSLayoutConstraint.Axis = .vertical, views: [UIView], spacing: CGFloat = 0, alignment: UIStackView.Alignment = .fill) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: views)
        stackView.axis = axis
        stackView.spacing = spacing
        stackView.alignment = alignment
        addSubview(stackView)
        stackView.fillSuperview()
        return stackView
    }
    
    @discardableResult
    open func vstack(_ views: UIView..., spacing: CGFloat = 0, alignment: UIStackView.Alignment = .fill) -> UIStackView {
        return _stack(.vertical, views: views, spacing: spacing, alignment: alignment)
    }
    
    @discardableResult
    open func hstack(_ views: UIView..., spacing: CGFloat = 0, alignment: UIStackView.Alignment = .fill) -> UIStackView {
        return _stack(.horizontal, views: views, spacing: spacing, alignment: alignment)
    }
    
    @discardableResult
    open func withSize<T: UIView>(_ size: CGSize) -> T {
        translatesAutoresizingMaskIntoConstraints = false
        widthAnchor.constraint(equalToConstant: size.width).isActive = true
        heightAnchor.constraint(equalToConstant: size.height).isActive = true
        return self as! T
    }
    
    @discardableResult
    open func withHeight(_ height: CGFloat) -> UIView {
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: height).isActive = true
        return self
    }
    
    @discardableResult
    open func withWidth(_ width: CGFloat) -> UIView {
        translatesAutoresizingMaskIntoConstraints = false
        widthAnchor.constraint(equalToConstant: width).isActive = true
        return self
    }
    
    @discardableResult
    func withBorder(width: CGFloat, color: UIColor) -> UIView {
        layer.borderWidth = width
        layer.borderColor = color.cgColor
        return self
    }
}
