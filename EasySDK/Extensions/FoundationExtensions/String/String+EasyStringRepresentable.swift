//
//  String+EasyStringRepresentable.swift
//  EasySDK
//
//  Created by Amit Majumdar on 22/07/19.
//  Copyright © 2019 EasySDK. All rights reserved.
//

import Foundation

//MARK:- String Extension -- Custom String Methods

public extension String {
    
    /// EasySDK: Returns a White Space.
    public static var whiteSpace: String {
        return " "
    }
    
    /// EasySDK: Returns a White Space.
    public static var empty: String {
        return ""
    }
    
    /// EasySDK: Returns a New line.
    public static var newLine: String {
        return "\n"
    }
    
    /// EasySDK: Returns Regular Expression for Email.
    public static var emailRegEx: String {
        return "^(?:[\\p{L}0-9!#$%\\&'*+/=?\\^_`{|}~-]+(?:\\.[\\p{L}0-9!#$%\\&'*+/=?\\^_`{|}~-]+)*|\"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*\")@(?:(?:[\\p{L}0-9](?:[a-z0-9-]*[\\p{L}0-9])?\\.)+[\\p{L}0-9](?:[\\p{L}0-9-]*[\\p{L}0-9])?|\\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[\\p{L}0-9-]*[\\p{L}0-9]:(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21-\\x5a\\x53-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])+)\\])$"
    }
    
    /// EasySDK: Returns https.
    public static var https: String {
        return "https"
    }
    
    /// EasySDK: Returns http.
    public static var http: String {
        return "http"
    }
    
    /// EasySDK: Returns colon.
    public static var colon: String {
        return ":"
    }
    
    /// EasySDK: Returns pipe.
    public static var pipe: String {
        return "|"
    }
    
    /// EasySDK: Returns underscore.
    public static var underscore: String {
        return "_"
    }
    
    /// EasySDK: Returns semicolon.
    public static var semicolon: String {
        return ";"
    }
    
    /// EasySDK: Returns hyphen.
    public static var hyphen: String {
        return "-"
    }
}
