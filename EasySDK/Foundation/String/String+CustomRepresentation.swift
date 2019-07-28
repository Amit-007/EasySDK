//
//  String+CustomRepresentation.swift
//  EasySDK
//
//  Created by Amit Majumdar on 22/07/19.
//  Copyright © 2019 EasyDevelopmentSDK. All rights reserved.
//

import Foundation

extension String {
    
    /// EasySDK: Returns a Float representation of the String.
    public var float: Float {
        return NSString(string:self).floatValue
    }
    
    /// EasySDK: Returns a Double representation of the String.
    public var double: Double {
        return NSString(string:self).doubleValue
    }
    
    /// EasySDK: Returns a Integer representation of the String.
    public var integer: Int {
        return NSString(string:self).integerValue
    }
    
    /// EasySDK: Returns a Camel Cased representation of the String.
    public var camelcased: String {
        let source = lowercased()
        let first = source[..<source.index(after: source.startIndex)]
        if source.contains(String.whiteSpace) {
            let connected = source.capitalized.replacingOccurrences(of: String.whiteSpace, with: String.empty)
            let camel = connected.replacingOccurrences(of: String.newLine, with: String.empty)
            let rest = String(camel.dropFirst())
            return first + rest
        }
        let rest = String(source.dropFirst())
        return first + rest
    }
    
    /// EasySDK: Check if string contains one or more emojis.
    public var containsEmoji: Bool {
        for scalar in unicodeScalars {
            switch scalar.value {
            case 0x3030, 0x00AE, 0x00A9, // Special Characters
            0x1D000...0x1F77F, // Emoticons
            0x2100...0x27BF, // Misc symbols and Dingbats
            0xFE00...0xFE0F, // Variation Selectors
            0x1F900...0x1F9FF: // Supplemental Symbols and Pictographs
                return true
            default:
                continue
            }
        }
        return false
    }
    
    /// EasySDK: String encoded in base64 (if applicable).
    public var base64Encoded: String? {
        let plainData = data(using: .utf8)
        return plainData?.base64EncodedString()
    }
    
    /// EasySDK: String decoded from base64 (if applicable).
    public var base64Decoded: String? {
        guard let decodedData = Data(base64Encoded: self) else { return nil }
        return String(data: decodedData, encoding: .utf8)
    }
    
    /// EasySDK: URL escaped string.
    public var urlEncoded: String {
        return addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)!
    }
    
    /// EasySDK: Readable string from a URL string.
    public var urlDecoded: String {
        return removingPercentEncoding ?? self
    }
    
    /// EasySDK: Bool value from string (if applicable).
    public var bool: Bool? {
        let selfLowercased = trimmed.lowercased()
        switch selfLowercased {
        case "true", "1":
            return true
        case "false", "0":
            return false
        default:
            return nil
        }
    }
    /// EasySDK: returns localized String.
    public var localized: String {
        return NSLocalizedString(self, comment: String.empty)
    }
    
    /// EasySDK: Latinize string.
    public var latinize: String {
        return folding(options: .diacriticInsensitive, locale: Locale.current)
    }
    
    /// EasySDK: Reversed string.
    public var reversed: String {
        let chars: [Character] = reversed()
        return String(chars)
    }
}
