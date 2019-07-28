//
//  String+EasyManipulation.swift
//  EasySDK
//
//  Created by Amit Majumdar on 22/07/19.
//  Copyright © 2019 EasySDK. All rights reserved.
//

import Foundation

public extension String {
    
    /// EasySDK: Returns a reformatted paragraph by removing uneven white-spaces & new lines. It will truncate more than one consecutive new lines and white spaces. It also removes white spaces and new line from start & end of the string.
    public var reformattedParagraphByRemovingExtraWhiteSpacesAndNewLines: String {
        var charactersArray = [Character]()
        forEach { (character) in
            if charactersArray.count != 0 {
                let lastCharacter = charactersArray.last
                if character == Character.whiteSpaceCharacter {
                    if lastCharacter != Character.whiteSpaceCharacter && lastCharacter != Character.newLineCharacter {
                        charactersArray.append(character)
                    }
                } else if character == Character.newLineCharacter {
                    if lastCharacter != Character.newLineCharacter && lastCharacter != Character.whiteSpaceCharacter {
                        charactersArray.append(character)
                    }
                }else {
                    charactersArray.append(character)
                }
            } else {
                charactersArray.append(character)
            }
        }
        let formattedParagraph = String(charactersArray).trimmed
        return formattedParagraph
    }
}
