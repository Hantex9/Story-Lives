//
//  MainCollectionViewFlowLayout.swift
//  Story Lives
//
//  Created by Alessandro Izzo on 13/12/17.
//  Copyright © 2017 Alessandro Izzo. All rights reserved.
//

import UIKit

class MainCollectionViewFlowLayout: UICollectionViewFlowLayout {
    fileprivate let minimumSpacing: CGFloat = 2.0
    fileprivate let distanceToTheMargins: CGFloat = 10.0
    
    override func prepare() {
        self.minimumLineSpacing = minimumSpacing
        
        self.sectionInset = UIEdgeInsetsMake(self.sectionInset.top, self.sectionInset.left + distanceToTheMargins - 1.0, self.sectionInset.bottom, self.sectionInset.right + distanceToTheMargins)
    }
}
