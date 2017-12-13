//
//  MainCollectionView.swift
//  Story Lives
//
//  Created by Carmine Molisso on 13/12/17.
//  Copyright © 2017 Alessandro Izzo. All rights reserved.
//

import UIKit

class MainCollectionView: UICollectionView, UICollectionViewDataSource {

    let storyLive: [Story] = storyLives
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        var countStories: Int = 0
        for story in storyLive {
            if story.category == categories[self.tag] {
                countStories += 1
            }
        }
        return countStories
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "storyCell", for: indexPath) as! MainCollectionViewCell
        cell.storyImage.image = storyLive[indexPath.item + self.tag].thumbnail
        cell.storyTitle.text = storyLive[indexPath.item + self.tag].title

        return cell
    }
}
