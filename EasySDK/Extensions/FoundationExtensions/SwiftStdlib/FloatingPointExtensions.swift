//
//  FloatingPointExtensions.swift
//  EasySDK
//
//  Created by Amit Majumdar on 31/07/19.
//  Copyright © 2019 EasySDK. All rights reserved.
//

#if canImport(Foundation)
import Foundation
#endif

// MARK: - Properties
public extension FloatingPoint {

    /// EasySDK: Absolute value of number.
    var abs: Self {
        return Swift.abs(self)
    }

    /// EasySDK: Check if number is positive.
    var isPositive: Bool {
        return self > 0
    }

    /// EasySDK: Check if number is negative.
    var isNegative: Bool {
        return self < 0
    }

    #if canImport(Foundation)
    /// EasySDK: Ceil of number.
    var ceil: Self {
        return Foundation.ceil(self)
    }
    #endif

    /// EasySDK: Radian value of degree input.
    var degreesToRadians: Self {
        return Self.pi * self / Self(180)
    }

    #if canImport(Foundation)
    /// EasySDK: Floor of number.
    var floor: Self {
        return Foundation.floor(self)
    }
    #endif

    /// EasySDK: Degree value of radian input.
    var radiansToDegrees: Self {
        return self * Self(180) / Self.pi
    }

}

// MARK: - Operators

infix operator ±
/// EasySDK: Tuple of plus-minus operation.
///
/// - Parameters:
///   - lhs: number
///   - rhs: number
/// - Returns: tuple of plus-minus operation ( 2.5 ± 1.5 -> (4, 1)).
// swiftlint:disable:next identifier_name
func ± <T: FloatingPoint> (lhs: T, rhs: T) -> (T, T) {
    // http://nshipster.com/swift-operators/
    return (lhs + rhs, lhs - rhs)
}

prefix operator ±
/// EasySDK: Tuple of plus-minus operation.
///
/// - Parameter int: number
/// - Returns: tuple of plus-minus operation (± 2.5 -> (2.5, -2.5)).
// swiftlint:disable:next identifier_name
public prefix func ± <T: FloatingPoint> (number: T) -> (T, T) {
    // http://nshipster.com/swift-operators/
    return 0 ± number
}
