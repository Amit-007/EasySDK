//
//  EYImageView.swift
//  EasySDK
//
//  Created by Amit Majumdar on 28/07/19.
//  Copyright © 2019 EasyDevelopmentSDK. All rights reserved.
//

import UIKit

public enum Shape: Int, CaseIterable {
 
    case circle
    case circleWithShadow
    case rectangle
    case rectangleWithRoundedEdges
    case rectangeWithShadow
    case ractangleWithRoundedEdgesAndShadow
    case circleWithRectangle
}

public class EYImageView: UIView {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
}
