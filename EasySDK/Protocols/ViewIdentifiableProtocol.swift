//
//  ViewIdentifiableProtocol.swift
//  EasySDK
//
//  Created by Amit Majumdar on 22/07/19.
//  Copyright © 2019 EasyDevelopmentSDK. All rights reserved.
//

import UIKit

public protocol ViewIdentifiableProtocol {
    static var identifier: String { get }
}

extension UIViewController: ViewIdentifiableProtocol {
    public static var identifier: String {
        return String(describing: self)
    }
}

extension UIView: ViewIdentifiableProtocol {
    public static var identifier: String {
        return String(describing: self)
    }
}
