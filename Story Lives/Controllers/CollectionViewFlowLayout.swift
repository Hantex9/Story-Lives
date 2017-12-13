//
//  CollectionViewFlowLayout.swift
//  Story Lives
//
//  Created by Alessandro Izzo on 12/12/17.
//  Copyright © 2017 Alessandro Izzo. All rights reserved.
//

import UIKit

public class CollectionViewFlowLayout: UICollectionViewFlowLayout {
    // Mark: Constants
    fileprivate struct Constants {
        static let zoomFactor: CGFloat = 0.3
        static let itemWidth: CGFloat = 235       //Width of the Cell when focussed
        static let itemHeight: CGFloat = 370      //Height of the Cell when focussed
        static let minLineSpacing: CGFloat = 47.0
    }
    
    public var activeDistance: CGFloat = 300
    
    override public func prepare() {
        super.prepare()
        
        itemSize = CGSize(width: Constants.itemWidth, height: Constants.itemHeight)
        minimumLineSpacing = Constants.minLineSpacing
        
        sectionInset = UIEdgeInsetsMake(100.0, 60.0, 100, 60.0)
    }
    
    // Here is where the magic happens
    // Add zooming to the Layout Attributes.
    override public func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        
        let array = super.layoutAttributesForElements(in: rect)
        var attributesCopy = [UICollectionViewLayoutAttributes]()
        
        var visibleRect = CGRect()
        visibleRect.origin = collectionView!.contentOffset
        visibleRect.size = collectionView!.bounds.size
        
        for itemAttributes in array! {
            let itemAttributesCopy = itemAttributes.copy() as! UICollectionViewLayoutAttributes
            if itemAttributesCopy.frame.intersects(rect) {
                let distance = visibleRect.midX - itemAttributes.center.x
                let normalizedDistance = distance / activeDistance
                if (abs(distance)) < activeDistance {
                    let zoom = 1 + Constants.zoomFactor*(1 - abs(normalizedDistance))
                    itemAttributesCopy.transform3D = CATransform3DMakeScale(zoom, zoom, 1.0)
                    itemAttributesCopy.zIndex = 1
                }
            }
            attributesCopy.append(itemAttributesCopy)
        }
        return attributesCopy
    }
    
    //Focus the zoom in the middle Card.
    override public func targetContentOffset(forProposedContentOffset proposedContentOffset: CGPoint, withScrollingVelocity velocity: CGPoint) -> CGPoint {
        
        var offsetAdjustment:CGFloat = CGFloat(MAXFLOAT)
        let horizontalCenter = proposedContentOffset.x + (collectionView!.bounds.width / 2.0)
        
        let targetRect = CGRect(x: proposedContentOffset.x, y: 0.0, width: collectionView!.bounds.size.width, height: collectionView!.bounds.size.height)
        
        if let array = super.layoutAttributesForElements(in: targetRect) {
            for layoutAttributes in array {
                let itemHorizontalCenter: CGFloat = layoutAttributes.center.x
                if (abs(itemHorizontalCenter - horizontalCenter) < abs(offsetAdjustment)) {
                    offsetAdjustment = itemHorizontalCenter - horizontalCenter
                }
            }
        }
        return CGPoint(x: proposedContentOffset.x + offsetAdjustment, y: proposedContentOffset.y)
    }
    
    // Invalidate the Layout when the user is scrolling
    override public func shouldInvalidateLayout(forBoundsChange newBounds: CGRect) -> Bool {
        return true
    }
}
