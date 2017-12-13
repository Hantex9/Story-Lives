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
    
    var displayedCells: [UICollectionViewCell]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        self.collectionView.decelerationRate = UIScrollViewDecelerationRateFast
        pageControl.numberOfPages = collectionView.numberOfItems(inSection: 0)
    }
}

extension CharactersViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CharactersViewCell", for: indexPath) as! CharactersCollectionViewCell
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        if(cell.center.x >= 0 && cell.center.x <= (UIScreen.main.bounds.size.width)) {
            pageControl.currentPage = indexPath.item
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didEndDisplaying cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
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
}

