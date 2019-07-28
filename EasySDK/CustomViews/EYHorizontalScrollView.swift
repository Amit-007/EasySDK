//
//  EYHorizontalScrollView.swift
//  EasySDK
//
//  Created by Amit Majumdar on 28/07/19.
//  Copyright © 2019 EasySDK. All rights reserved.
//

import UIKit

open class EYHorizontalScrollView<T: UICollectionViewCell, D > : UICollectionView,
UICollectionViewDataSource,
UICollectionViewDelegateFlowLayout,
UICollectionViewDelegate {
   
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSourceArray.count
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
    
    
    open var items: [T]!
    open var dataSourceArray: [D]!
    
    public override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
    }
    
    public init(dataSourceArray: [D], items: [T]) {
        self.init()
        self.dataSourceArray = dataSourceArray
        self.items = items
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
