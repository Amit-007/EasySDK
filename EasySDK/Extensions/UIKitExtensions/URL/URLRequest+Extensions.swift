//
//  URLRequest+Extensions.swift
//  EasySDK
//
//  Created by Amit Majumdar on 31/07/19.
//  Copyright © 2019 EasySDK. All rights reserved.
//

#if canImport(Foundation)
import Foundation

// MARK: - Initializers
public extension URLRequest {

    /// EasySDK: Create URLRequest from URL string.
    ///
    /// - Parameter urlString: URL string to initialize URL request from
    init?(urlString: String) {
        guard let url = URL(string: urlString) else { return nil }
        self.init(url: url)
    }

}

#endif
