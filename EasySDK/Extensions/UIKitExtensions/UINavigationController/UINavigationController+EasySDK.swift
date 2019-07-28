//
//  UINavigationController+EasySDK.swift
//  EasySDK
//
//  Created by Amit Majumdar on 29/07/19.
//  Copyright © 2019 EasySDK. All rights reserved.
//

#if canImport(UIKit) && !os(watchOS)

import UIKit

extension UINavigationController {
    
    /// EasySDK: Make navigation controller's navigation bar transparent.
    ///
    /// - Parameter tint: tint color (default is .white).
    public func makeTransparent(withTint tint: UIColor = .white) {
        navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationBar.shadowImage = UIImage()
        navigationBar.isTranslucent = true
        navigationBar.tintColor = tint
        navigationBar.titleTextAttributes = [.foregroundColor: tint]
    }
}


#endif
