//
//  EYImageView.swift
//  EasySDK
//
//  Created by Amit Majumdar on 28/07/19.
//  Copyright © 2019 EasySDK. All rights reserved.
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
    case none
}

public class EYImageView: UIView {
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        return imageView
    }()
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    public init(withImage image: String, padding: UIEdgeInsets = .zero, shape: Shape = .none) {
        self.init()
        addSubview(imageView)
        imageView.fillSuperview(padding: padding)
        imageView.image = UIImage(named: image)
        switch shape {
        case .circle:
            imageView.layer.cornerRadius = imageView.frame.width / 2.0
            imageView.contentMode = .center
        case .circleWithShadow:
            imageView.layer.cornerRadius = imageView.frame.width / 2.0
            imageView.contentMode = .center
        case .rectangle:
            imageView.contentMode = .scaleAspectFit
        case .rectangleWithRoundedEdges:
            imageView.contentMode = .scaleAspectFit
            imageView.layer.cornerRadius = 4.0
        case .rectangeWithShadow:
            imageView.contentMode = .scaleAspectFit
            imageView.layer.cornerRadius = 4.0
        case .ractangleWithRoundedEdgesAndShadow:
            imageView.contentMode = .scaleAspectFit
            imageView.layer.cornerRadius = 4.0
        case .circleWithRectangle:
            break
        case .none:
            break
        }
    }
    
    /// Initilaizer
    ///
    /// - Parameters:
    ///   - image: image instance
    ///   - padding: custom padding
    public init(image: UIImage, padding: UIEdgeInsets = .zero, shape: Shape = .none) {
        self.init()
        addSubview(imageView)
        imageView.fillSuperview(padding: padding)
        imageView.image = image
        switch shape {
        case .circle:
            imageView.layer.cornerRadius = imageView.frame.width / 2.0
            imageView.contentMode = .center
        case .circleWithShadow:
            imageView.layer.cornerRadius = imageView.frame.width / 2.0
            imageView.contentMode = .center
        case .rectangle:
            imageView.contentMode = .scaleAspectFit
        case .rectangleWithRoundedEdges:
            imageView.contentMode = .scaleAspectFit
            imageView.layer.cornerRadius = 4.0
        case .rectangeWithShadow:
            imageView.contentMode = .scaleAspectFit
            imageView.layer.cornerRadius = 4.0
        case .ractangleWithRoundedEdgesAndShadow:
            imageView.contentMode = .scaleAspectFit
            imageView.layer.cornerRadius = 4.0
        case .circleWithRectangle:
            break
        case .none:
            break
        }
    }
}
