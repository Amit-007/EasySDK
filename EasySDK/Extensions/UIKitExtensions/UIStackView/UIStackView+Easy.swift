//
//  UIStackView+Easy.swift
//  EasySDK
//
//  Created by Amit Majumdar on 02/06/19.
//  Copyright © 2019 EasySDK. All rights reserved.
//

#if canImport(UIKit) && !os(watchOS)

import UIKit

extension UIStackView {
    
    /// EasySDK: This method will apply a margin all around the UIStackView
    ///
    /// - Parameter margins: margincValues
    /// - Returns: UIStackView
    @discardableResult
    open func withMargins(_ margins: UIEdgeInsets) -> UIStackView {
        layoutMargins = margins
        isLayoutMarginsRelativeArrangement = true
        return self
    }
    
    /// EasySDK: This method will apply a left padding to the UIStackView
    ///
    /// - Parameter left: Left Padding
    /// - Returns: UIStackView
    @discardableResult
    open func padLeft(_ left: CGFloat) -> UIStackView {
        isLayoutMarginsRelativeArrangement = true
        layoutMargins.left = left
        return self
    }
    
    /// EasySDK: This method will apply a top padding to the UIStackView
    ///
    /// - Parameter top: Top Padding
    /// - Returns: UIStackView
    @discardableResult
    open func padTop(_ top: CGFloat) -> UIStackView {
        isLayoutMarginsRelativeArrangement = true
        layoutMargins.top = top
        return self
    }
    
    /// EasySDK: This method will apply a bottom padding to the UIStackView
    ///
    /// - Parameter bottom: Bottom Padding
    /// - Returns: UIStackView
    @discardableResult
    open func padBottom(_ bottom: CGFloat) -> UIStackView {
        isLayoutMarginsRelativeArrangement = true
        layoutMargins.bottom = bottom
        return self
    }
    
    /// EasySDK: This method will apply a right padding to the UIStackView
    ///
    /// - Parameter right: Right Padding
    /// - Returns: UIStackView
    @discardableResult
    open func padRight(_ right: CGFloat) -> UIStackView {
        isLayoutMarginsRelativeArrangement = true
        layoutMargins.right = right
        return self
    }
}
#endif
