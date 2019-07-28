//
//  UILayoutPriority+Extensions.swift
//  EasySDK
//
//  Created by Amit Majumdar on 31/07/19.
//  Copyright © 2019 EasySDK. All rights reserved.
//

#if os(iOS) || os(tvOS)
import UIKit

extension UILayoutPriority: ExpressibleByFloatLiteral, ExpressibleByIntegerLiteral {

    // MARK: - Initializers

    /// EasySDK: Initialize `UILayoutPriority` with a float literal
    ///
    ///     constraint.priority = 0.5
    ///
    /// - Parameter value: The float value of the constraint
    public init(floatLiteral value: Float) {
        self.init(rawValue: value)
    }

    /// EasySDK: Initialize `UILayoutPriority` with an integer literal
    ///
    ///     constraint.priority = 5
    ///
    /// - Parameter value: The integer value of the constraint
    public init(integerLiteral value: Int) {
        self.init(rawValue: Float(value))
    }

}

#endif
