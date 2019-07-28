//
//  UIView+Extensions.swift
//  UtilitySDK
//
//  Created by Amit Majumdar on 01/06/19.
//  Copyright © 2019 UtilitySDK. All rights reserved.
//

import UIKit

extension UIView {
    
    public func addSubviews(views: UIView...) {
        views.forEach{ addSubview($0) }
    }
    
    public func rounded() {
        cornerRadius = min(frame.size.height, frame.size.width) / 2.0
        masksToBounds = true
    }
    
    public var screenshot: UIImage? {
        UIGraphicsBeginImageContextWithOptions(bounds.size, false, UIScreen.main.scale)
        drawHierarchy(in: bounds, afterScreenUpdates: false)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
    
    public var nibName: String {
        return type(of: self).description().components(separatedBy: ".").last!
    }
    
    public func loadNib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil).first as! UIView
    }
    
    public func applyGlow(apply: Bool,
                          color: UIColor,
                          shadowOpacity: Float = 0.4,
                          shadowRadius: CGFloat = 10.0) {
        shadowColor = apply ? color.cgColor : UIColor.white.withAlphaComponent(1.0).cgColor
        shadowOffset = .zero
        self.shadowOpacity = apply ? shadowOpacity : 0.0
        self.shadowRadius = apply ? shadowRadius: 0.0
        masksToBounds = true
    }
    
    public func drawDashedBorderAroundView() {
        let cornerRadius: CGFloat = width / 2
        let borderWidth: CGFloat = 0.5
        let dashPattern1: Int = 4
        let dashPattern2: Int = 2
        let lineColor = UIColor.white
        
        //drawing
        let frame: CGRect = bounds
        let shapeLayer = CAShapeLayer()
        //creating a path
        let path: CGMutablePath = CGMutablePath()
        
        //drawing a border around a view
        path.move(to: CGPoint(x: CGFloat(0), y: CGFloat(frame.size.height - cornerRadius)), transform: .identity)
        path.addLine(to: CGPoint(x: CGFloat(0), y: CGFloat(cornerRadius)), transform: .identity)
        path.addArc(center: CGPoint(x: CGFloat(cornerRadius), y: CGFloat(cornerRadius)), radius: CGFloat(cornerRadius), startAngle: CGFloat.pi, endAngle: -CGFloat.pi/2, clockwise: false, transform: .identity)
        path.addLine(to: CGPoint(x: CGFloat(frame.size.width - cornerRadius), y: CGFloat(0)), transform: .identity)
        path.addArc(center: CGPoint(x: CGFloat(frame.size.width - cornerRadius), y: CGFloat(cornerRadius)), radius: CGFloat(cornerRadius), startAngle: -CGFloat.pi/2, endAngle: CGFloat(0), clockwise: false, transform: .identity)
        path.addLine(to: CGPoint(x: CGFloat(frame.size.width), y: CGFloat(frame.size.height - cornerRadius)), transform: .identity)
        path.addArc(center: CGPoint(x: CGFloat(frame.size.width - cornerRadius), y: CGFloat(frame.size.height - cornerRadius)), radius: CGFloat(cornerRadius), startAngle: CGFloat(0), endAngle: CGFloat.pi/2, clockwise: false, transform: .identity)
        path.addLine(to: CGPoint(x: CGFloat(cornerRadius), y: CGFloat(frame.size.height)), transform: .identity)
        path.addArc(center: CGPoint(x: CGFloat(cornerRadius), y: CGFloat(frame.size.height - cornerRadius)), radius: CGFloat(cornerRadius), startAngle: CGFloat.pi/2, endAngle: CGFloat.pi, clockwise: false, transform: .identity)
        
        //path is set as the _shapeLayer object's path
        shapeLayer.path = path
        shapeLayer.backgroundColor = UIColor.clear.cgColor
        shapeLayer.frame = frame
        shapeLayer.masksToBounds = false
        shapeLayer.setValue(NSNumber(value: false), forKey: "isCircle")
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.strokeColor = lineColor.cgColor
        shapeLayer.lineWidth = borderWidth
        shapeLayer.lineDashPattern = [NSNumber(integerLiteral: dashPattern1),NSNumber(integerLiteral: dashPattern2)]
        shapeLayer.lineCap = CAShapeLayerLineCap.round
        layer.addSublayer(shapeLayer)
    }
    
    open func setupShadow(opacity: Float = 0, radius: CGFloat = 0, offset: CGSize = .zero, color: UIColor = .black) {
        layer.shadowOpacity = opacity
        layer.shadowRadius = radius
        layer.shadowOffset = offset
        layer.shadowColor = color.cgColor
    }
    
    convenience public init(backgroundColor: UIColor = .clear) {
        self.init(frame: .zero)
        self.backgroundColor = backgroundColor
    }
}
