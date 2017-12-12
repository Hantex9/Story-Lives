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
    
    private let heightSize: Int = 50
    
    private var currentPage: Int = 0
    private var onSwiping: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        pageControl.numberOfPages = collectionView.numberOfItems(inSection: 0)
    }
    
    func animateCell(state: State, height: Int, page: Int) {
        guard let cell = self.collectionView.cellForItem(at: IndexPath(item: page, section: 0)) else {
            return
        }
        
        if(state == .selected) {
            UIView.animate(withDuration: 0.1, animations: {
                cell.layer.frame = CGRect(x: (cell.layer.frame.origin.x), y: (cell.layer.frame.origin.y) - CGFloat(height/2) , width: cell.layer.frame.width, height: cell.layer.frame.height + CGFloat(height))
            })
            
        } else {
            UIView.animate(withDuration: 0.1, animations: {
                cell.layer.frame = CGRect(x: (cell.layer.frame.origin.x), y: (cell.layer.frame.origin.y) + CGFloat(height/2) , width: cell.layer.frame.width, height: cell.layer.frame.height - CGFloat(height))
            })
        }
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
}

extension CharactersViewController: UIScrollViewDelegate, UICollectionViewDelegate {
    
    //Funzione che viene richiamata quando finisce di draggare lo scroll
    //La uso per far centrare sempre un elemento della collection
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        let layout = self.collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        let cellWithIncludingSpacing = layout.itemSize.width + layout.minimumLineSpacing
        
        var offset = targetContentOffset.pointee
        let index = (offset.x + scrollView.contentInset.left) / cellWithIncludingSpacing
        let roundedOffset = round(index)
        
        offset = CGPoint(x: roundedOffset * cellWithIncludingSpacing - scrollView.contentInset.left, y: -scrollView.contentInset.top)
        targetContentOffset.pointee = offset
        
    }
    
    //Metodo che viene richiamato quando finisce la decelerazione dello scroll
    //la uso per prendermi la pagina selezionata
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let x = scrollView.contentOffset.x
        let w = scrollView.bounds.size.width
        let currentPage = Int(ceil(x/w))
        pageControl.currentPage = currentPage
        
        self.currentPage = currentPage
        
        self.animateCell(state: .selected, height: heightSize, page: currentPage)
        
        self.onSwiping = false
    }
    
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        if(!self.onSwiping) {
            self.animateCell(state: .notSelected, height: heightSize, page: self.currentPage)
        }
        self.onSwiping = true
    }
}
