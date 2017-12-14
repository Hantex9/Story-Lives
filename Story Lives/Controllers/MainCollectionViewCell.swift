//
//  MainCollectionViewCell.swift
//  Story Lives
//
//  Created by Carmine Molisso on 13/12/17.
//  Copyright © 2017 Alessandro Izzo. All rights reserved.
//

import UIKit

class MainCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var storyImage: UIImageView!
    @IBOutlet weak var storyTitle: UILabel!
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.storyImage.layer.cornerRadius = 13.0
        self.storyImage.layer.borderWidth = 1.0
        self.storyImage.layer.borderColor = UIColor.lightGray.cgColor
    }
}
