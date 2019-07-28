//
//  RawRepresentable+EasyRepresentation.swift
//  UtilitySDK
//
//  Created by Amit Majumdar on 31/05/19.
//  Copyright © 2019 EasySDK. All rights reserved.
//

import Foundation

/**
 * Extend all enums with a simple method to derive their names.
 */
public extension RawRepresentable where RawValue: Any {
    /**
     * The name of the enumeration (as written in case).
     */
    public var name: String {
        get { return String(describing: self) }
    }
    
    /**
     * The full name of the enumeration
     * (the name of the enum plus dot plus the name as written in case).
     */
    public var description: String {
        get { return String(reflecting: self) }
    }
}
