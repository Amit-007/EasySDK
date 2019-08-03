//
//  DoubleExtensions.swift
//  EasySDK
//
//  Created by Amit Majumdar on 31/07/19.
//  Copyright © 2019 EasySDK. All rights reserved.
//

#if canImport(CoreGraphics)
import CoreGraphics
#endif

#if os(macOS) || os(iOS)
import Darwin
#elseif os(Linux)
import Glibc
#endif

// MARK: - Properties
public extension Double {

    /// EasySDK: Int.
    var int: Int {
        return Int(self)
    }

    /// EasySDK: Float.
    var float: Float {
        return Float(self)
    }

    #if canImport(CoreGraphics)
    /// EasySDK: CGFloat.
    var cgFloat: CGFloat {
        return CGFloat(self)
    }
    #endif

}

// MARK: - Operators

precedencegroup PowerPrecedence { higherThan: MultiplicationPrecedence }
infix operator ** : PowerPrecedence
/// EasySDK: Value of exponentiation.
///
/// - Parameters:
///   - lhs: base double.
///   - rhs: exponent double.
/// - Returns: exponentiation result (example: 4.4 ** 0.5 = 2.0976176963).
func ** (lhs: Double, rhs: Double) -> Double {
    // http://nshipster.com/swift-operators/
    return pow(lhs, rhs)
}

prefix operator √
/// EasySDK: Square root of double.
///
/// - Parameter double: double value to find square root for.
/// - Returns: square root of given double.
// swiftlint:disable:next identifier_name
public prefix func √ (double: Double) -> Double {
    // http://nshipster.com/swift-operators/
    return sqrt(double)
}
