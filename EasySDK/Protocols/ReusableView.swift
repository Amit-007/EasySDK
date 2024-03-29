//
//  ReusableView.swift
//  EasySDK
//
//  Created by Amit Majumdar on 28/07/19.
//  Copyright © 2019 EasyDevelopmentSDK. All rights reserved.
//

import UIKit

public protocol ReusableView {
    static var reuseIdentifer: String { get }
}

public extension ReusableView where Self: UIView {
    /// The default reuse identifier
    static var reuseIdentifer: String {
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }
}

extension UITableViewCell: ReusableView {}
extension UITableViewHeaderFooterView: ReusableView {}
extension UICollectionReusableView: ReusableView {}

// MARK: - UITableView

public extension UITableView {
    
    /// Registers a class for use in creating new table cells.
    ///
    /// - Parameters:
    ///   - cellClass: The class of a cell that you want to use in the table (must be a UITableViewCell subclass).
    ///   - fromNib: Whether it comes from nib or not. Default is `false`.
    func register<T: UITableViewCell>(_ cellClass: T.Type, fromNib: Bool = false) {
        if fromNib {
            register(UINib(nibName: cellClass.reuseIdentifer, bundle: nil),
                     forCellReuseIdentifier: cellClass.reuseIdentifer)
        } else {
            register(cellClass,
                     forCellReuseIdentifier: cellClass.reuseIdentifer)
        }
    }
    
    /// Registers a class for use in creating new table header or footer views.
    ///
    /// - Parameters:
    ///   - viewClass: The class of the header or footer view that you want to register. You must specify either UITableViewHeaderFooterView or a subclass of it.
    ///   - fromNib: Whether it comes from nib or not. Default is `false`.
    func register<T: UITableViewHeaderFooterView>(_ viewClass: T.Type, fromNib: Bool = false) {
        if fromNib {
            register(UINib(nibName: viewClass.reuseIdentifer, bundle: nil),
                     forHeaderFooterViewReuseIdentifier: viewClass.reuseIdentifer)
        } else {
            register(viewClass,
                     forHeaderFooterViewReuseIdentifier: viewClass.reuseIdentifer)
        }
    }
    
    /// Returns a reusable table-view cell object located by its class.
    ///
    /// - Parameter cellClass: The class of a cell that you want to reuse in the table (must be a UITableViewCell subclass).
    /// - Returns: A UITableViewCell object with its class or nil if no such object exists in the reusable-cell queue.
    func dequeueReusableCell<T: UITableViewCell>(with cellClass: T.Type) -> T? {
        guard let cell = dequeueReusableCell(withIdentifier: cellClass.reuseIdentifer) as? T? else {
            fatalError("Couldn't dequeue cell with identifier: \(cellClass.reuseIdentifer)")
        }
        return cell
    }
    
    /// Returns a reusable table-view cell object for its class and adds it to the table.
    ///
    /// - Parameters:
    ///   - cellClass: The class of a cell that you want to reuse in the table (must be a UITableViewCell subclass).
    ///   - indexPath: The index path specifying the location of the cell. Always specify the index path provided to you by your data source object. This method uses the index path to perform additional configuration based on the cell’s position in the table view.
    /// - Returns: A UITableViewCell object with its class. This method always returns a valid cell.
    func dequeueReusableCell<T: UITableViewCell>(with cellClass: T.Type, for indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withIdentifier: cellClass.reuseIdentifer, for: indexPath) as? T else {
            fatalError("Couldn't dequeue cell with identifier: \(cellClass.reuseIdentifer) for indexPath: \(indexPath)")
        }
        return cell
    }
    
    /// Returns a reusable header or footer view located by its class.
    ///
    /// - Parameter viewClass: The class of the header or footer view that you want to reuse. You must specify either UITableViewHeaderFooterView or a subclass of it.
    /// - Returns: A UITableViewHeaderFooterView object with its class. This method always returns a valid header or footer view.
    func dequeueReusableHeaderFooterView<T: UITableViewHeaderFooterView>(with viewClass: T.Type) -> T {
        guard let view = dequeueReusableHeaderFooterView(withIdentifier: viewClass.reuseIdentifer) as? T else {
            fatalError("Couldn't dequeue view with identifier: \(viewClass.reuseIdentifer)")
        }
        return view
    }
}


// MARK: - UICollectionView

public extension UICollectionView {
    
    /// Register a class for use in creating new collection view cells.
    ///
    /// - Parameters:
    ///   - cellClass: The class of a cell that you want to use in the collection view.
    ///   - fromNib: Whether it comes from nib or not. Default is `false`.
    func register<T: UICollectionViewCell>(_ cellClass: T.Type, fromNib: Bool = false) {
        if fromNib {
            register(UINib(nibName: cellClass.reuseIdentifer, bundle: nil),
                     forCellWithReuseIdentifier: cellClass.reuseIdentifer)
        } else {
            register(cellClass,
                     forCellWithReuseIdentifier: cellClass.reuseIdentifer)
        }
    }
    
    /// Registers a class for use in creating supplementary views for the collection view.
    ///
    /// - Parameters:
    ///   - viewClass: The class to use for the supplementary view.
    ///   - elementKind: The kind of supplementary view to create. This value is defined by the layout object. This parameter must not be nil.
    ///   - fromNib: Whether it comes from nib or not. Default is `false`.
    func register<T: UICollectionReusableView>(_ viewClass: T.Type, forSupplementaryViewOfKind elementKind: String, fromNib: Bool = false) {
        if fromNib {
            register(UINib(nibName: viewClass.reuseIdentifer, bundle: nil),
                     forSupplementaryViewOfKind: elementKind,
                     withReuseIdentifier: viewClass.reuseIdentifer)
        } else {
            register(viewClass,
                     forSupplementaryViewOfKind: elementKind,
                     withReuseIdentifier: viewClass.reuseIdentifer)
        }
    }
    
    /// Returns a reusable cell object located by its class.
    ///
    /// - Parameters:
    ///   - cellClass: The class to use for the cell.
    ///   - indexPath: The index path specifying the location of the cell. The data source receives this information when it is asked for the cell and should just pass it along. This method uses the index path to perform additional configuration based on the cell’s position in the collection view.
    /// - Returns: A valid UICollectionReusableView object.
    func dequeueReusableCell<T: UICollectionViewCell>(with cellClass: T.Type, for indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withReuseIdentifier: cellClass.reuseIdentifer, for: indexPath) as? T else {
            fatalError("Couldn't dequeue cell with identifier: \(cellClass.reuseIdentifer) for indexPath: \(indexPath)")
        }
        return cell
    }
    
    /// Returns a reusable supplementary view located by its class and kind.
    ///
    /// - Parameters:
    ///   - elementKind: The kind of supplementary view to retrieve. This value is defined by the layout object. This parameter must not be nil.
    ///   - viewClass: The class to use for the supplementary view.
    ///   - indexPath: The index path specifying the location of the supplementary view in the collection view. The data source receives this information when it is asked for the view and should just pass it along. This method uses the information to perform additional configuration based on the view’s position in the collection view.
    /// - Returns: A valid UICollectionReusableView object.
    func dequeueReusableSupplementaryView<T: UICollectionReusableView>(ofKind elementKind: String, viewClass: T.Type, for indexPath: IndexPath) -> T {
        guard let view = dequeueReusableSupplementaryView(ofKind: elementKind, withReuseIdentifier: viewClass.reuseIdentifer, for: indexPath) as? T else {
            fatalError("Couldn't dequeue view with identifier: \(viewClass.reuseIdentifer) for indexPath: \(indexPath)")
        }
        return view
    }
}

