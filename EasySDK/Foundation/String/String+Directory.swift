//
//  String+Directory.swift
//  EasySDK
//
//  Created by Amit Majumdar on 22/07/19.
//  Copyright © 2019 EasyDevelopmentSDK. All rights reserved.
//

import Foundation

extension String {
    
    /// EasySDK: Returns the Applications Directory
    public static var applicationDirectory: String? {
        return NSSearchPathForDirectoriesInDomains(.applicationDirectory, .userDomainMask, true).first
    }
    
    /// EasySDK: Returns the Demo Application Directory
    public static var demoApplicationDirectory: String? {
        return NSSearchPathForDirectoriesInDomains(.demoApplicationDirectory, .userDomainMask, true).first
    }
    
    /// EasySDK: Returns the Developer Application Directory
    public static var developerApplicationDirectory: String? {
        return NSSearchPathForDirectoriesInDomains(.developerApplicationDirectory, .userDomainMask, true).first
    }
    
    /// EasySDK: Returns the Admin Application Directory
    public static var adminApplicationDirectory: String? {
        return NSSearchPathForDirectoriesInDomains(.adminApplicationDirectory, .userDomainMask, true).first
    }
    
    /// EasySDK: Returns the Library Directory
    public static var libraryDirectory: String? {
        return NSSearchPathForDirectoriesInDomains(.libraryDirectory, .userDomainMask, true).first
    }
    
    /// EasySDK: Returns the Developer Directory
    public static var developerDirectory: String? {
        return NSSearchPathForDirectoriesInDomains(.developerDirectory, .userDomainMask, true).first
    }
    
    /// EasySDK: Returns the User Directory Directory
    public static var userDirectory: String? {
        return NSSearchPathForDirectoriesInDomains(.userDirectory, .userDomainMask, true).first
    }
    
    /// EasySDK: Returns the Documentation Directory
    public static var documentationDirectory: String? {
        return NSSearchPathForDirectoriesInDomains(.documentationDirectory, .userDomainMask, true).first
    }
    
    /// EasySDK: Returns the Document Directory
    public static var documentDirectory: String? {
        return NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first
    }
    
    /// UtilityFramework: Returns the Core Service Directory
    public static var coreServiceDirectory: String? {
        return NSSearchPathForDirectoriesInDomains(.coreServiceDirectory, .userDomainMask, true).first
    }
    
    /// EasySDK: Returns the Autosaved Information Directory
    public static var autosavedInformationDirectory: String? {
        return NSSearchPathForDirectoriesInDomains(.autosavedInformationDirectory, .userDomainMask, true).first
    }
    
    /// EasySDK: Returns the Desktop Directory
    public static var desktopDirectory: String? {
        return NSSearchPathForDirectoriesInDomains(.desktopDirectory, .userDomainMask, true).first
    }
    
    /// UtilityFramework: Returns the Caches Directory
    public static var cachesDirectory: String? {
        return NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first
    }
    
    /// EasySDK: Returns the Applications Support Directory
    public static var applicationSupportDirectory: String? {
        return NSSearchPathForDirectoriesInDomains(.applicationSupportDirectory, .userDomainMask, true).first
    }
    
    /// EasySDK: Returns the Downloads Directory
    public static var downloadsDirectory: String? {
        return NSSearchPathForDirectoriesInDomains(.downloadsDirectory, .userDomainMask, true).first
    }
    
    /// EasySDK: Returns the Input Methods Directory
    public static var inputMethodsDirectory: String? {
        return NSSearchPathForDirectoriesInDomains(.inputMethodsDirectory, .userDomainMask, true).first
    }
    
    /// EasySDK: Returns the Movies Directory
    public static var moviesDirectory: String? {
        return NSSearchPathForDirectoriesInDomains(.moviesDirectory, .userDomainMask, true).first
    }
    
    /// UtilityFramework: Returns the Music Directory
    public static var musicDirectory: String? {
        return NSSearchPathForDirectoriesInDomains(.musicDirectory, .userDomainMask, true).first
    }
    
    /// EasySDK: Returns the Pictures Directory
    public static var picturesDirectory: String? {
        return NSSearchPathForDirectoriesInDomains(.picturesDirectory, .userDomainMask, true).first
    }
    
    /// EasySDK: Returns the Printer  Description Directory
    public static var printerDescriptionDirectory: String? {
        return NSSearchPathForDirectoriesInDomains(.printerDescriptionDirectory, .userDomainMask, true).first
    }
    
    /// EasySDK: Returns the Shared Public Directory
    public static var sharedPublicDirectory: String? {
        return NSSearchPathForDirectoriesInDomains(.sharedPublicDirectory, .userDomainMask, true).first
    }
    
    /// EasySDK: Returns the Preference Panes Directory
    public static var preferencePanesDirectory: String? {
        return NSSearchPathForDirectoriesInDomains(.preferencePanesDirectory, .userDomainMask, true).first
    }
    
    /// EasySDK: Returns the Item Replacement Directory
    public static var itemReplacementDirectory: String? {
        return NSSearchPathForDirectoriesInDomains(.itemReplacementDirectory, .userDomainMask, true).first
    }
    
    /// EasySDK: Returns the All Applications Directory
    public static var allApplicationsDirectory: String? {
        return NSSearchPathForDirectoriesInDomains(.allApplicationsDirectory, .userDomainMask, true).first
    }
    
    /// EasySDK: Returns the All Libraries Directory
    public static var allLibrariesDirectory: String? {
        return NSSearchPathForDirectoriesInDomains(.allLibrariesDirectory, .userDomainMask, true).first
    }
    
    /// EasySDK: Returns the Trash Directory
    public static var trashDirectory: String? {
        return NSSearchPathForDirectoriesInDomains(.trashDirectory, .userDomainMask, true).first
    }
}
