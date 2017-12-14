//
//  CharactersViewController.swift
//  Story Lives
//
//  Created by Alessandro Izzo on 11/12/17.
//  Copyright © 2017 Alessandro Izzo. All rights reserved.
//

import UIKit

enum State {
    case selected
    case notSelected
}

class CharactersViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        
        self.collectionView.decelerationRate = UIScrollViewDecelerationRateFast
        pageControl.numberOfPages = collectionView.numberOfItems(inSection: 0)
        
        self.pageControl.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
    }
}

extension CharactersViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CharactersViewCell", for: indexPath) as! CharactersCollectionViewCell
        if let currentStory = DataSource.shared.getCurrentStory()?.characters[indexPath.item] {
            cell.avatar.image = currentStory.avatar
            cell.nameCharacter.text = currentStory.name
            cell.descriptionCharacter.text = currentStory.description
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        guard let numberCharacters = DataSource.shared.getCurrentStory()?.characters.count else {
            return 0
        }
        return numberCharacters
    }
    
}

extension CharactersViewController: UIScrollViewDelegate, UICollectionViewDelegate {
    
    //Metodo che viene richiamato quando finisce la decelerazione dello scroll
    //la uso per prendermi la pagina selezionata
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let currentIndex = self.collectionView.contentOffset.x / self.collectionView.frame.size.width;
        
        if(currentIndex < 0.3) {
            pageControl.currentPage = 0
        } else {
            pageControl.currentPage = Int(currentIndex) + 1
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        DataSource.shared.getCurrentStory()?.characterSelected = DataSource.shared.getCurrentStory()?.characters[indexPath.item] 
    }
}

