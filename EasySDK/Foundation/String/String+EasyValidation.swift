//
//  String+EasyValidation.swift
//  EasySDK
//
//  Created by Amit Majumdar on 22/07/19.
//  Copyright © 2019 EasyDevelopmentSDK. All rights reserved.
//

import Foundation

public extension String {
    
    /// EasySDK: Returns a trimmed version of the string itself
    public var trimmed: String {
        return trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    /// EasySDK: Returns 'true' if the email is valid and 'false' if otherwise
    public var isEmailValid: Bool {
        let predicate = NSPredicate(format: "SELF MATCHES %@", String.emailRegEx)
        return predicate.evaluate(with: self.trimmed)
    }
    
    /// EasySDK: Check if string is a valid schemed URL.
    public var isValidSchemedUrl: Bool {
        guard let url = URL(string: self) else { return false }
        return url.scheme != nil
    }
    
    ///  EasySDK: Check if string is a valid https URL.
    public var isValidHttpsUrl: Bool {
        guard let url = URL(string: self) else { return false }
        return url.scheme == String.https
    }
    
    /// EasySDK: Check if string is a valid http URL.
    public var isValidHttpUrl: Bool {
        guard let url = URL(string: self) else { return false }
        return url.scheme == String.http
    }
    
    /// EasySDK: Check if string is a valid URL.
    public var isValidUrl: Bool {
        return URL(string: self) != nil
    }
    
    /// EasySDK: Check if string is a valid file URL.
    public var isValidFileUrl: Bool {
        return URL(string: self)?.isFileURL ?? false
    }
    
    #if os(iOS) || os(tvOS)
    
    /// EasySDK: Check if the given string spelled correctly
    public var isSpelledCorrectly: Bool {
        let checker = UITextChecker()
        let range = NSRange(location: 0, length: utf16.count)
        
        let misspelledRange = checker.rangeOfMisspelledWord(in: self, range: range, startingAt: 0, wrap: false, language: Locale.preferredLanguages.first ?? "en")
        return misspelledRange.location == NSNotFound
    }
    #endif
}
