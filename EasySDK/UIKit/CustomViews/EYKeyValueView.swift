//
//  EYKeyValueView.swift
//  EasySDK
//
//  Created by Amit Majumdar on 26/07/19.
//  Copyright © 2019 EasyDevelopmentSDK. All rights reserved.
//

import UIKit

open class EYKeyValueView: UIView {
    
    public var separatorView: UIView = {
        let view = UIView()
        view.backgroundColor = .darkGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    public var customBackgroundView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.backgroundColor = .clear
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private var actionButton: UIButton = {
        let button = UIButton()
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .clear
        button.titleLabel?.font = .systemFont(ofSize: 14)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    public var toggleButton: UISwitch = {
        let toggle = UISwitch()
        toggle.isOn = false
        toggle.translatesAutoresizingMaskIntoConstraints = false
        return toggle
    }()
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    public init(key: String,
                valueType: ValueType,
                placeholder: String? = nil,
                prefiledValue: String? = nil,
                actionButtonTitle: String? = nil,
                isOn: Bool = false,
                chevronIcon: UIImage? = nil,
                leftPadding: CGFloat = 0.0,
                keySize: CGSize = .zero,
                rightPadding: CGFloat = 0.0,
                valueSize: CGSize = .zero) {
        self.init()
        addSubview(customBackgroundView)
        customBackgroundView.fillSuperview()
        
        switch valueType {
        case .actionButton:
            titleLabel.anchor(leading: customBackgroundView.leadingAnchor, padding: .init(top: 0, left: leftPadding, bottom: 0, right: 0), size: keySize)
            titleLabel.centerYToSuperview()
            actionButton.anchor(trailing: customBackgroundView.trailingAnchor,
                                padding: .init(top: 0, left: 0, bottom: 0, right: rightPadding),
                                size: valueSize)
            actionButton.centerYToSuperview()
            actionButton.setTitle(actionButtonTitle, for: .normal)
        case .chevron:
            titleLabel.anchor(leading: customBackgroundView.leadingAnchor, padding: .init(top: 0, left: leftPadding, bottom: 0, right: 0), size: keySize)
            titleLabel.centerYToSuperview()
            actionButton.anchor(trailing: customBackgroundView.trailingAnchor,
                                padding: .init(top: 0, left: 0, bottom: 0, right: rightPadding),
                                size: valueSize)
            actionButton.centerYToSuperview()
        case .textField:
            titleLabel.anchor(leading: customBackgroundView.leadingAnchor,
                              padding: .init(top: 0, left: leftPadding, bottom: 0, right: 0),
                              size: keySize)
            titleLabel.centerYToSuperview()
            actionButton.anchor(trailing: customBackgroundView.trailingAnchor,
                                padding: .init(top: 0, left: 0, bottom: 0, right: rightPadding),
                                size: valueSize)
            actionButton.centerYToSuperview()
        case .toggle:
            titleLabel.anchor(leading: customBackgroundView.leadingAnchor,
                              padding: .init(top: 0, left: leftPadding, bottom: 0, right: 0),
                              size: keySize)
            titleLabel.centerYToSuperview()
            toggleButton.anchor(trailing: customBackgroundView.trailingAnchor,
                                padding: .init(top: 0, left: 0, bottom: 0, right: rightPadding),
                                size: valueSize)
            toggleButton.centerYToSuperview()
            toggleButton.isOn = isOn
        }
    }
    
    /// Method that add Separators to KeyValueView
    ///
    /// - Parameters:
    ///   - type: separator Type
    ///   - leading: leading Constant if any
    ///   - trailing: trailing constant if any
    public func addSeparator(withType type: SeparatorType,
                             withLeadingPadding leading: CGFloat = 0.0,
                             andTrailingPadding trailing: CGFloat = 0.0,
                             backgroundColor: UIColor = .darkGray) {
        
        customBackgroundView.addSubview(separatorView)
        separatorView.backgroundColor = backgroundColor
        separatorView.anchor(top: type == .top ? customBackgroundView.topAnchor : nil,
                             leading: customBackgroundView.leadingAnchor,
                             bottom: type == .bottom ? customBackgroundView.bottomAnchor : nil,
                             trailing: customBackgroundView.trailingAnchor,
                             padding: .init(top: 0, left: leading, bottom: 0, right: trailing),
                             size: .init(width: 0, height: 0.5))
    }
}
