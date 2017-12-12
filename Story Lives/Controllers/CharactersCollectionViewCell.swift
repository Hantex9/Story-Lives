//
//  CharactersCollectionViewCell.swift
//  Story Lives
//
//  Created by Alessandro Izzo on 11/12/17.
//  Copyright © 2017 Alessandro Izzo. All rights reserved.
//

import UIKit

class CharactersCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var avatar: UIImageView!
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = 18.0
    }
    
}
