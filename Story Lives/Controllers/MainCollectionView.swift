//
//  MainCollectionView.swift
//  Story Lives
//
//  Created by Carmine Molisso on 13/12/17.
//  Copyright © 2017 Alessandro Izzo. All rights reserved.
//

import UIKit

class MainCollectionView: UICollectionView, UICollectionViewDataSource, UICollectionViewDelegate {

    let storyLive: [Story] = storyLives
    
    var counter: Int = 0
    
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
        
        let category: String = categories[self.tag]
        for (index,story) in storyLive.enumerated() {
            if index >= self.counter && story.category == category {
                cell.storyImage.image = storyLive[index].thumbnail
                cell.storyTitle.text = storyLive[index].title
                break
            }
        }
        self.counter += 1
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let category: String = categories[self.tag]
        let infoCell = self.cellForItem(at: indexPath) as! MainCollectionViewCell
        for story in storyLive {
            if story.category == category && story.title == infoCell.storyTitle.text{
                if(!DataSource.shared.setCurrentStory(story: story)) {
                   print("Error about loading current Story")
                }
            }
        }
        
    }
}
